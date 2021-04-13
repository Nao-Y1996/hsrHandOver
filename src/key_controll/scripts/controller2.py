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
robot = hsrb_interface.Robot()
omni_base = robot.get('omni_base')
whole_body = robot.get('whole_body')
gripper = robot.get('gripper')
tts = robot.get('default_tts')


def back(req):
    whole_body.move_to_neutral()
    omni_base.go_rel(0,0,-1.57)
    
    #omni_base.go_abs(0,0,-1.57)
    
    whole_body.move_to_joint_positions({'arm_lift_joint': 0.11,'arm_flex_joint': -1.23,'arm_roll_joint': 0.0, 'wrist_flex_joint': -1.57,'wrist_roll_joint': 0.0})



    action_name = 'test'

    return back_keyResponse(action_name)







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




