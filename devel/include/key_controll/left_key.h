// Generated by gencpp from file key_controll/left_key.msg
// DO NOT EDIT!


#ifndef KEY_CONTROLL_MESSAGE_LEFT_KEY_H
#define KEY_CONTROLL_MESSAGE_LEFT_KEY_H

#include <ros/service_traits.h>


#include <key_controll/left_keyRequest.h>
#include <key_controll/left_keyResponse.h>


namespace key_controll
{

struct left_key
{

typedef left_keyRequest Request;
typedef left_keyResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct left_key
} // namespace key_controll


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::key_controll::left_key > {
  static const char* value()
  {
    return "92cc5915248733a71486eaf081ac9e84";
  }

  static const char* value(const ::key_controll::left_key&) { return value(); }
};

template<>
struct DataType< ::key_controll::left_key > {
  static const char* value()
  {
    return "key_controll/left_key";
  }

  static const char* value(const ::key_controll::left_key&) { return value(); }
};


// service_traits::MD5Sum< ::key_controll::left_keyRequest> should match 
// service_traits::MD5Sum< ::key_controll::left_key > 
template<>
struct MD5Sum< ::key_controll::left_keyRequest>
{
  static const char* value()
  {
    return MD5Sum< ::key_controll::left_key >::value();
  }
  static const char* value(const ::key_controll::left_keyRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::key_controll::left_keyRequest> should match 
// service_traits::DataType< ::key_controll::left_key > 
template<>
struct DataType< ::key_controll::left_keyRequest>
{
  static const char* value()
  {
    return DataType< ::key_controll::left_key >::value();
  }
  static const char* value(const ::key_controll::left_keyRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::key_controll::left_keyResponse> should match 
// service_traits::MD5Sum< ::key_controll::left_key > 
template<>
struct MD5Sum< ::key_controll::left_keyResponse>
{
  static const char* value()
  {
    return MD5Sum< ::key_controll::left_key >::value();
  }
  static const char* value(const ::key_controll::left_keyResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::key_controll::left_keyResponse> should match 
// service_traits::DataType< ::key_controll::left_key > 
template<>
struct DataType< ::key_controll::left_keyResponse>
{
  static const char* value()
  {
    return DataType< ::key_controll::left_key >::value();
  }
  static const char* value(const ::key_controll::left_keyResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KEY_CONTROLL_MESSAGE_LEFT_KEY_H
