// Generated by gencpp from file acroba_workshop_sigma/MoveFeedback.msg
// DO NOT EDIT!


#ifndef ACROBA_WORKSHOP_SIGMA_MESSAGE_MOVEFEEDBACK_H
#define ACROBA_WORKSHOP_SIGMA_MESSAGE_MOVEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <turtlesim/Pose.h>

namespace acroba_workshop_sigma
{
template <class ContainerAllocator>
struct MoveFeedback_
{
  typedef MoveFeedback_<ContainerAllocator> Type;

  MoveFeedback_()
    : pose()  {
    }
  MoveFeedback_(const ContainerAllocator& _alloc)
    : pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::turtlesim::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct MoveFeedback_

typedef ::acroba_workshop_sigma::MoveFeedback_<std::allocator<void> > MoveFeedback;

typedef boost::shared_ptr< ::acroba_workshop_sigma::MoveFeedback > MoveFeedbackPtr;
typedef boost::shared_ptr< ::acroba_workshop_sigma::MoveFeedback const> MoveFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator1> & lhs, const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator1> & lhs, const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acroba_workshop_sigma

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "582239f3e6c49527a893bd9673357b39";
  }

  static const char* value(const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x582239f3e6c49527ULL;
  static const uint64_t static_value2 = 0xa893bd9673357b39ULL;
};

template<class ContainerAllocator>
struct DataType< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acroba_workshop_sigma/MoveFeedback";
  }

  static const char* value(const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#Define feedback's message\n"
"turtlesim/Pose pose\n"
"\n"
"\n"
"================================================================================\n"
"MSG: turtlesim/Pose\n"
"float32 x\n"
"float32 y\n"
"float32 theta\n"
"\n"
"float32 linear_velocity\n"
"float32 angular_velocity\n"
;
  }

  static const char* value(const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acroba_workshop_sigma::MoveFeedback_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::turtlesim::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACROBA_WORKSHOP_SIGMA_MESSAGE_MOVEFEEDBACK_H
