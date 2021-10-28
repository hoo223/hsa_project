// Generated by gencpp from file ur10_python_interface/SolveIkRequest.msg
// DO NOT EDIT!


#ifndef UR10_PYTHON_INTERFACE_MESSAGE_SOLVEIKREQUEST_H
#define UR10_PYTHON_INTERFACE_MESSAGE_SOLVEIKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace ur10_python_interface
{
template <class ContainerAllocator>
struct SolveIkRequest_
{
  typedef SolveIkRequest_<ContainerAllocator> Type;

  SolveIkRequest_()
    : end_pose()  {
    }
  SolveIkRequest_(const ContainerAllocator& _alloc)
    : end_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _end_pose_type;
  _end_pose_type end_pose;





  typedef boost::shared_ptr< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SolveIkRequest_

typedef ::ur10_python_interface::SolveIkRequest_<std::allocator<void> > SolveIkRequest;

typedef boost::shared_ptr< ::ur10_python_interface::SolveIkRequest > SolveIkRequestPtr;
typedef boost::shared_ptr< ::ur10_python_interface::SolveIkRequest const> SolveIkRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator1> & lhs, const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator2> & rhs)
{
  return lhs.end_pose == rhs.end_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator1> & lhs, const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur10_python_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "08fee3ac26cd0926e5d192afd941fb4e";
  }

  static const char* value(const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x08fee3ac26cd0926ULL;
  static const uint64_t static_value2 = 0xe5d192afd941fb4eULL;
};

template<class ContainerAllocator>
struct DataType< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur10_python_interface/SolveIkRequest";
  }

  static const char* value(const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose end_pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.end_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SolveIkRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur10_python_interface::SolveIkRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur10_python_interface::SolveIkRequest_<ContainerAllocator>& v)
  {
    s << indent << "end_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.end_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR10_PYTHON_INTERFACE_MESSAGE_SOLVEIKREQUEST_H
