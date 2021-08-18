//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;
using RosMessageTypes.Std;

namespace RosMessageTypes.Nav
{
    [Serializable]
    public class PathMsg : Message
    {
        public const string k_RosMessageName = "nav_msgs/Path";
        public override string RosMessageName => k_RosMessageName;

        // An array of poses that represents a Path for a robot to follow
        public HeaderMsg header;
        public Geometry.PoseStampedMsg[] poses;

        public PathMsg()
        {
            this.header = new HeaderMsg();
            this.poses = new Geometry.PoseStampedMsg[0];
        }

        public PathMsg(HeaderMsg header, Geometry.PoseStampedMsg[] poses)
        {
            this.header = header;
            this.poses = poses;
        }

        public static PathMsg Deserialize(MessageDeserializer deserializer) => new PathMsg(deserializer);

        private PathMsg(MessageDeserializer deserializer)
        {
            this.header = HeaderMsg.Deserialize(deserializer);
            deserializer.Read(out this.poses, Geometry.PoseStampedMsg.Deserialize, deserializer.ReadLength());
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.header);
            serializer.WriteLength(this.poses);
            serializer.Write(this.poses);
        }

        public override string ToString()
        {
            return "PathMsg: " +
            "\nheader: " + header.ToString() +
            "\nposes: " + System.String.Join(", ", poses.ToList());
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