#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
#from hsr_handing.srv import input4handing
#/home/kubotalab/catkin_ws3/src/key_controll/srv/straight_key.srvfrom key_controll.msg import key
from key_controll.srv import back_key
from key_controll.srv import straight_key
from key_controll.srv import left_key
from key_controll.srv import right_key


if __name__=='__main__':
    rospy.init_node('input')   



    rospy.wait_for_service('straight_topic')
    rospy.wait_for_service('back_topic')
    rospy.wait_for_service('left_topic')
    rospy.wait_for_service('right_topic')
    straight_client = rospy.ServiceProxy('straight_topic', straight_key)
    back_client = rospy.ServiceProxy('back_topic', back_key)
    right_client = rospy.ServiceProxy('right_topic', right_key)
    left_client = rospy.ServiceProxy('left_topic', left_key)

    input_key = None

    while not rospy.is_shutdown():	

        try:
            
            name = raw_input('Enter the  command --->> ')

            if name == 'w' :
                key = name
                response = straight_client(key)
                print(response)
            if name == 'a' :
                key = name
                response = left_client(key)
                print(response)
            if name == 's' :
                key = name
                response = back_client(key)
                print(response)
            if name == 'd' :
                key = name
                response = right_client(key)
                print(response)

        except NameError:
            continue 

