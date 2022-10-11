// Generated by gencpp from file myservice/addResponse.msg
// DO NOT EDIT!


#ifndef MYSERVICE_MESSAGE_ADDRESPONSE_H
#define MYSERVICE_MESSAGE_ADDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace myservice
{
template <class ContainerAllocator>
struct addResponse_
{
  typedef addResponse_<ContainerAllocator> Type;

  addResponse_()
    : sum(0)  {
    }
  addResponse_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int32_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::myservice::addResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::myservice::addResponse_<ContainerAllocator> const> ConstPtr;

}; // struct addResponse_

typedef ::myservice::addResponse_<std::allocator<void> > addResponse;

typedef boost::shared_ptr< ::myservice::addResponse > addResponsePtr;
typedef boost::shared_ptr< ::myservice::addResponse const> addResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::myservice::addResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::myservice::addResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::myservice::addResponse_<ContainerAllocator1> & lhs, const ::myservice::addResponse_<ContainerAllocator2> & rhs)
{
  return lhs.sum == rhs.sum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::myservice::addResponse_<ContainerAllocator1> & lhs, const ::myservice::addResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace myservice

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::myservice::addResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::myservice::addResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::myservice::addResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::myservice::addResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::myservice::addResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::myservice::addResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::myservice::addResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ba699c25c9418c0366f3595c0c8e8ec";
  }

  static const char* value(const ::myservice::addResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ba699c25c9418c0ULL;
  static const uint64_t static_value2 = 0x366f3595c0c8e8ecULL;
};

template<class ContainerAllocator>
struct DataType< ::myservice::addResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "myservice/addResponse";
  }

  static const char* value(const ::myservice::addResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::myservice::addResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 服务器响应发送的数据\n"
"int32 sum\n"
;
  }

  static const char* value(const ::myservice::addResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::myservice::addResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct addResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::myservice::addResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::myservice::addResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MYSERVICE_MESSAGE_ADDRESPONSE_H