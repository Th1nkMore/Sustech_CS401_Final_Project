// Generated by gencpp from file pokemon_exploration/StartFeedback.msg
// DO NOT EDIT!


#ifndef POKEMON_EXPLORATION_MESSAGE_STARTFEEDBACK_H
#define POKEMON_EXPLORATION_MESSAGE_STARTFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pokemon_exploration
{
template <class ContainerAllocator>
struct StartFeedback_
{
  typedef StartFeedback_<ContainerAllocator> Type;

  StartFeedback_()
    : current_distance(0.0)
    , current_error(0.0)  {
    }
  StartFeedback_(const ContainerAllocator& _alloc)
    : current_distance(0.0)
    , current_error(0.0)  {
  (void)_alloc;
    }



   typedef double _current_distance_type;
  _current_distance_type current_distance;

   typedef double _current_error_type;
  _current_error_type current_error;





  typedef boost::shared_ptr< ::pokemon_exploration::StartFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pokemon_exploration::StartFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct StartFeedback_

typedef ::pokemon_exploration::StartFeedback_<std::allocator<void> > StartFeedback;

typedef boost::shared_ptr< ::pokemon_exploration::StartFeedback > StartFeedbackPtr;
typedef boost::shared_ptr< ::pokemon_exploration::StartFeedback const> StartFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pokemon_exploration::StartFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pokemon_exploration::StartFeedback_<ContainerAllocator1> & lhs, const ::pokemon_exploration::StartFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.current_distance == rhs.current_distance &&
    lhs.current_error == rhs.current_error;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pokemon_exploration::StartFeedback_<ContainerAllocator1> & lhs, const ::pokemon_exploration::StartFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pokemon_exploration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pokemon_exploration::StartFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pokemon_exploration::StartFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pokemon_exploration::StartFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a6c461fcb85ef1623333aa310560289";
  }

  static const char* value(const ::pokemon_exploration::StartFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a6c461fcb85ef16ULL;
  static const uint64_t static_value2 = 0x23333aa310560289ULL;
};

template<class ContainerAllocator>
struct DataType< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pokemon_exploration/StartFeedback";
  }

  static const char* value(const ::pokemon_exploration::StartFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"float64 current_distance\n"
"float64 current_error\n"
;
  }

  static const char* value(const ::pokemon_exploration::StartFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_distance);
      stream.next(m.current_error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pokemon_exploration::StartFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pokemon_exploration::StartFeedback_<ContainerAllocator>& v)
  {
    s << indent << "current_distance: ";
    Printer<double>::stream(s, indent + "  ", v.current_distance);
    s << indent << "current_error: ";
    Printer<double>::stream(s, indent + "  ", v.current_error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POKEMON_EXPLORATION_MESSAGE_STARTFEEDBACK_H
