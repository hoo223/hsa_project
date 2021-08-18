using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Std;

public class UR10ActionSubsrciber : MonoBehaviour
{

    // ROS Connector
    private ROSConnection ros;

    // Used to determine how much time has elapsed since the last message was published
    private float timeElapsed;

    // Publish the cube's position and rotation every N seconds
    public float publishMessageFrequency = 0.01f;

    // Articulation Bodies
    private ArticulationBody[] jointArticulationBodies;

    // Hardcoded variables 
    private int numRobotJoints = 6;
    private readonly float jointAssignmentWait = 0.1f;
    private readonly float poseAssignmentWait = 0.5f;


    public GameObject UR10;
    float time = 0;
    float pre_t = 0;

    List<float> targets = new List<float>();
    List<float> targetVelocities = new List<float>();

    // Start is called before the first frame update
    void Start()
    {
        // Get ROS connection static instance
        ros = ROSConnection.instance;
        jointArticulationBodies = new ArticulationBody[numRobotJoints];
        
        string shoulder_link = "world/base_link/shoulder_link";
        jointArticulationBodies[0] = UR10.transform.Find(shoulder_link).GetComponent<ArticulationBody>();

        string arm_link = shoulder_link + "/upper_arm_link";
        jointArticulationBodies[1] = UR10.transform.Find(arm_link).GetComponent<ArticulationBody>();

        string elbow_link = arm_link + "/forearm_link";
        jointArticulationBodies[2] = UR10.transform.Find(elbow_link).GetComponent<ArticulationBody>();

        string forearm_link = elbow_link + "/wrist_1_link";
        jointArticulationBodies[3] = UR10.transform.Find(forearm_link).GetComponent<ArticulationBody>();

        string wrist_link = forearm_link + "/wrist_2_link";
        jointArticulationBodies[4] = UR10.transform.Find(wrist_link).GetComponent<ArticulationBody>();

        string hand_link = wrist_link + "/wrist_3_link";
        jointArticulationBodies[5] = UR10.transform.Find(hand_link).GetComponent<ArticulationBody>();

        // Subscriber
        //ROSConnection.instance.Subscribe<Float64MultiArrayMsg>("position_command", PositionCommand);
        ROSConnection.instance.Subscribe<Float64MultiArrayMsg>("velocity_command", VelocityCommand);
    }

    void PositionCommand(Float64MultiArrayMsg actionMessage)
    {
        // Set the joint values for every joint
        for (int joint = 0; joint < jointArticulationBodies.Length; joint++)
        {
            var joint1XDrive = jointArticulationBodies[joint].xDrive;
            joint1XDrive.target = (float)actionMessage.data[joint] * (float)57.2958;
            jointArticulationBodies[joint].xDrive = joint1XDrive;
        }
    }

    void VelocityCommand(Float64MultiArrayMsg actionMessage)
    {
        
        float cur_t = time;
        float dt = cur_t - pre_t;
        //Debug.Log(dt);
        pre_t = cur_t;

        jointArticulationBodies[0].GetJointPositions(targets);
        //Debug.Log(targets[0]);
        jointArticulationBodies[0].GetJointVelocities(targetVelocities);
        //jointArticulationBodies[0].GetJointForces(targetVelocities);
        // Set the joint values for every joint
        for (int joint = 0; joint < jointArticulationBodies.Length; joint++)
        {
            //var joint1XDrive = jointArticulationBodies[joint].xDrive;
            //joint1XDrive.target = targets[joint] + (float)actionMessage.data[joint] * (float)57.2958;
            //joint1XDrive.targetVelocity = (float)actionMessage.data[joint] * (float)57.2958;
            //jointArticulationBodies[joint].xDrive = joint1XDrive;
            targetVelocities[joint] = ((float)actionMessage.data[joint]);
            targets[joint] += targetVelocities[joint] * dt;
        }
        //Debug.Log(targetVelocities.Count);
        jointArticulationBodies[0].SetDriveTargets(targets);
        jointArticulationBodies[0].SetDriveTargetVelocities(targetVelocities);
        //jointArticulationBodies[0].SetJointForces(targetVelocities);
        //targetVelocities.Clear();

        
        //Debug.Log(targetVelocities.Count);
        
    }

    // Update is called once per frame
    void Update()
    {
        time += Time.deltaTime;
    }
}
