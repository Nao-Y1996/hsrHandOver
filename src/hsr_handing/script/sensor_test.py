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

import matplotlib 
matplotlib.use('Agg') 
from matplotlib import pyplot as plt
import RunAve_fil
#import fuzzy
from std_msgs.msg import Bool
from hsr_handing.msg import grasp_key
from hsr_handing.srv import fuzzy
from hsr_handing.msg import pose_info
from hsrb_interface import geometry
from hsrb_interface import Robot
robot = Robot()
omni_base = robot.try_get('omni_base')
whole_body = robot.try_get('whole_body')
gripper = robot.get('gripper')

_CONNECTION_TIMEOUT = 10.0
# Move timeout[s]
_MOVE_TIMEOUT=60.0
# Grasp force[N]
_GRASP_FORCE=0.2
# TF name of the bottle
_BOTTLE_TF='ar_marker/150'
# TF name of the gripper
_HAND_TF='hand_palm_link'

# Posture that 0.02[m] front and rotate -1.57 around z-axis of the bottle maker
bottle_to_hand = geometry.pose(z=-0.02, ek=-1.57)
# Posture to move the hand 0.03[m] up
hand_up = geometry.pose(x=0.02)
# Posture to move the hand 0.5[m] back
hand_back = geometry.pose(z=-0.35)



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
    #CallBack??????
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
    
class parameter():
    def __init__(self):       
        
	self.handing_count = 0
        self.old_fy = 0
        self.old_fz = 0

class Sub_Pose_estimation():
    def __init__(self):
        rospy.Subscriber("pose_topic", pose_info, self.callback)
	self.pose = 3
    def callback(self, data):
        self.pose = data.pose_identification_number
'''
def Fuzzy_Client():

    rospy.wait_for_service('Fuzzzy_Topic')
    service = rospy.ServiceProxy('Fuzzy_Topic', fuzzy)

    num = 1
    response = service(num)

    print('x={},y={},ek={}'.format(response.x,response.y,response.ek))
'''
  

def gripper_operating(data):

    loop = 0
    loop2 = 0
    grasp = False
    Released = False
    Got_all_data = False
    Calculated = False
    saved=False
    
    key = data.grasp_key 
    #count_param = count_parameter()
    if key == 'g':
        grasp = True

        raw = []
        ave = []

        x = []
        x_ave = []
        y =[]
        y_ave = []
        z = []
        z_ave = []

	os.remove(sensor_path)
        f= open(sensor_path, 'w')
        f.close
	'''
	os.remove(force_path)
        f= open(force_path, 'w')
        f.close
	'''
    while Got_all_data == False and grasp == True:
        loop += 1  



        pre_force_list = force_sensor_capture.get_current_force()
        x_run_ave = running_average(_x_elements,pre_force_list[0])
        y_run_ave = running_average(_y_elements,pre_force_list[1])
        z_run_ave = running_average(_z_elements,pre_force_list[2])
        data_list = [pre_force_list[0],x_run_ave,pre_force_list[1],y_run_ave,pre_force_list[2],z_run_ave]
        #data_list = [pre_force_list[0],pre_force_list[1],pre_force_list[2]]
        rospy.sleep(0.002)
        #save data
        f= open(sensor_path, 'a')
        writer = csv.writer(f,lineterminator='\n')
        writer.writerow(data_list)
        f.close

        #grasp
        if (loop == 500):
            # 
            #omni_base.go_abs(0.0, 0.0, 1.5, 300.0)
            #whole_body.move_to_neutral()
            # Look at the hand after the transition
	    #rospy.sleep (0.5)
            #whole_body.looking_hand_constraint = False
            # Move the hand to front of the bottle
	    #whole_body.move_to_joint_positions({'head_tilt_joint': 0.15})
            #whole_body.move_end_effector_pose(bottle_to_hand, _BOTTLE_TF)
            # Specify the force to grasp
            #gripper.apply_force(_GRASP_FORCE)
            # Move the hand up on end effector coordinate
            #whole_body.move_end_effector_pose(hand_up, _HAND_TF)
            # Move the hand back on end effector coordinate
            #whole_body.move_end_effector_pose(hand_back, _HAND_TF)
            # Transit to initial posture
            #omni_base.go_abs(0.0, 0.0, 0.0, 300.0)
	    #whole_body.move_to_neutral()
            #rospy.sleep(0.5)
	    #whole_body.move_to_joint_positions({'head_tilt_joint': 0.15})
            joint_controller.grasp(-0.05)


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
            #???????????????????????????
        if loop2 > 1000:
            Got_all_data = True     
	    #omni_base.go_abs(0.0, 0.0, 0.0, 300.0)#?????????????????????
	    #rospy.sleep(2)
	    #whole_body.move_to_joint_positions({'head_tilt_joint': 0.15})
            break


        #????????????????????????????????????
    loop = 0

    while Got_all_data == True and Calculated == False:   
	loop += 1    
	param.handing_count +=1       
        with open(sensor_path) as f:
            reader = csv.reader(f)
   	    raw = [row for row in reader]
	#raw??????????????????
        raw = [[float(v) for v in row] for row in raw]
        raw_data_length = np.shape(raw)[0]
	#ave??????????????????
        ave = RunAve_fil.running_average_filter(7,raw,raw_data_length) 
        for i in range(4): 		
            ave = RunAve_fil.running_average_filter(7,ave, raw_data_length)

        #x????????????
        x_range = raw_data_length
        #print('data range = {}'.format(x_range))
        d_range = x_range-1
        #y?????????
        for i in range(x_range):
            x.append(raw[i][0])
            x_ave.append(ave[i][0])
            y.append(raw[i][1])
            y_ave.append(ave[i][1])
            z.append(raw[i][2])
            z_ave.append(ave[i][2])

	#--------ralease time?????????------------
        dx = []        
        for i in range(d_range):
            dx.append(x[i+1]-x[i])
        t_release = np.argmin(dx)
        #print('Tr = {}'.format(t_release))
        #--------------------------------------

        #-----------------grasp time ?????????-----------------------
        t_grasp_x, t_grasp_y, t_grasp_z = 0,0,0
        #???????????????????????????????????????
        count = 0
        for i in range(t_release):
            if (x_ave[t_release-30-i]-x_ave[t_release-30-(i+1)])*(x_ave[t_release-30-(i+1)]-x_ave[t_release-30-(i+2)])<=0 :
                t_grasp_x = t_release-(i+1)
                count+=1
                if count==1:
                    break
            else:
                continue
        count=0
        for i in range(t_release):
            if (y_ave[t_release-30-i]-y_ave[t_release-30-(i+1)])*(y_ave[t_release-30-(i+1)]-y_ave[t_release-30-(i+2)])<=0 :
                t_grasp_y = t_release-(i+1)
                count+=1
                if count==1:
                    break
            else:
                continue
        count=0
        for i in range(t_release):
            if (z_ave[t_release-30-i]-z_ave[t_release-30-(i+1)])*(z_ave[t_release-30-(i+1)]-z_ave[t_release-30-(i+2)])<=0 :
                t_grasp_z = t_release-(i+1)
                count+=1
                if count== 1:
                    break
            else:
                continue
        #print('(Tg_y,Tg_z) = {} {}'.format(t_grasp_y , t_grasp_z))
        #---------------------------------------------------------


        fy = y[t_release] - y[t_grasp_y]
	fz = z[t_release] - z[t_grasp_z]
        print('   ')
	#print('---------Fuzzy----------')
        #print('(fy, fz) = {}, {}'.format(round(fy,3),round(fz,3)))

        #pose_num = sub_pose.pose
        pose_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/csv/pose.csv'

        with open(pose_path) as f:
            reader = csv.reader(f)
            pose_list = [row for row in reader]
        pose_num = int(float(pose_list[0][0]))
        print(pose_num)

        if pose_num == 0:
            force_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/csv/force_yz/force_data_sit.csv'
	    print('??????????????????---sitting')
            pose_fig_path = 'sit'
        if pose_num == 1:
            force_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/csv/force_yz/force_data_stand.csv'
	    print('??????????????????---standing')
            pose_fig_path = 'stand'
        if pose_num == 2:
            force_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/csv/force_yz/force_data_cross.csv'
	    print('??????????????????---cross')
            pose_fig_path = 'cross'
        if pose_num == 3:
            force_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/csv/force_yz/force_data_unknown.csv'
	    print('??????????????????---unknown')
            pose_fig_path = 'unknown'
        

	Calculated = True
	#?????????f?????????
        with open(force_path) as f:
            reader = csv.reader(f)
   	    force = [row for row in reader]
        row = np.shape(force)[0]
        old_fy = float(force[row-1][0])#?????????????????????
        old_fz = float(force[row-1][1])

        #----------fuzzy???????????????---------------
        response = service(fy,fz,old_fy,old_fz)
	#---------------------------------------

	#??????????????????f???????????????
	f= open(force_path, 'a')
        writer = csv.writer(f,lineterminator='\n')
        force_data_list = [fy,fz]
        writer.writerow(force_data_list)
        f.close
        print('next--> x,y,ek={},{},{}'.format(round(response.x,3),round(response.y,3),round(math.degrees(response.ek),3)))
  
#------------------------------------------------------------------------------#
	#param.old_fy = fy 
	#param.old_fz = fz 

        
        #x?????????
        axis_x = np.arange(0,x_range,1)  
        axis_d = np.arange(0,d_range,1)
        

        #=================raw==================
        fig = plt.figure(figsize=(15, 15))
        #?????????x??????,??????????????????
        plt.subplot(3,1,1)
        plt.plot(axis_x, x,color='b')
        plt.plot(axis_x,x_ave,color='r')
        plt.plot(axis_x[t_release], x[t_release],marker = '.',color = 'g',markersize = 20)
        #plt.plot(axis_x[t_grasp_x], x[t_grasp_x],marker = '.',color = 'g',markersize = 20)
        plt.xlim(0, x_range)
        plt.title('X')
        #?????????y??????,??????????????????
        plt.subplot(3,1,2)
        plt.plot(axis_x, y,color='b')
        plt.plot(axis_x,y_ave,color='r')
        plt.plot(axis_x[t_release], y[t_release],marker = '.',color = 'g',markersize = 20)
        plt.plot(axis_x[t_grasp_y], y[t_grasp_y],marker = '.',color = 'g',markersize = 20)
        plt.xlim(0, x_range)
        plt.title('Y')
        #?????????z??????,??????????????????
        plt.subplot(3,1,3)
        plt.plot(axis_x, z,color='b')
        plt.plot(axis_x,z_ave,color='r')
        plt.plot(axis_x[t_release], z[t_release],marker = '.',color = 'g',markersize = 20)
        plt.plot(axis_x[t_grasp_z], z[t_grasp_z],marker = '.',color = 'g',markersize = 20)
        plt.xlim(0, x_range)
        plt.title('Z')
        #??????
        figure_name = '/raw'+str(param.handing_count)+'.jpeg'
        saving_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/test/figure/'+ pose_fig_path + figure_name
        plt.tight_layout()
        title = 'wrist sensor data'
        fig.suptitle(title, fontsize=50)
        plt.subplots_adjust(top=0.9)
        plt.savefig(saving_path)
        plt.close()
        #=========================================================
        

        #==================raw_cut==================
        fig = plt.figure(figsize=(10, 15))
        #?????????x??????,??????????????????
        plt.subplot(3,1,1)
        plt.plot(axis_x, x,color='b')
        plt.plot(axis_x,x_ave,color='r')
        plt.plot(axis_x[t_release], x[t_release],marker = '.',color = 'g',markersize = 20)
        #plt.plot(axis_x[t_grasp_x], x[t_grasp_x],marker = '.',color = 'g',markersize = 20)
        plt.xlim(t_release-300, t_release+100)
        plt.title('X')
        #?????????y??????,??????????????????
        plt.subplot(3,1,2)
        plt.plot(axis_x, y,color='b')
        plt.plot(axis_x,y_ave,color='r')
        plt.plot(axis_x[t_release], y[t_release],marker = '.',color = 'g',markersize = 20)
        plt.plot(axis_x[t_grasp_y], y[t_grasp_y],marker = '.',color = 'g',markersize = 20)
        plt.xlim(t_release-300, t_release+100)
        plt.title('Y')
        #?????????z??????,??????????????????
        plt.subplot(3,1,3)
        plt.plot(axis_x, z,color='b')
        plt.plot(axis_x,z_ave,color='r')
        plt.plot(axis_x[t_release], z[t_release],marker = '.',color = 'g',markersize = 20)
        plt.plot(axis_x[t_grasp_z], z[t_grasp_z],marker = '.',color = 'g',markersize = 20)
        plt.xlim(t_release-300, t_release+100)
        plt.title('Z')
        #??????
        figure_name = '/raw_cut'+str(param.handing_count)+'.jpeg'
        saving_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/test/figure/'+pose_fig_path + figure_name
        plt.tight_layout()
        title = 'wrist sensor data'
        fig.suptitle(title, fontsize=30)
        plt.subplots_adjust(top=0.9)
        plt.savefig(saving_path)
        plt.close()
        #=========================================================

        del data_list[:]
        del raw[:]
        del ave[:]

        del x[:]
        del x_ave[:]
        del y[:]
        del y_ave[:]
        del z[:]
        del z_ave[:]


        if loop==1:
            
            saved=True
            grasp = False
	    #print('maked figure')
            #print('saved all data')
            rospy.sleep(1)
            break

        
        
if __name__ == '__main__':
    try: 

        #rospy.init_node('gripper_node')
        #spin_rate = rospy.Rate(1)
        # ????????????????????????????????????
        force_sensor_capture = ForceSensorCapture()
        joint_controller = JointController()
        param = parameter()
	#sub_pose = Sub_Pose_estimation()
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

        sensor_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/test/csv/sensor_data.csv'
	#force_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/csv/force_data.csv'
	#os.remove(sensor_path)
        #f= open(sensor_path, 'w')
        #f.close
	#os.remove(force_path)
        #f= open(force_path, 'w')
        #f.close

        #rospy.wait_for_service('Fuzzzy_Topic')
        #service = rospy.ServiceProxy('Fuzzy_Topic', fuzzy)
	

        while not rospy.is_shutdown():
	    rospy.Subscriber("input_topic4grasp", grasp_key, gripper_operating)
            rospy.spin()


    except rospy.ROSException as wait_for_msg_exception:
        rospy.logerr(wait_for_msg_exception)



