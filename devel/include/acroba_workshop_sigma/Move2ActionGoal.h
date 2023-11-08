// Generated by gencpp from file acroba_workshop_sigma/Move2ActionGoal.msg
// DO NOT EDIT!


#ifndef ACROBA_WORKSHOP_SIGMA_MESSAGE_MOVE2ACTIONGOAL_H
#define ACROBA_WORKSHOP_SIGMA_MESSAGE_MOVE2ACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <acroba_workshop_sigma/Move2Goal.h>

namespace acroba_workshop_sigma
{
template <class ContainerAllocator>
struct Move2ActionGoal_
{
  typedef Move2ActionGoal_<ContainerAllocator> Type;

  Move2ActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  Move2ActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::acroba_workshop_sigma::Move2Goal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct Move2ActionGoal_

typedef ::acroba_workshop_sigma::Move2ActionGoal_<std::allocator<void> > Move2ActionGoal;

typedef boost::shared_ptr< ::acroba_workshop_sigma::Move2ActionGoal > Move2ActionGoalPtr;
typedef boost::shared_ptr< ::acroba_workshop_sigma::Move2ActionGoal const> Move2ActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator1> & lhs, const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator1> & lhs, const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acroba_workshop_sigma

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "808aba58dc3cbd9deff030e084cb772d";
  }

  static const char* value(const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x808aba58dc3cbd9dULL;
  static const uint64_t static_value2 = 0xeff030e084cb772dULL;
};

template<class ContainerAllocator>
struct DataType< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acroba_workshop_sigma/Move2ActionGoal";
  }

  static const char* value(const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"Move2Goal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: acroba_workshop_sigma/Move2Goal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#Define goal's message\n"
"string turtle_name\n"
"float32 speed\n"
"string turtle_to_follow  \n"
"float32 follow_distance  \n"
;
  }

  static const char* value(const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Move2ActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acroba_workshop_sigma::Move2ActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::acroba_workshop_sigma::Move2Goal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACROBA_WORKSHOP_SIGMA_MESSAGE_MOVE2ACTIONGOAL_H
