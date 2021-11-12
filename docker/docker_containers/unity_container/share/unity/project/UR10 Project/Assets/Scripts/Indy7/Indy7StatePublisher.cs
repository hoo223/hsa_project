using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Sensor;

public class Indy7StatePublisher : MonoBehaviour
{
    // ROS Connector
    private ROSConnection ros;

    // Used to determine how much time has elapsed since the last message was published
    private float timeElapsed;

    // Publish the cube's position and rotation every N seconds
    public float publishMessageFrequency = 1/125.0f;

    // Articulation Bodies
    private ArticulationBody[] jointArticulationBodies;

    // Hardcoded variables 
    private int numRobotJoints = 6;

    // Variables required for ROS communication 
    public string topicName = "/unity_indy7_joint_states";

    public GameObject Indy7;
    List<float> positions = new List<float>();
    List<float> velocities = new List<float>();

    // Start is called before the first frame update
    void Start()
    {
        // Get ROS connection static instance
        ros = ROSConnection.instance;
        ros.RegisterPublisher<JointStateMsg>(topicName);
        jointArticulationBodies = new ArticulationBody[numRobotJoints];
        
        string link1 = "world/link0/link1";
        jointArticulationBodies[0] = Indy7.transform.Find(link1).GetComponent<ArticulationBody>();

        string link2 = link1 + "/link2";
        jointArticulationBodies[1] = Indy7.transform.Find(link2).GetComponent<ArticulationBody>();

        string link3 = link2 + "/link3";
        jointArticulationBodies[2] = Indy7.transform.Find(link3).GetComponent<ArticulationBody>();

        string link4 = link3 + "/link4";
        jointArticulationBodies[3] = Indy7.transform.Find(link4).GetComponent<ArticulationBody>();

        string link5 = link4 + "/link5";
        jointArticulationBodies[4] = Indy7.transform.Find(link5).GetComponent<ArticulationBody>();

        string link6 = link5 + "/link6";
        jointArticulationBodies[5] = Indy7.transform.Find(link6).GetComponent<ArticulationBody>();
    }

    // Update is called once per frame
    void Update()
    {
        timeElapsed += Time.deltaTime;

        for (int joint = 0; joint < jointArticulationBodies.Length; joint++)
        {
            var joint1XDrive = jointArticulationBodies[joint].xDrive;
            joint1XDrive.stiffness = 10000;
            joint1XDrive.damping = 1000;
            joint1XDrive.forceLimit = 1000;
            jointArticulationBodies[joint].xDrive = joint1XDrive;
        }

        if (timeElapsed > publishMessageFrequency)
        {
            JointStateMsg joint_states = new JointStateMsg();
            joint_states.position = new double[numRobotJoints];
            jointArticulationBodies[0].GetJointPositions(positions);
            jointArticulationBodies[0].GetJointVelocities(velocities);
            joint_states.position[0] = (double)positions[0];
            joint_states.position[1] = (double)positions[1];
            joint_states.position[2] = (double)positions[2];
            joint_states.position[3] = (double)positions[3];
            joint_states.position[4] = (double)positions[4];
            joint_states.position[5] = (double)positions[5];

            joint_states.velocity = new double[numRobotJoints];
            joint_states.velocity[0] = (double)velocities[0];
            joint_states.velocity[1] = (double)velocities[1];
            joint_states.velocity[2] = (double)velocities[2];
            joint_states.velocity[3] = (double)velocities[3];
            joint_states.velocity[4] = (double)velocities[4];
            joint_states.velocity[5] = (double)velocities[5];

            // Finally send the message to server_endpoint.py running in ROS
            ros.Send(topicName, joint_states);

            timeElapsed = 0;
        }
    }
}
