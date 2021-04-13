// Generated by gencpp from file key_controll/key.msg
// DO NOT EDIT!


#ifndef KEY_CONTROLL_MESSAGE_KEY_H
#define KEY_CONTROLL_MESSAGE_KEY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace key_controll
{
template <class ContainerAllocator>
struct key_
{
  typedef key_<ContainerAllocator> Type;

  key_()
    : key()  {
    }
  key_(const ContainerAllocator& _alloc)
    : key(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _key_type;
  _key_type key;





  typedef boost::shared_ptr< ::key_controll::key_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::key_controll::key_<ContainerAllocator> const> ConstPtr;

}; // struct key_

typedef ::key_controll::key_<std::allocator<void> > key;

typedef boost::shared_ptr< ::key_controll::key > keyPtr;
typedef boost::shared_ptr< ::key_controll::key const> keyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::key_controll::key_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::key_controll::key_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace key_controll

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'key_controll': ['/home/naoyamada/CW/catkin_ws3/src/key_controll/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::key_controll::key_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::key_controll::key_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::key_controll::key_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::key_controll::key_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::key_controll::key_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::key_controll::key_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::key_controll::key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e0e6b82860d1fefbdaa2c52c0b6f712e";
  }

  static const char* value(const ::key_controll::key_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe0e6b82860d1fefbULL;
  static const uint64_t static_value2 = 0xdaa2c52c0b6f712eULL;
};

template<class ContainerAllocator>
struct DataType< ::key_controll::key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "key_controll/key";
  }

  static const char* value(const ::key_controll::key_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::key_controll::key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string key\n\
";
  }

  static const char* value(const ::key_controll::key_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::key_controll::key_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct key_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::key_controll::key_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::key_controll::key_<ContainerAllocator>& v)
  {
    s << indent << "key: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.key);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KEY_CONTROLL_MESSAGE_KEY_H