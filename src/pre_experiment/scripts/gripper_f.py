#!/usr/bin/env python
# -*- coding: utf-8 -*-
# Copyright (C) 2016 Toyota Motor Corporation


import math
import os
import sys
import csv
import actionlib
import numpy as np
from actionlib_msgs.msg import GoalStatus
from geometry_msgs.msg import WrenchStamped
import rospy
from sensor_msgs.msg import JointState
from tmc_control_msgs.msg import (
    GripperApplyEffortAction,
    GripperApplyEffortGoal
)
from tmc_manipulation_msgs.srv import (
    SafeJointChange,
    SafeJointChangeRequest
)


import RunAve_fil
import mk_fig
from std_msgs.msg import Bool
from hsr_handing.msg import grasp_key


_CONNECTION_TIMEOUT = 10.0


# Calcurate running_average
_AVERAGE_RANGE = 200
_x_elements=[0]*_AVERAGE_RANGE
_y_elements=[0]*_AVERAGE_RANGE
_z_elements=[0]*_AVERAGE_RANGE
def running_average(elements,row_deta):

    for i in range(_AVERAGE_RANGE-1):
        elements[i] = elements[i+1]

    elements[_AVERAGE_RANGE-1] = row_deta

    return round(sum(elements)/_AVERAGE_RANGE,3)

class ForceSensorCapture(object):
    def __init__(self):
        self._force_data_x = 0.0
        self._force_data_y = 0.0
        self._force_data_z = 0.0
        #ft_sensor_topic = '/hsrb/wrist_wrench/raw'
        ft_sensor_topic = '/hsrb/wrist_wrench/compensated'
        self._wrist_wrench_sub = rospy.Subscriber(ft_sensor_topic, WrenchStamped, self.__ft_sensor_cb)
        try:
            rospy.wait_for_message(ft_sensor_topic, WrenchStamped,timeout=_CONNECTION_TIMEOUT)
        except Exception as e:
            rospy.logerr(e)
            sys.exit(1)
    #CallBack関数
    def __ft_sensor_cb(self, data):
        self._force_data_x = data.wrench.force.x
        self._force_data_y = data.wrench.force.y
        self._force_data_z = data.wrench.force.z

    def get_current_force(self):
        return [self._force_data_x, self._force_data_y, self._force_data_z]



class JointController(object):
    #"""Control arm and gripper"""
    def __init__(self):
        joint_control_service = '/safe_pose_changer/change_joint'
        grasp_action = '/hsrb/gripper_controller/grasp'
        self._joint_control_client = rospy.ServiceProxy(joint_control_service, SafeJointChange)
        self._gripper_control_client = actionlib.SimpleActionClient(grasp_action, GripperApplyEffortAction)
        # Wait for connection
        try:
            self._joint_control_client.wait_for_service(timeout=_CONNECTION_TIMEOUT)
            if not self._gripper_control_client.wait_for_server(rospy.Duration(_CONNECTION_TIMEOUT)):
                raise Exception(grasp_action + ' does not exist')
        except Exception as e:
            rospy.logerr(e)
            sys.exit(1)
    def move_to_joint_positions(self, goal_joint_states):
        """Joint position control"""
        try:
            req = SafeJointChangeRequest(goal_joint_states)
            res = self._joint_control_client(req)
        except rospy.ServiceException as e:
            rospy.logerr(e)
            return False
        return res.success
    def grasp(self, effort):
        """Gripper torque control"""
        goal = GripperApplyEffortGoal()
        goal.effort = effort
        # Send message to the action server
        if (self._gripper_control_client.send_goal_and_wait(goal) ==GoalStatus.SUCCEEDED):
            return True
        else:
            return False
       

class Sub_handing_end_flag():
    def __init__(self):       
        rospy.Subscriber("flag_topic", Bool, self.callback)
	self.input = None
        self.flag = None
    def callback(self, data):
        self.flag = data.data
       



def gripper_operating(data):

    loop = 0
    loop2 = 0
    grasp = False
    Released = False
    Got_all_data = False
    Calculated = False


    key = data.grasp_key 

    if key == 'g':
        grasp = True
    while Got_all_data == False and grasp == True:
        loop += 1        
     
        pre_force_list = force_sensor_capture.get_current_force()
        x_run_ave = running_average(_x_elements,pre_force_list[0])
            #y_run_ave = running_average(_y_elements,pre_force_list[1])
            #z_run_ave = running_average(_z_elements,pre_force_list[2])
            #data_list = [pre_force_list[0],x_run_ave,pre_force_list[1],y_run_ave,pre_force_list[2],z_run_ave]
        data_list = [pre_force_list[0],pre_force_list[1],pre_force_list[2]]

            #save data
        f= open(path, 'a')
        writer = csv.writer(f,lineterminator='\n')
        writer.writerow(data_list)
        f.close

            #grasp
        if (loop == 500):
            joint_controller.grasp(-0.05)


        rospy.sleep(0.002)
            

           #--------------Handing-----------------#

	    
            #release
            #if ((x_run_ave*0.7>pre_force_list[0])and(loop>500)and(Released==False)and(sub_flag.flag==True)):
	if ((x_run_ave*0.4>pre_force_list[0])and(loop>500)and(Released==False)):
            joint_controller.grasp(0.0)
            joint_controller.move_to_joint_positions(release)
	    joint_controller.move_to_joint_positions(initial_position)
            Released = True

        if Released == True:
            loop2 += 1    
            #データ書き込み終了
        if loop2 > 1000:
            print('raw data ----- END')
            Got_all_data = True
                
            break


    #移動平均の計算と書き込み
    loop = 0
    while Got_all_data == True and Calculated == False:   
	loop += 1           
        with open(path) as f:
            reader = csv.reader(f)
   	    data = [row for row in reader]
        data = [[float(v) for v in row] for row in data]
        print('raw data shape = {}'.format(np.shape(data)))
        raw_data_length = np.shape(data)[0]

	print('Calculating Running Average...')
        ave = RunAve_fil.running_average_filter(7,data,raw_data_length) 
        for i in range(100): 		
            ave = RunAve_fil.running_average_filter(7,ave, raw_data_length)
            

        #f= open(path2, 'w')
	#writer = csv.writer(f,lineterminator='\n')
        #writer.writerow(['x','x_ave','y','y_ave','z','z_ave'])
        #f.close
        if (np.shape(ave)[0]==raw_data_length):
            f= open(path2, 'a')
            writer = csv.writer(f,lineterminator='\n')
            for i in range(np.shape(ave)[0]):
                data_list = [data[i][0],ave[i][0],data[i][1],ave[i][1], data[i][2],ave[i][2]]
                writer.writerow(data_list)
            f.close
            print('Average ------ END')
	if loop==1:
            Calculated = True
            
            print('All END')
            
            grasp = False
            rospy.sleep(1)
            #mk_fig.mk_figures()
            break

	

if __name__ == '__main__':
    try: 

        rospy.init_node('gripper_node')
        #spin_rate = rospy.Rate(1)
        # 各クラスのインスタンス化
        force_sensor_capture = ForceSensorCapture()
        joint_controller = JointController()
    
        #sub_flag = Sub_handing_end_flag()
        initial_position = JointState()
        initial_position.name.extend(['arm_lift_joint', 'arm_flex_joint',
                                  'arm_roll_joint', 'wrist_flex_joint',
                                  'wrist_roll_joint', 'hand_motor_joint'])
        initial_position.position.extend([0.0, 0.0, 0.0, -1.57,
                                      0.0, 1.2])
   
        release = JointState()
        release.name.extend(['hand_motor_joint'])
        release.position.extend([1.1])

        #csvファイルの準備
        path = '/home/naoyamada/catkin_ws3/src/pre_experiment/scripts/csv/f/raw_data.csv'
        path2 = '/home/naoyamada/catkin_ws3/src/pre_experiment/scripts/csv/f/ave_data.csv'
	os.remove(path)
        f= open(path, 'w')
        f.close
	os.remove(path2)
        f= open(path2, 'w')
        f.close
	#server2 = rospy.Service('input_topic4grasp', input4grasp, gripper_operating)

        while not rospy.is_shutdown():
	    rospy.Subscriber("input_topic4grasp", grasp_key, gripper_operating)
            rospy.spin()


    except rospy.ROSException as wait_for_msg_exception:
        rospy.logerr(wait_for_msg_exception)



