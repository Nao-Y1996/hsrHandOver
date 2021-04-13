//
//Broadcast the odom->abstractMap transform. AbstractMap is the frame the robot refers to for its activities, which
//includes collision avoidance. All objects should be defined with respect to the AbstractMap frame.
//
//The PC and the robot needs to have their clock synchronized.
//If the clock is not synchronized, run "sudo service chrony restart" in terminal
//

#include <cstdio>
#include "tf/transform_listener.h"
#include "tf/transform_broadcaster.h"
#include "ros/ros.h"

#define PI2 6.28318530718

int main(int argc,char **argv)
{
  ros::init(argc, argv, "NT_abstractMap");
  ros::NodeHandle nh;
  tf::TransformListener echoListener;
  ros::Rate rate(10);

  tf::TransformBroadcaster broadcaster;
  tf::Transform dAMap1,AMap;
  tf::Quaternion dAMap1_q,AMap_q;
  tf::StampedTransform echo_transform;

  //x y z (meters)
  //dAMap1.setOrigin(tf::Vector3(-1,0.38,-0.82));//ar_marker/19 (to create dummyAbstractMap1)
  dAMap1.setOrigin(tf::Vector3(0.0,0.0,0.0));
  AMap.setOrigin(tf::Vector3(2,4,1));

  //roll pitch yaw (rad)
  dAMap1_q.setRPY(0,0,0.0); dAMap1.setRotation(dAMap1_q); //ar_marker/19 (to create dummyAbstractMap1)
//dAMap1_q.setRPY(-3.136677,-0.004168,0.000386); dAMap1.setRotation(dAMap1_q);
  AMap_q.setRPY(0,0,0); AMap.setRotation(AMap_q);
  
  //variables for abstractMap frame
  double AMapyaw, AMappitch, AMaproll,AMapx,AMapy,AMapz;
  tf::Vector3 AMapv;

  //variables for dummyAbstractMap1 frame
  double dAMap1yaw, dAMap1pitch, dAMap1roll,dAMap1x,dAMap1y,dAMap1z,dAmap1_recentTime;
  tf::Vector3 dAMap1v;
  double dummyAbstractMap1Weight=1;


  while(nh.ok())
    {
      if(echoListener.frameExists("ar_marker/14"))
      {
          try
      	  {
        	echoListener.lookupTransform("odom", "ar_marker/14", ros::Time(), echo_transform);
        	std::cout.setf(std::ios::fixed,std::ios::floatfield);

		//broadcasting dummyAbstractMap1
                broadcaster.sendTransform(tf::StampedTransform(dAMap1,ros::Time::now(),"ar_marker/14","dummyAbstractMap1")); 
           }
          catch(tf::TransformException& ex){/*std::cout << "Failure at "<< ros::Time::now() << std::endl;*/ }
      }

      

      double currentTime=ros::Time::now().toSec();


      //listening odom->dummyAbstractMap1: record pose and time to be used for abstract_map updating
      //If odom->dummyAbstractMap1 not detected, time (dAmap1_recentTime)=-1
      try
      {
         echoListener.lookupTransform("odom","dummyAbstractMap1",ros::Time(),echo_transform);
         dAmap1_recentTime=echo_transform.stamp_.toSec();
         echo_transform.getBasis().getRPY(dAMap1roll, dAMap1pitch, dAMap1yaw);
         dAMap1v = echo_transform.getOrigin();
         dAMap1x=dAMap1v.getX();dAMap1y=dAMap1v.getY();dAMap1z=dAMap1v.getZ();
      }
      catch(tf::TransformException& ex){dAmap1_recentTime=-1;}
            



      //updating and broadcasting odom->abstract_map 
      try
      {
         //get current odom->abstract_map
         echoListener.lookupTransform("odom","abstract_map",ros::Time(),echo_transform);
         echo_transform.getBasis().getRPY(AMaproll, AMappitch, AMapyaw);
         AMapv = echo_transform.getOrigin();
         AMapx=AMapv.getX();AMapy=AMapv.getY();AMapz=AMapv.getZ();
         
         //start updating odom->abstract_map
         double weightAggregate=1;
              //check whether there is any recent odom->dummyAbstractMap1
         if(dAmap1_recentTime!=1 && (currentTime-dAmap1_recentTime)<1)
         {
            weightAggregate+=dummyAbstractMap1Weight;
            AMapx+=dAMap1x;AMapy+=dAMap1y;AMapz+=dAMap1z;
            
            /*
            if(AMaproll<0)AMaproll=PI2+AMaproll;
            //if(AMappitch<0)AMappitch=PI2+AMappitch;
            //if(AMapyaw<0)AMapyaw=PI2+AMapyaw;
            if(dAMap1roll<0)dAMap1roll=PI2+dAMap1roll;
            //if(dAMap1pitch<0)dAMap1pitch=PI2+dAMap1pitch;
            //if(dAMap1yaw<0)dAMap1yaw=PI2+dAMap1yaw;
            */
            
            AMaproll=atan2(sin(AMaproll),cos(AMaproll));
            AMappitch=atan2(sin(AMappitch),cos(AMappitch));
            AMapyaw=atan2(sin(AMapyaw),cos(AMapyaw));
            dAMap1roll=atan2(sin(dAMap1roll),cos(dAMap1roll));
            dAMap1pitch=atan2(sin(dAMap1pitch),cos(dAMap1pitch));
            dAMap1yaw=atan2(sin(dAMap1yaw),cos(dAMap1yaw));
            
            
            
            AMaproll+=dAMap1roll;AMappitch+=dAMap1pitch;AMapyaw+=dAMap1yaw;
         }
 

         //broadcast odom->abstract_map
         //AMap.setOrigin(tf::Vector3(AMapx/weightAggregate,AMapy/weightAggregate,AMapz/weightAggregate));
         //AMap_q.setRPY(AMaproll/weightAggregate,AMappitch/weightAggregate,AMapyaw/weightAggregate); 
         //AMap.setRotation(AMap_q);
         
         
         
         
         //###ONLY USED TEMPORARILY 
         AMap.setOrigin(tf::Vector3(AMapx/weightAggregate,AMapy/weightAggregate,AMapz/weightAggregate));
         AMap_q.setRPY(dAMap1roll,dAMap1pitch,dAMap1yaw); 
         AMap.setRotation(AMap_q);
         
         
         broadcaster.sendTransform(tf::StampedTransform(AMap,ros::Time::now(),"odom","abstract_map"));
      }
      catch(tf::TransformException& ex)
      { 
         broadcaster.sendTransform(tf::StampedTransform(AMap,ros::Time::now(),"odom","abstract_map"));
      }
 
      rate.sleep();
    }

  return 0;
};
