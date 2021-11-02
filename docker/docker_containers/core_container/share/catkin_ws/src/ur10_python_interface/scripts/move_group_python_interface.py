#!/usr/bin/python
# -*- coding: utf8 -*- 


## standard library
import sys
#print(sys.executable) # python version
import copy
from math import *
import pygame
import time
import numpy as np
from numpy.linalg import inv, det, svd, eig

## ros library
import rospy
from tf.transformations import *
from std_msgs.msg import String
from std_msgs.msg import Float64MultiArray
from std_srvs.srv import Trigger, TriggerResponse, TriggerRequest
from geometry_msgs.msg import PoseStamped, Quaternion, Pose
from geometry_msgs.msg import Quaternion
from controller_manager_msgs.srv import SwitchControllerRequest, SwitchController
import geometry_msgs
from ur10_python_interface.srv import SolveIk
from tf.transformations import euler_from_quaternion, quaternion_from_euler

## moveit library
import moveit_commander
from moveit_commander.conversions import pose_to_list
import moveit_msgs.msg

## custom library
from get_ik import GetIK

## pygame init
pygame.init()


## function definition

def all_close(goal, actual, tolerance):
  """
  Convenience method for testing if a list of values are within a tolerance of their counterparts in another list
  @param: goal       A list of floats, a Pose or a PoseStamped
  @param: actual     A list of floats, a Pose or a PoseStamped
  @param: tolerance  A float
  @returns: bool
  """
  all_equal = True
  if type(goal) is list:
    for index in range(len(goal)):
      if abs(actual[index] - goal[index]) > tolerance:
        return False

  elif type(goal) is geometry_msgs.msg.PoseStamped:
    return all_close(goal.pose, actual.pose, tolerance)

  elif type(goal) is geometry_msgs.msg.Pose:
    return all_close(pose_to_list(goal), pose_to_list(actual), tolerance)

  return True


## class definition
class MoveGroupPythonInteface(object):
  """MoveGroupPythonInteface"""
  def __init__(self, base_controller, velocity_controller, arg_group_name="manipulator", gym=False, verbose=False, prefix=''):
    super(MoveGroupPythonInteface, self).__init__()

    self.prefix = prefix
    
    ## BEGIN_SUB_TUTORIAL setup
    ##
    ## First initialize `moveit_commander`_ and a `rospy`_ node:
    moveit_commander.roscpp_initialize(sys.argv)
    if gym == False:
      rospy.init_node("robot_interface", anonymous=True)

    ## Instantiate a `RobotCommander`_ object. Provides information such as the robot's
    ## kinematic model and the robot's current joint states
    robot = moveit_commander.RobotCommander()

    ## Instantiate a `PlanningSceneInterface`_ object.  This provides a remote interface
    ## for getting, setting, and updating the robot's internal understanding of the
    ## surrounding world:
    scene = moveit_commander.PlanningSceneInterface()

    ## Instantiate a `MoveGroupCommander`_ object.  This object is an interface
    ## to a planning group (group of joints).  In this tutorial the group is the primary
    ## arm joints in the Panda robot, so we set the group's name to "panda_arm".
    ## If you are using a different robot, change this value to the name of your robot
    ## arm planning group.
    ## This interface can be used to plan and execute motions:
    group_name = arg_group_name
    move_group = moveit_commander.MoveGroupCommander(group_name)
    move_group.set_max_velocity_scaling_factor(1.0)
    move_group.set_max_acceleration_scaling_factor(1.0)

    # ik solver
    #ik_solver = GetIK(group="manipulator")

    # publisher
    vel_pub = rospy.Publisher('/'+velocity_controller+'/command', Float64MultiArray, queue_size=10)

    ## Create a `DisplayTrajectory`_ ROS publisher which is used to display
    ## trajectories in Rviz:
    display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                   moveit_msgs.msg.DisplayTrajectory,
                                                   queue_size=20)
    self.teleop_state_pub = rospy.Publisher('teleop_state', String, queue_size=10)

    # service
    self.change_to_vel_controller_service = rospy.Service('change_to_vel_controller', Trigger, self.change_to_velocity_controller)
    self.change_to_base_controller_service = rospy.Service('change_to_base_controller', Trigger, self.change_to_base_controller)
    self.reset_pose_service = rospy.Service('reset_pose', Trigger, self.reset_pose)
    self.start_teleop_service = rospy.Service('start_teleop', Trigger, self.start_teleop)

    ## END_SUB_TUTORIAL

    ## BEGIN_SUB_TUTORIAL basic_info
    ##
    ## Getting Basic Information
    ## ^^^^^^^^^^^^^^^^^^^^^^^^^
    # We can get the name of the reference frame for this robot:
    planning_frame = move_group.get_planning_frame()
    print("============ Planning frame: %s" % planning_frame)

    # We can also print the name of the end-effector link for this group:
    eef_link = move_group.get_end_effector_link()
    print("============ End effector link: %s" % eef_link)

    # We can get a list of all the groups in the robot:
    group_names = robot.get_group_names()
    print("============ Available Planning Groups:", robot.get_group_names())

    # Sometimes for debugging it is useful to print the entire state of the
    # robot:
    print("============ Printing robot state")
    print(robot.get_current_state())
    print("")
    ## END_SUB_TUTORIAL

    # Misc variables
    self.box_name = ''
    self.robot = robot
    self.scene = scene
    self.move_group = move_group
    self.display_trajectory_publisher = display_trajectory_publisher
    self.planning_frame = planning_frame
    self.eef_link = eef_link
    self.group_names = group_names
    #self.ik_solver = ik_solver
    self.vel_pub = vel_pub
    self.base_controller = base_controller
    self.velocity_controller = velocity_controller
    self.xyzw_array = lambda o: numpy.array([o.x, o.y, o.z, o.w])
    self.fpsClock = pygame.time.Clock()
    self.verbose = verbose

    # teleop parameters
    self.button = 0.0
    self.speed_gain = 0.001 # for input scale
    self.p_gain = 3         # for target tracking
    self.speed_level = 7    
    rospy.set_param(self.prefix+'/teleop_state', 'stop')
    self.teleop_state = rospy.get_param(self.prefix+'/teleop_state')

  def ik_solver(self, target_pose):
    rospy.wait_for_service('solve_ik')
    try:
        solve_ik = rospy.ServiceProxy('solve_ik', SolveIk)
        res = solve_ik(target_pose)
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

  def go_to_init_state(self, joint_goal=[-1.601372543965475, -1.3494799772845667, -2.0361130873309534, 0.25178295286581065, 1.6211304664611816, 0.09116100519895554]):
    # Copy class variables to local variables to make the web tutorials more clear.
    # In practice, you should use the class variables directly unless you have a good
    # reason not to.

    move_group = self.move_group

    ## BEGIN_SUB_TUTORIAL plan_to_joint_state
    ##
    ## Planning to a Joint Goal
    ## ^^^^^^^^^^^^^^^^^^^^^^^^
    ## The Panda's zero configuration is at a `singularity <https://www.quora.com/Robotics-What-is-meant-by-kinematic-singularity>`_ so the first
    ## thing we want to do is move it to a slightly better configuration.
    # We can get the joint values from the group and adjust some of the values:
    
    #joint_goal = [-1.5999897112701706, -1.3500032022166835, -2.040067726204013, -1.3188300763644802, 1.6184002310830374, 0.09156995930090517]
   
    # The go command can be called with joint values, poses, or without any
    # parameters if you have already set the pose or joint target for the group
    move_group.go(joint_goal, wait=True)

    # Calling ``stop()`` ensures that there is no residual movement
    move_group.stop()

    ## END_SUB_TUTORIAL

    # For testing:
    current_joints = move_group.get_current_joint_values()

    time.sleep(0.1)
    # get target pose
    current_pose = self.get_current_pose(rpy=True)
    print(current_pose)
    self.target_pose = current_pose
    #q_orig = self.xyzw_array(self.get_current_pose().orientation)
    
    return all_close(joint_goal, current_joints, 0.05)  

  def go_to_random_init_state(self, joint_goal=[-1.601372543965475, -1.3494799772845667, -2.0361130873309534, 0.25178295286581065, 1.6211304664611816, 0.09116100519895554]):
    move_group = self.move_group

    rospy.wait_for_service('generate_init_pose')
    s = rospy.ServiceProxy('generate_init_pose',Trigger)
    res = s(TriggerRequest())
    while (not res.success):
      res = s(TriggerRequest())
    joint_goal = rospy.get_param('init_pose')

    move_group.go(joint_goal, wait=True)
    move_group.stop()

    # For testing:
    current_joints = move_group.get_current_joint_values()

    time.sleep(0.1)
    # get target pose
    current_pose = self.get_current_pose(rpy=True)
    print(current_pose)
    self.target_pose = current_pose
    #q_orig = self.xyzw_array(self.get_current_pose().orientation)
    
    return all_close(joint_goal, current_joints, 0.05)  

  def go_to_joint_state(self, j1=0, j2=-pi/2, j3=0, j4=-pi/2, j5=0, j6=0):
    # Copy class variables to local variables to make the web tutorials more clear.
    # In practice, you should use the class variables directly unless you have a good
    # reason not to.
    move_group = self.move_group

    ## BEGIN_SUB_TUTORIAL plan_to_joint_state
    ##
    ## Planning to a Joint Goal
    ## ^^^^^^^^^^^^^^^^^^^^^^^^
    ## The Panda's zero configuration is at a `singularity <https://www.quora.com/Robotics-What-is-meant-by-kinematic-singularity>`_ so the first
    ## thing we want to do is move it to a slightly better configuration.
    # We can get the joint values from the group and adjust some of the values:
    joint_goal = move_group.get_current_joint_values()
    joint_goal[0] = j1
    joint_goal[1] = j2
    joint_goal[2] = j3
    joint_goal[3] = j4
    joint_goal[4] = j5
    joint_goal[5] = j6

    # The go command can be called with joint values, poses, or without any
    # parameters if you have already set the pose or joint target for the group
    move_group.go(joint_goal, wait=True)

    # Calling ``stop()`` ensures that there is no residual movement
    move_group.stop()

    ## END_SUB_TUTORIAL

    # For testing:
    current_joints = move_group.get_current_joint_values()
    return all_close(joint_goal, current_joints, 0.01)


  def go_to_pose_goal(self, x, y, z):
    # Copy class variables to local variables to make the web tutorials more clear.
    # In practice, you should use the class variables directly unless you have a good
    # reason not to.
    move_group = self.move_group

    ## BEGIN_SUB_TUTORIAL plan_to_pose
    ##
    ## Planning to a Pose Goal
    ## ^^^^^^^^^^^^^^^^^^^^^^^
    ## We can plan a motion for this group to a desired pose for the
    ## end-effector:
    pose_goal = geometry_msgs.msg.Pose()
    pose_goal.orientation.w = 1.0
    pose_goal.position.x = x
    pose_goal.position.y = y
    pose_goal.position.z = z

    move_group.set_pose_target(pose_goal)

    # # Constraints
    # c = moveit_msgs.msg.Constraints()
    # c.joint_constraints.append(moveit_msgs.msg.JointConstraint())
    # c.joint_constraints[0].joint_name = 'shoulder_lift_joint'
    # c.joint_constraints[0].position = -pi/4
    # c.joint_constraints[0].tolerance_above = 0.1
    # c.joint_constraints[0].tolerance_below = 0.1
    # c.joint_constraints[0].weight = 1.0
    # move_group.set_path_constraints(c)

    ## Now, we call the planner to compute the plan and execute it.
    plan = move_group.go(wait=True)
    # Calling `stop()` ensures that there is no residual movement
    move_group.stop()
    # It is always good to clear your targets after planning with poses.
    # Note: there is no equivalent function for clear_joint_value_targets()
    move_group.clear_pose_targets()

    ## END_SUB_TUTORIAL

    # For testing:
    # Note that since this section of code will not be included in the tutorials
    # we use the class variable rather than the copied state variable
    current_pose = self.move_group.get_current_pose().pose
    return all_close(pose_goal, current_pose, 0.01)


  def plan_cartesian_path(self, scale=1):
    # Copy class variables to local variables to make the web tutorials more clear.
    # In practice, you should use the class variables directly unless you have a good
    # reason not to.
    move_group = self.move_group

    ## BEGIN_SUB_TUTORIAL plan_cartesian_path
    ##
    ## Cartesian Paths
    ## ^^^^^^^^^^^^^^^
    ## You can plan a Cartesian path directly by specifying a list of waypoints
    ## for the end-effector to go through. If executing  interactively in a
    ## Python shell, set scale = 1.0.
    ##
    waypoints = []

    wpose = move_group.get_current_pose().pose
    wpose.position.z -= scale * 0.1  # First move up (z)
    wpose.position.y += scale * 0.2  # and sideways (y)
    waypoints.append(copy.deepcopy(wpose))

    wpose.position.x += scale * 0.1  # Second move forward/backwards in (x)
    waypoints.append(copy.deepcopy(wpose))

    wpose.position.y -= scale * 0.1  # Third move sideways (y)
    waypoints.append(copy.deepcopy(wpose))

    # We want the Cartesian path to be interpolated at a resolution of 1 cm
    # which is why we will specify 0.01 as the eef_step in Cartesian
    # translation.  We will disable the jump threshold by setting it to 0.0,
    # ignoring the check for infeasible jumps in joint space, which is sufficient
    # for this tutorial.
    (plan, fraction) = move_group.compute_cartesian_path(
                                       waypoints,   # waypoints to follow
                                       0.01,        # eef_step
                                       0.0)         # jump_threshold

    # Note: We are just planning, not asking move_group to actually move the robot yet:
    return plan, fraction

    ## END_SUB_TUTORIAL


  def display_trajectory(self, plan):
    # Copy class variables to local variables to make the web tutorials more clear.
    # In practice, you should use the class variables directly unless you have a good
    # reason not to.
    robot = self.robot
    display_trajectory_publisher = self.display_trajectory_publisher

    ## BEGIN_SUB_TUTORIAL display_trajectory
    ##
    ## Displaying a Trajectory
    ## ^^^^^^^^^^^^^^^^^^^^^^^
    ## You can ask RViz to visualize a plan (aka trajectory) for you. But the
    ## group.plan() method does this automatically so this is not that useful
    ## here (it just displays the same trajectory again):
    ##
    ## A `DisplayTrajectory`_ msg has two primary fields, trajectory_start and trajectory.
    ## We populate the trajectory_start with our current robot state to copy over
    ## any AttachedCollisionObjects and add our plan to the trajectory.
    display_trajectory = moveit_msgs.msg.DisplayTrajectory()
    display_trajectory.trajectory_start = robot.get_current_state()
    display_trajectory.trajectory.append(plan)
    # Publish
    display_trajectory_publisher.publish(display_trajectory);

    ## END_SUB_TUTORIAL


  def execute_plan(self, plan):
    # Copy class variables to local variables to make the web tutorials more clear.
    # In practice, you should use the class variables directly unless you have a good
    # reason not to.
    move_group = self.move_group

    ## BEGIN_SUB_TUTORIAL execute_plan
    ##
    ## Executing a Plan
    ## ^^^^^^^^^^^^^^^^
    ## Use execute if you would like the robot to follow
    ## the plan that has already been computed:
    move_group.execute(plan, wait=False)

    ## **Note:** The robot's current joint state must be within some tolerance of the
    ## first waypoint in the `RobotTrajectory`_ or ``execute()`` will fail
    ## END_SUB_TUTORIAL


  def get_current_joint_value(self):
    return self.move_group.get_current_joint_values()


  def get_current_pose(self, rpy=False):
    if rpy == True:
      current_pose = self.move_group.get_current_pose().pose
      #print("{:.5f}, {:.2f}".format(end - start, 1/(end - start)), end='\r')
      x_pos = current_pose.position.x
      y_pos = current_pose.position.y
      z_pos = current_pose.position.z
      current_RPY = euler_from_quaternion(self.xyzw_array(current_pose.orientation))
      roll_pos = current_RPY[0]
      pitch_pos = current_RPY[1]
      yaw_pos = current_RPY[2]
      
      return np.array([x_pos, y_pos, z_pos, roll_pos, pitch_pos, yaw_pos])
    else:
      return self.move_group.get_current_pose().pose


  def get_jacobian(self, joint_values):
    return self.move_group.get_jacobian_matrix(joint_values)


  def get_current_jacobian(self):
    current_joints = self.get_current_joint_value()
    return self.move_group.get_jacobian_matrix(current_joints)


  def get_inv_jacobian(self, joint_values):
    jacobian = self.get_jacobian(joint_values)
    return inv(jacobian)


  def get_singular(self, joint_values):
    jacobian = self.get_jacobian(joint_values)
    return abs(det(jacobian))


  def get_svd(self, matrix):
    return svd(matrix, full_matrices=True)


  def get_eigen(self, A):
    return eig(A)


  def test_print(self):
    current_joint = self.move_group.get_current_joint_values()
    print("current joint:", current_joint, type(current_joint))
    
    current_pose = self.get_current_pose()
    print("current pose:", current_pose, type(current_pose))

    singular = self.get_singular(current_joint)
    print("singular: ", singular)

    # Quaternion to q_array
    q_orig = self.xyzw_array(self.get_current_pose().orientation)
    print("orig", q_orig, type(q_orig))
    
    # q_array from euler
    q_rot = quaternion_from_euler(0, 0, 0.5)
    print("rot", q_rot, type(q_rot))
    
    # Quaternion multiplication
    q_new = quaternion_multiply(q_rot, q_orig)
    print("new", q_new, type(q_new))

    # q_array to Quaternion
    q = Quaternion(q_new[0], q_new[1], q_new[2], q_new[3])
    print(q, type(q))
    
    current_orientation = self.get_current_pose().orientation
    current_RPY = euler_from_quaternion(self.xyzw_array(current_orientation))
    print(current_RPY, type(current_RPY))


  # https://answers.ros.org/question/259022/switching-between-controllers-with-ros_control-controller_manager/
  def controller_change(self, current_controller, target_controller):
    #print("test1")
    rospy.wait_for_service(self.prefix+'/controller_manager/switch_controller')
    #print("test2")
    try:
        #create a handle for calling the service
        switch_controller = rospy.ServiceProxy(self.prefix+'/controller_manager/switch_controller', SwitchController)
        # http://docs.ros.org/en/api/controller_manager_msgs/html/srv/SwitchController.html
        req = SwitchControllerRequest()
        req.start_controllers = [target_controller]
        req.stop_controllers = [current_controller]
        req.strictness = 1
        req.start_asap = False
        req.timeout = 0.0
        #req = SwitchControllerRequest(start_controllers=target_controller, stop_controllers=current_controller, strictness=1, 
        #                              start_asap=False, timeout=0.0)
        res = switch_controller(req)
        if res:
            print(res)
            print("controller changed from {} to {}".format(current_controller, target_controller))
        else:
            print("failed to change controller")
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e) 

  def change_to_velocity_controller(self, req):
    self.controller_change(self.base_controller, self.velocity_controller)
    #self.controller_change(self.base_controller, self.velocity_controller, mode="/unity")
    res = TriggerResponse()
    res.success = True
    res.message = "changed to velocity controller"
    return res

  def change_to_base_controller(self, req):
    print("come in")
    self.controller_change(self.velocity_controller, self.base_controller)
    #self.controller_change(self.velocity_controller, self.base_controller, mode="/unity")
    res = TriggerResponse()
    res.success = True
    res.message = "changed to base controller"
    return res

  def reset_pose(self, req):
    print("reset pose service")
    self.change_to_base_controller("")
    rospy.set_param(self.prefix+'/teleop_state', 'stop')
    self.teleop_state = rospy.get_param(self.prefix+'/teleop_state')
    while not self.go_to_init_state():
      print("Failed to go to init state")
    print("Success to get init state!")
    res = TriggerResponse()
    res.success = True
    res.message = "reset pose"
    return res

  def start_teleop(self, req):
    self.change_to_velocity_controller("")
    rospy.set_param(self.prefix+'/teleop_state', 'start')
    self.teleop_state = rospy.get_param(self.prefix+'/teleop_state')
    res = TriggerResponse()
    res.success = True
    res.message = "start teleop"
    return res

  def joint_velocity_command(self, target_vel): 
    joint_vel_msg = Float64MultiArray() 
    joint_vel_msg.data = target_vel 
    print(target_vel)
    self.vel_pub.publish(joint_vel_msg) 

  def stop(self):
    joint_vel_msg = Float64MultiArray()  
    joint_vel_msg.data = np.zeros(6)
    self.vel_pub.publish(joint_vel_msg)

  # def timer(self):
  #   print("{:.5f}, {:.2f}".format(self.end - self.start, 1/(self.end - self.start)), end='\r')


def main():
  prefix=''
  args = rospy.myargv()
  if len(args) < 2:
      print("You need to type the mode argument: 'sim' or 'real'")
      print("ex: ~/ur10_python_interface.py sim")
      print("ex: ~/ur10_python_interface.py real")
      exit()
  elif len(args) > 2:
      mode = args[1]
      prefix = '/'+args[2]
      print(mode, prefix)
  else:
      mode = args[1]

  if mode == "real":
      base_controller = "scaled_pos_joint_traj_controller"
      velocity_controller = "joint_group_vel_controller"
  else:
      base_controller = "arm_controller"
      velocity_controller = "joint_group_vel_controller"

  #base_controller = "arm_controller" # virtual
  #base_controller = "scaled_pos_joint_traj_controller" # real
  #velocity_controller = "joint_group_vel_controller"
  robot_interface = MoveGroupPythonInteface(base_controller=base_controller, 
                                            velocity_controller=velocity_controller, 
                                            gym=False, # unpause 일때만 가능, gym 환경에서 사용할 경우 gym=True
                                            verbose=False,
                                            prefix=prefix) 

  rospy.set_param(prefix+'/interface', 'ready')
  rospy.spin()


if __name__ == '__main__':
  main()
  