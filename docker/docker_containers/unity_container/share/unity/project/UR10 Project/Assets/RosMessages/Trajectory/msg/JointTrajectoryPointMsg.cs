//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using RosMessageTypes.BuiltinInterfaces;

namespace RosMessageTypes.Trajectory
{
    [Serializable]
    public class JointTrajectoryPointMsg : Message
    {
        public const string k_RosMessageName = "trajectory_msgs/JointTrajectoryPoint";
        public override string RosMessageName => k_RosMessageName;

        //  Each trajectory point specifies either positions[, velocities[, accelerations]]
        //  or positions[, effort] for the trajectory to be executed.
        //  All specified values are in the same order as the joint names in JointTrajectory.msg
        public double[] positions;
        public double[] velocities;
        public double[] accelerations;
        public double[] effort;
        public DurationMsg time_from_start;

        public JointTrajectoryPointMsg()
        {
            this.positions = new double[0];
            this.velocities = new double[0];
            this.accelerations = new double[0];
            this.effort = new double[0];
            this.time_from_start = new DurationMsg();
        }

        public JointTrajectoryPointMsg(double[] positions, double[] velocities, double[] accelerations, double[] effort, DurationMsg time_from_start)
        {
            this.positions = positions;
            this.velocities = velocities;
            this.accelerations = accelerations;
            this.effort = effort;
            this.time_from_start = time_from_start;
        }

        public static JointTrajectoryPointMsg Deserialize(MessageDeserializer deserializer) => new JointTrajectoryPointMsg(deserializer);

        private JointTrajectoryPointMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.positions, sizeof(double), deserializer.ReadLength());
            deserializer.Read(out this.velocities, sizeof(double), deserializer.ReadLength());
            deserializer.Read(out this.accelerations, sizeof(double), deserializer.ReadLength());
            deserializer.Read(out this.effort, sizeof(double), deserializer.ReadLength());
            this.time_from_start = DurationMsg.Deserialize(deserializer);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.WriteLength(this.positions);
            serializer.Write(this.positions);
            serializer.WriteLength(this.velocities);
            serializer.Write(this.velocities);
            serializer.WriteLength(this.accelerations);
            serializer.Write(this.accelerations);
            serializer.WriteLength(this.effort);
            serializer.Write(this.effort);
            serializer.Write(this.time_from_start);
        }

        public override string ToString()
        {
            return "JointTrajectoryPointMsg: " +
            "\npositions: " + System.String.Join(", ", positions.ToList()) +
            "\nvelocities: " + System.String.Join(", ", velocities.ToList()) +
            "\naccelerations: " + System.String.Join(", ", accelerations.ToList()) +
            "\neffort: " + System.String.Join(", ", effort.ToList()) +
            "\ntime_from_start: " + time_from_start.ToString();
        }

#if UNITY_EDITOR
        [UnityEditor.InitializeOnLoadMethod]
#else
        [UnityEngine.RuntimeInitializeOnLoadMethod]
#endif
        public static void Register()
        {
            MessageRegistry.Register(k_RosMessageName, Deserialize);
        }
    }
}