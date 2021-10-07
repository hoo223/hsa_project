// Generated by gencpp from file robotiq_ft_sensor/sensor_accessorRequest.msg
// DO NOT EDIT!


#ifndef ROBOTIQ_FT_SENSOR_MESSAGE_SENSOR_ACCESSORREQUEST_H
#define ROBOTIQ_FT_SENSOR_MESSAGE_SENSOR_ACCESSORREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotiq_ft_sensor
{
template <class ContainerAllocator>
struct sensor_accessorRequest_
{
  typedef sensor_accessorRequest_<ContainerAllocator> Type;

  sensor_accessorRequest_()
    : command_id(0)
    , command()  {
    }
  sensor_accessorRequest_(const ContainerAllocator& _alloc)
    : command_id(0)
    , command(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _command_id_type;
  _command_id_type command_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(COMMAND_GET_SERIAL_NUMBER)
  #undef COMMAND_GET_SERIAL_NUMBER
#endif
#if defined(_WIN32) && defined(COMMAND_GET_FIRMWARE_VERSION)
  #undef COMMAND_GET_FIRMWARE_VERSION
#endif
#if defined(_WIN32) && defined(COMMAND_GET_PRODUCTION_YEAR)
  #undef COMMAND_GET_PRODUCTION_YEAR
#endif
#if defined(_WIN32) && defined(COMMAND_SET_ZERO)
  #undef COMMAND_SET_ZERO
#endif

  enum {
    COMMAND_GET_SERIAL_NUMBER = 1u,
    COMMAND_GET_FIRMWARE_VERSION = 2u,
    COMMAND_GET_PRODUCTION_YEAR = 4u,
    COMMAND_SET_ZERO = 8u,
  };


  typedef boost::shared_ptr< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct sensor_accessorRequest_

typedef ::robotiq_ft_sensor::sensor_accessorRequest_<std::allocator<void> > sensor_accessorRequest;

typedef boost::shared_ptr< ::robotiq_ft_sensor::sensor_accessorRequest > sensor_accessorRequestPtr;
typedef boost::shared_ptr< ::robotiq_ft_sensor::sensor_accessorRequest const> sensor_accessorRequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator1> & lhs, const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator2> & rhs)
{
  return lhs.command_id == rhs.command_id &&
    lhs.command == rhs.command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator1> & lhs, const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotiq_ft_sensor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "863e7f766b688715a9cf50b105733d81";
  }

  static const char* value(const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x863e7f766b688715ULL;
  static const uint64_t static_value2 = 0xa9cf50b105733d81ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotiq_ft_sensor/sensor_accessorRequest";
  }

  static const char* value(const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 COMMAND_GET_SERIAL_NUMBER=1\n"
"uint8 COMMAND_GET_FIRMWARE_VERSION=2\n"
"uint8 COMMAND_GET_PRODUCTION_YEAR=4\n"
"uint8 COMMAND_SET_ZERO=8\n"
"uint8 command_id\n"
"string command  # deprecated, please use command_id with a value of COMMAND_*\n"
;
  }

  static const char* value(const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command_id);
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sensor_accessorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotiq_ft_sensor::sensor_accessorRequest_<ContainerAllocator>& v)
  {
    s << indent << "command_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command_id);
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTIQ_FT_SENSOR_MESSAGE_SENSOR_ACCESSORREQUEST_H