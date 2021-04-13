#!/usr/bin/env python
# -*- coding: utf-8 -*-
#import hsrb_interface
import rospy
import sys
#from hsrb_interface import geometry
import math
import csv
import numpy as np
import sys
import time

import actionlib
import control_msgs.msg
import controller_manager_msgs.srv
import rospy
import trajectory_msgs.msg

from key_controll.srv import back_key
from key_controll.srv import straight_key
from key_controll.srv import left_key
from key_controll.srv import right_key
from key_controll.srv import back_keyResponse
from key_controll.srv import straight_keyResponse
from key_controll.srv import left_keyResponse
from key_controll.srv import right_keyResponse

# 移動のタイムアウト[s]
_MOVE_TIMEOUT=60.0

# ロボット機能を使うための準備
#robot = hsrb_interface.Robot()
#omni_base = robot.get('omni_base')
#whole_body = robot.get('whole_body')
#gripper = robot.get('gripper')
#tts = robot.get('default_tts')


def back(req):
    
    key = req.back_key 
    goal = control_msgs.msg.FollowJointTrajectoryGoal()
    traj = trajectory_msgs.msg.JointTrajectory()
    traj.joint_names = ["odom_x", "odom_y", "odom_t"]
    p = trajectory_msgs.msg.JointTrajectoryPoint()
    p.positions = [0, 0, 0]
    p.velocities = [0, 0, 0]
    p.time_from_start = rospy.Time(15)
    traj.points = [p]
    goal.trajectory = traj

    # send message to the action server
    cli.send_goal(goal)

    # wait for the action server to complete the order
    cli.wait_for_result()
    action_name = 'back'

    return back_keyResponse(action_name)


def right(req):
    
    key = req.right_key 
    goal = control_msgs.msg.FollowJointTrajectoryGoal()
    traj = trajectory_msgs.msg.JointTrajectory()
    traj.joint_names = ["odom_x", "odom_y", "odom_t"]
    p = trajectory_msgs.msg.JointTrajectoryPoint()
    p.positions = [0, -1, 0]
    p.velocities = [0, 0, 0]
    p.time_from_start = rospy.Time(15)
    traj.points = [p]
    goal.trajectory = traj

    # send message to the action server
    cli.send_goal(goal)

    # wait for the action server to complete the order
    cli.wait_for_result()
    action_name = 'right'

    return right_keyResponse(action_name)


def straight(req):
    
    key = req.straight_key 
    goal = control_msgs.msg.FollowJointTrajectoryGoal()
    traj = trajectory_msgs.msg.JointTrajectory()
    traj.joint_names = ["odom_x", "odom_y", "odom_t"]
    p = trajectory_msgs.msg.JointTrajectoryPoint()
    p.positions = [1, 0, 0]
    p.velocities = [0, 0, 0]
    p.time_from_start = rospy.Time(15)
    traj.points = [p]
    goal.trajectory = traj

    # send message to the action server
    cli.send_goal(goal)
    # wait for the action server to complete the order
    cli.wait_for_result()

    action_name = 'straight'

    return straight_keyResponse(action_name)

def left(req):
    
    key = req.left_key 
    goal = control_msgs.msg.FollowJointTrajectoryGoal()
    traj = trajectory_msgs.msg.JointTrajectory()
    traj.joint_names = ["odom_x", "odom_y", "odom_t"]
    p = trajectory_msgs.msg.JointTrajectoryPoint()
    p.positions = [0, 1, 0]
    p.velocities = [0, 0, 0]
    p.time_from_start = rospy.Time(15)
    traj.points = [p]
    goal.trajectory = traj

    # send message to the action server
    cli.send_goal(goal)

    # wait for the action server to complete the order
    cli.wait_for_result()
    action_name = 'left'

    return left_keyResponse(action_name)





if __name__=='__main__':
    rospy.init_node('controller')
    # initialize action client
    cli = actionlib.SimpleActionClient(
        '/hsrb/omni_base_controller/follow_joint_trajectory',
        control_msgs.msg.FollowJointTrajectoryAction)

    # wait for the action server to establish connection
    cli.wait_for_server()

    # make sure the controller is running
    rospy.wait_for_service('/hsrb/controller_manager/list_controllers')
    list_controllers = rospy.ServiceProxy(
        '/hsrb/controller_manager/list_controllers',
       controller_manager_msgs.srv.ListControllers)
    running = False
    while running is False:
        rospy.sleep(0.1)
        for c in list_controllers().controller:
            if c.name == 'omni_base_controller' and c.state == 'running':
                running = True
    try:
	server1 = rospy.Service('back_topic', back_key, back)
	server2 = rospy.Service('straight_topic', straight_key, straight)
	server3 = rospy.Service('left_topic', left_key, left)
	server4 = rospy.Service('right_topic', right_key, right)
        while not rospy.is_shutdown():
            rospy.spin()
            
    except rospy.ROSException as wait_for_msg_exception:
        rospy.logerr(wait_for_msg_exception)




