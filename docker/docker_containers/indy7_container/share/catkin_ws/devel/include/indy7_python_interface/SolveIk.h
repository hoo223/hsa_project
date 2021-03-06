// Generated by gencpp from file indy7_python_interface/SolveIk.msg
// DO NOT EDIT!


#ifndef INDY7_PYTHON_INTERFACE_MESSAGE_SOLVEIK_H
#define INDY7_PYTHON_INTERFACE_MESSAGE_SOLVEIK_H

#include <ros/service_traits.h>


#include <indy7_python_interface/SolveIkRequest.h>
#include <indy7_python_interface/SolveIkResponse.h>


namespace indy7_python_interface
{

struct SolveIk
{

typedef SolveIkRequest Request;
typedef SolveIkResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SolveIk
} // namespace indy7_python_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::indy7_python_interface::SolveIk > {
  static const char* value()
  {
    return "6580254afbe9e0087fa243dc6fb4dd77";
  }

  static const char* value(const ::indy7_python_interface::SolveIk&) { return value(); }
};

template<>
struct DataType< ::indy7_python_interface::SolveIk > {
  static const char* value()
  {
    return "indy7_python_interface/SolveIk";
  }

  static const char* value(const ::indy7_python_interface::SolveIk&) { return value(); }
};


// service_traits::MD5Sum< ::indy7_python_interface::SolveIkRequest> should match
// service_traits::MD5Sum< ::indy7_python_interface::SolveIk >
template<>
struct MD5Sum< ::indy7_python_interface::SolveIkRequest>
{
  static const char* value()
  {
    return MD5Sum< ::indy7_python_interface::SolveIk >::value();
  }
  static const char* value(const ::indy7_python_interface::SolveIkRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::indy7_python_interface::SolveIkRequest> should match
// service_traits::DataType< ::indy7_python_interface::SolveIk >
template<>
struct DataType< ::indy7_python_interface::SolveIkRequest>
{
  static const char* value()
  {
    return DataType< ::indy7_python_interface::SolveIk >::value();
  }
  static const char* value(const ::indy7_python_interface::SolveIkRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::indy7_python_interface::SolveIkResponse> should match
// service_traits::MD5Sum< ::indy7_python_interface::SolveIk >
template<>
struct MD5Sum< ::indy7_python_interface::SolveIkResponse>
{
  static const char* value()
  {
    return MD5Sum< ::indy7_python_interface::SolveIk >::value();
  }
  static const char* value(const ::indy7_python_interface::SolveIkResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::indy7_python_interface::SolveIkResponse> should match
// service_traits::DataType< ::indy7_python_interface::SolveIk >
template<>
struct DataType< ::indy7_python_interface::SolveIkResponse>
{
  static const char* value()
  {
    return DataType< ::indy7_python_interface::SolveIk >::value();
  }
  static const char* value(const ::indy7_python_interface::SolveIkResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INDY7_PYTHON_INTERFACE_MESSAGE_SOLVEIK_H
