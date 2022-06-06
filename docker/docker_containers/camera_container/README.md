# Robot-Camera Calibration
## 1. Capture the transform between camera and table frame
1. Run the realsense camera interface at host PC
    ~~~
    roslaunch realsense2_camera rs_camera.launch
    ~~~

2. Publish the transform between camera and table
    ~~~
    roslaunch aruco_ros double.launch
    ~~~
    Then, the transform between table frame (marker_table_frame) and camera frame (stereo_gazebo_left_camera_optical_frame) wil be published.

3. Capture the transform between camera and table
    ~~~
    rosrun tf tf_echo marker_table_frame stereo_gazebo_left_camera_optical_frame
    ~~~
    Copy the translation and rotation (RPY radian) information and apply them to table-to-camera transform in tf_connector.py (aruco_ros/aruco_ros/scripts). 
    ~~~
    br.sendTransform((0.309, -0.191, 1.026),
			tf.transformations.quaternion_from_euler(-3.139, 0.484, -1.483),
			rospy.Time.now(),
			'stereo_gazebo_left_camera_optical_frame',
			"marker_table_frame")
    ~~~

## 2. Excution
host PC
~~~
roslaunch realsense2_camera rs_camera.launch
~~~
ur10 container
~~~
ur10_tcp
~~~
camera container (terminal 1)
~~~
roslaunch aruco_ros single.launch
~~~
camera container (terminal 2)
~~~
rviz
~~~
