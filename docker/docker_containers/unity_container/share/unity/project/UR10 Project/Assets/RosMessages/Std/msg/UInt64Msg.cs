//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Std
{
    [Serializable]
    public class UInt64Msg : Message
    {
        public const string k_RosMessageName = "std_msgs/UInt64";
        public override string RosMessageName => k_RosMessageName;

        public ulong data;

        public UInt64Msg()
        {
            this.data = 0;
        }

        public UInt64Msg(ulong data)
        {
            this.data = data;
        }

        public static UInt64Msg Deserialize(MessageDeserializer deserializer) => new UInt64Msg(deserializer);

        private UInt64Msg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.data);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.data);
        }

        public override string ToString()
        {
            return "UInt64Msg: " +
            "\ndata: " + data.ToString();
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