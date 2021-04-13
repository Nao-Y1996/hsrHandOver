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
    

    transform.setOrigin( tf::Vector3(-0.118, 0.022, 0.18334) );
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "head_pan_link", "pan2camera"));

    transform.setOrigin( tf::Vector3(-0.118, 0.022, 0.9354) );
    transform.setRotation( tf::Quaternion(0, 0, 0.74, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "base2camera"));
    /*
    transform.setOrigin( tf::Vector3(1.2, 0.022, 0.812) );
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "head_pan_link", "pan2face"));

    transform.setOrigin( tf::Vector3(-0.5, 0.0, -0.5) );
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "camera2face", "handing_position"));
*/


    rate.sleep();
  }
  return 0;
};

