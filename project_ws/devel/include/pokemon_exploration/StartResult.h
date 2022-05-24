// Generated by gencpp from file pokemon_exploration/StartResult.msg
// DO NOT EDIT!


#ifndef POKEMON_EXPLORATION_MESSAGE_STARTRESULT_H
#define POKEMON_EXPLORATION_MESSAGE_STARTRESULT_H


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
struct StartResult_
{
  typedef StartResult_<ContainerAllocator> Type;

  StartResult_()
    : average_error(0.0)  {
    }
  StartResult_(const ContainerAllocator& _alloc)
    : average_error(0.0)  {
  (void)_alloc;
    }



   typedef double _average_error_type;
  _average_error_type average_error;





  typedef boost::shared_ptr< ::pokemon_exploration::StartResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pokemon_exploration::StartResult_<ContainerAllocator> const> ConstPtr;

}; // struct StartResult_

typedef ::pokemon_exploration::StartResult_<std::allocator<void> > StartResult;

typedef boost::shared_ptr< ::pokemon_exploration::StartResult > StartResultPtr;
typedef boost::shared_ptr< ::pokemon_exploration::StartResult const> StartResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pokemon_exploration::StartResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pokemon_exploration::StartResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pokemon_exploration::StartResult_<ContainerAllocator1> & lhs, const ::pokemon_exploration::StartResult_<ContainerAllocator2> & rhs)
{
  return lhs.average_error == rhs.average_error;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pokemon_exploration::StartResult_<ContainerAllocator1> & lhs, const ::pokemon_exploration::StartResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pokemon_exploration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pokemon_exploration::StartResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pokemon_exploration::StartResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pokemon_exploration::StartResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pokemon_exploration::StartResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pokemon_exploration::StartResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pokemon_exploration::StartResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pokemon_exploration::StartResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c8e56c1b61e53d0747557b0166b12a98";
  }

  static const char* value(const ::pokemon_exploration::StartResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc8e56c1b61e53d07ULL;
  static const uint64_t static_value2 = 0x47557b0166b12a98ULL;
};

template<class ContainerAllocator>
struct DataType< ::pokemon_exploration::StartResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pokemon_exploration/StartResult";
  }

  static const char* value(const ::pokemon_exploration::StartResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pokemon_exploration::StartResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result\n"
"float64 average_error\n"
;
  }

  static const char* value(const ::pokemon_exploration::StartResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pokemon_exploration::StartResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.average_error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pokemon_exploration::StartResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pokemon_exploration::StartResult_<ContainerAllocator>& v)
  {
    s << indent << "average_error: ";
    Printer<double>::stream(s, indent + "  ", v.average_error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POKEMON_EXPLORATION_MESSAGE_STARTRESULT_H