using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.Std;

public class Indy7ActionSubsrciber : MonoBehaviour
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


    public GameObject Indy7;
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

        // Subscriber
        //ROSConnection.instance.Subscribe<Float64MultiArrayMsg>("unity_indy7position_command", PositionCommand);
        ROSConnection.instance.Subscribe<Float64MultiArrayMsg>("unity_indy7_velocity_command", VelocityCommand);
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
            Debug.Log((float)actionMessage.data[joint]);
            
            //joint1XDrive.force_limit = 1000;
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
        Debug.Log(jointArticulationBodies.Length);
    }
}
