// Generated by gencpp from file ur10_python_interface/Ellipsoid3.msg
// DO NOT EDIT!


#ifndef UR10_PYTHON_INTERFACE_MESSAGE_ELLIPSOID3_H
#define UR10_PYTHON_INTERFACE_MESSAGE_ELLIPSOID3_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64MultiArray.h>

namespace ur10_python_interface
{
template <class ContainerAllocator>
struct Ellipsoid3_
{
  typedef Ellipsoid3_<ContainerAllocator> Type;

  Ellipsoid3_()
    : s()
    , u1()
    , u2()
    , u3()  {
    }
  Ellipsoid3_(const ContainerAllocator& _alloc)
    : s(_alloc)
    , u1(_alloc)
    , u2(_alloc)
    , u3(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _s_type;
  _s_type s;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _u1_type;
  _u1_type u1;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _u2_type;
  _u2_type u2;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _u3_type;
  _u3_type u3;





  typedef boost::shared_ptr< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> const> ConstPtr;

}; // struct Ellipsoid3_

typedef ::ur10_python_interface::Ellipsoid3_<std::allocator<void> > Ellipsoid3;

typedef boost::shared_ptr< ::ur10_python_interface::Ellipsoid3 > Ellipsoid3Ptr;
typedef boost::shared_ptr< ::ur10_python_interface::Ellipsoid3 const> Ellipsoid3ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator1> & lhs, const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator2> & rhs)
{
  return lhs.s == rhs.s &&
    lhs.u1 == rhs.u1 &&
    lhs.u2 == rhs.u2 &&
    lhs.u3 == rhs.u3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator1> & lhs, const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur10_python_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f6cdfc239b63a10b9b7c1e0e31d582b";
  }

  static const char* value(const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f6cdfc239b63a10ULL;
  static const uint64_t static_value2 = 0xb9b7c1e0e31d582bULL;
};

template<class ContainerAllocator>
struct DataType< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur10_python_interface/Ellipsoid3";
  }

  static const char* value(const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float64MultiArray s\n"
"std_msgs/Float64MultiArray u1\n"
"std_msgs/Float64MultiArray u2\n"
"std_msgs/Float64MultiArray u3\n"
"================================================================================\n"
"MSG: std_msgs/Float64MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float64[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
;
  }

  static const char* value(const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.s);
      stream.next(m.u1);
      stream.next(m.u2);
      stream.next(m.u3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ellipsoid3_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur10_python_interface::Ellipsoid3_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur10_python_interface::Ellipsoid3_<ContainerAllocator>& v)
  {
    s << indent << "s: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.s);
    s << indent << "u1: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.u1);
    s << indent << "u2: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.u2);
    s << indent << "u3: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.u3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR10_PYTHON_INTERFACE_MESSAGE_ELLIPSOID3_H
