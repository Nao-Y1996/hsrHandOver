// Generated by gencpp from file hsr_handing/pose_info.msg
// DO NOT EDIT!


#ifndef HSR_HANDING_MESSAGE_POSE_INFO_H
#define HSR_HANDING_MESSAGE_POSE_INFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hsr_handing
{
template <class ContainerAllocator>
struct pose_info_
{
  typedef pose_info_<ContainerAllocator> Type;

  pose_info_()
    : pose_identification_number(0.0)  {
    }
  pose_info_(const ContainerAllocator& _alloc)
    : pose_identification_number(0.0)  {
  (void)_alloc;
    }



   typedef float _pose_identification_number_type;
  _pose_identification_number_type pose_identification_number;





  typedef boost::shared_ptr< ::hsr_handing::pose_info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hsr_handing::pose_info_<ContainerAllocator> const> ConstPtr;

}; // struct pose_info_

typedef ::hsr_handing::pose_info_<std::allocator<void> > pose_info;

typedef boost::shared_ptr< ::hsr_handing::pose_info > pose_infoPtr;
typedef boost::shared_ptr< ::hsr_handing::pose_info const> pose_infoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hsr_handing::pose_info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hsr_handing::pose_info_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hsr_handing

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'hsr_handing': ['/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hsr_handing::pose_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hsr_handing::pose_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hsr_handing::pose_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hsr_handing::pose_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hsr_handing::pose_info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hsr_handing::pose_info_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hsr_handing::pose_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d2665a7040cc32206ef659f15e9d544d";
  }

  static const char* value(const ::hsr_handing::pose_info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd2665a7040cc3220ULL;
  static const uint64_t static_value2 = 0x6ef659f15e9d544dULL;
};

template<class ContainerAllocator>
struct DataType< ::hsr_handing::pose_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hsr_handing/pose_info";
  }

  static const char* value(const ::hsr_handing::pose_info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hsr_handing::pose_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 pose_identification_number\n\
";
  }

  static const char* value(const ::hsr_handing::pose_info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hsr_handing::pose_info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_identification_number);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pose_info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hsr_handing::pose_info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hsr_handing::pose_info_<ContainerAllocator>& v)
  {
    s << indent << "pose_identification_number: ";
    Printer<float>::stream(s, indent + "  ", v.pose_identification_number);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HSR_HANDING_MESSAGE_POSE_INFO_H
