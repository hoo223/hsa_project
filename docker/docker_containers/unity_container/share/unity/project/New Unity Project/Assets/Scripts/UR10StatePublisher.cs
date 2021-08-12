using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Sensor;

public class UR10StatePublisher : MonoBehaviour
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

    // Variables required for ROS communication 
    public string topicName = "unity_ur10_joint_states";

    public GameObject UR10;

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
    }

    // Update is called once per frame
    void Update()
    {
        timeElapsed += Time.deltaTime;

        if (timeElapsed > publishMessageFrequency)
        {
            JointStateMsg joint_states = new JointStateMsg();
            joint_states.position = new double[numRobotJoints];
            joint_states.position[0] = jointArticulationBodies[0].xDrive.target;
            joint_states.position[1] = jointArticulationBodies[1].xDrive.target;
            joint_states.position[2] = jointArticulationBodies[2].xDrive.target;
            joint_states.position[3] = jointArticulationBodies[3].xDrive.target;
            joint_states.position[4] = jointArticulationBodies[4].xDrive.target;
            joint_states.position[5] = jointArticulationBodies[5].xDrive.target;

            // Finally send the message to server_endpoint.py running in ROS
            ros.Send(topicName, joint_states);

            timeElapsed = 0;
        }
    }
}
