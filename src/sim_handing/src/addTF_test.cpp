#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "NT_new_frame");
  ros::NodeHandle node;

  tf::TransformBroadcaster br;
  tf::Transform transform;
  tf::Transform transform2;
  tf::Transform transform3;

  ros::Rate rate(10.0);
  while (node.ok()){
    
/*
    transform.setOrigin( tf::Vector3(2, 1, 1.6) );
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "map", "face"));
*/
    transform.setOrigin( tf::Vector3(-0.106, 0.022, 0.191) );
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "head_pan_link", "cam"));
    
    transform.setOrigin( tf::Vector3(1.947, 0.0, 0.456) );
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "cam", "face"));

    /*transform.setOrigin( tf::Vector3(-0.5, 0.0, -0.5) );
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "face", "hand"));
*/


    rate.sleep();
  }
  return 0;
};

