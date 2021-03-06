#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import numpy as np
#import matplotlib.pyplot as plt
import csv
import math
import time
from hsr_handing.msg import pose_info

#===============================NNの定義=======================================
Classification_Num = 3
n_in = 8
n_mid = 50
n_out = Classification_Num
wb_width = 0.1
eta = 0.01
#epoch = 5000
#batch_size = 8
#interval = 200

# -- 各層の継承元 --
class BaseLayer:
    def __init__(self, n_upper, n):
        self.w = wb_width * np.random.randn(n_upper, n)  # 重み（行列）
        self.b = wb_width * np.random.randn(n)  # バイアス（ベクトル）

        self.h_w = np.zeros(( n_upper, n)) + 1e-8
        self.h_b = np.zeros(n) + 1e-8
        
    def update(self, eta):      
        self.h_w += self.grad_w * self.grad_w
        self.w -= eta / np.sqrt(self.h_w) * self.grad_w
        
        self.h_b += self.grad_b * self.grad_b
        self.b -= eta / np.sqrt(self.h_b) * self.grad_b

# -- 中間層 --
class MiddleLayer(BaseLayer):
    def forward(self, x):
        self.x = x
        self.u = np.dot(x, self.w) + self.b
        self.y = np.where(self.u <= 0, 0, self.u)  # ReLU
    
    def backward(self, grad_y):
        delta = grad_y * np.where(self.u <= 0, 0, 1)  # ReLUの微分

        self.grad_w = np.dot(self.x.T, delta)
        self.grad_b = np.sum(delta, axis=0)
        
        self.grad_x = np.dot(delta, self.w.T) 

# -- 出力層 --
class OutputLayer(BaseLayer):     
    def forward(self, x):
        self.x = x
        u = np.dot(x, self.w) + self.b
        self.y = np.exp(u)/np.sum(np.exp(u), axis=1, keepdims=True)  # ソフトマックス関数

    def backward(self, t):
        delta = self.y - t
        
        self.grad_w = np.dot(self.x.T, delta)
        self.grad_b = np.sum(delta, axis=0)
        
        self.grad_x = np.dot(delta, self.w.T) 
        
# -- ドロップアプト --
class Dropout:
    def __init__(self, dropout_ratio):
        self.dropout_ratio = dropout_ratio  # ニューロンを無効にする確率

    def forward(self, x, is_train):  # is_train: 学習時はTrue
        if is_train:
            rand = np.random.rand(*x.shape)  # 入力と同じ形状の乱数の行列
            self.dropout = np.where(rand > self.dropout_ratio, 1, 0)  # 1:有効 0:無効
            self.y = x * self.dropout  # ニューロンをランダムに無効化
        else:
            self.y = (1-self.dropout_ratio)*x  # テスト時は出力を下げる
        
    def backward(self, grad_y):
        self.grad_x = grad_y * self.dropout  # 無効なニューロンでは逆伝播しない

# -- 順伝播 --
def fp(x, is_train):
    ml_1.forward(x)
    dp_1.forward(ml_1.y, is_train)
    ml_2.forward(dp_1.y)
    dp_2.forward(ml_2.y, is_train)
    ol.forward(dp_2.y)
"""
# -- 逆伝播 --
def bp(t):
    ol.backward(t)
    dp_2.backward(ol.grad_x)
    ml_2.backward(dp_2.grad_x)
    dp_1.backward(ml_2.grad_x)
    ml_1.backward(dp_1.grad_x)

# -- 重みとバイアスの更新 --
def uppdate_wb():
    ml_1.update(eta)
    ml_2.update(eta)
    ol.update(eta)

# -- 誤差を計算 --
def get_error(t, batch_size):
    return -np.sum(t * np.log(ol.y + 1e-7)) / batch_size  # 交差エントロピー誤差
"""
#===================================================================================


def str2float(path):
    with open(path) as f:
        reader = csv.reader(f)
        data = [row for row in reader]
    for i in range(np.shape(data)[0]):
        for j in range(np.shape(data)[1]):
            data[i][j] = float(data[i][j])
    return data


class parameter():
    def __init__(self):
        self.old_raw = []


def get_len(joint1,joint2):#関節間の距離
    leng = math.sqrt(pow(joint1[0]-joint2[0],2)+pow(joint1[1]-joint2[1],2))
    return leng
	
def get_theta(joint1,joint2):#joint1をx軸が通る時のx軸からの角度(0~180°)を返す
    theta = math.degrees(math.acos((joint2[0]-joint1[0])/get_len(joint1,joint2)))
    return theta
	
def get_angle(joint1,joint2,joint3):#関節のなす角度
    angle1 = get_theta(joint1,joint2)
    angle2 = get_theta(joint2,joint3)
    angle = abs(angle1+angle2)
    if angle>180:
        angle = 360- angle
    return angle


if __name__ == '__main__':
    rospy.init_node('NN')
    # -- 各層の初期化 --
    ml_1 = MiddleLayer(n_in, n_mid)
    dp_1 = Dropout(0.5)
    ml_2 = MiddleLayer(n_mid, n_mid)
    dp_2 = Dropout(0.5)
    ol = OutputLayer(n_mid, n_out)

    param = parameter()

    #学習済みの重みを読み込む
    w_ml_1 = '/home/naoyamada/CW/catkin_ws3/src/hsr_handing/script/csv/NN-result/w_ml_1.csv'
    b_ml_1 = '/home/naoyamada/CW/catkin_ws3/src/hsr_handing/script/csv/NN-result/b_ml_1.csv'
    w_ml_2 = '/home/naoyamada/CW/catkin_ws3/src/hsr_handing/script/csv/NN-result/w_ml_2.csv'
    b_ml_2 = '/home/naoyamada/CW/catkin_ws3/src/hsr_handing/script/csv/NN-result/b_ml_2.csv'
    w_ol = '/home/naoyamada/CW/catkin_ws3/src/hsr_handing/script/csv/NN-result/w_ol.csv'
    b_ol = '/home/naoyamada/CW/catkin_ws3/src/hsr_handing/script/csv/NN-result/b_ol.csv'

    ml_1.w = str2float(w_ml_1)
    ml_1.b = str2float(b_ml_1)
    ml_2.w = str2float(w_ml_2)
    ml_2.b = str2float(b_ml_2)
    ol.w = str2float(w_ol)
    ol.b = str2float(b_ol)

    fname = '/home/naoyamada/CW/catkin_ws3/src/hsr_handing/script/csv/rt-pose.csv'
    pub = rospy.Publisher('pose_topic', pose_info, queue_size=10)
    while not rospy.is_shutdown():
	#MySQLで送られてきたデータで作成されたcsvを読み込む
	with open(fname) as f:
            reader = csv.reader(f)
            for raw in reader:
                data = raw
        raw_str = data
	time.sleep(0.05)
	#数値データに直す
	raw = []
	for i in range(np.shape(raw_str)[0]):
	    raw.append(float(raw_str[i]))

        
        #25*3のデータに整形(25関節, 各関節にx,y,reliability)
	joint = np.reshape(raw,(25,3))
        
	#NN用のデータを作る
	data_list = []
        reference = get_len(joint[8],joint[1])
	if reference != 0:
            data_list.append(get_len(joint[10],joint[1])/reference)
            data_list.append(get_len(joint[13],joint[1])/reference)
            data_list.append(get_len(joint[11],joint[1])/reference)
            data_list.append(get_len(joint[14],joint[1])/reference)
            data_list.append(get_angle(joint[9],joint[10],joint[11]))
            data_list.append(get_angle(joint[12],joint[13],joint[14]))
	    data_list.append(get_angle(joint[13],joint[8],joint[1]))
            data_list.append(get_angle(joint[10],joint[8],joint[1]))
        pose_identification_number=3
        input_data = data_list
        #print(np.shape(input_data)[0])
        #input_data =np.array([1.3817321174320327,1.292639796564482,1.501231281098757,1.6162643965280097,143.71372658738989,67.6646214304568,86.5803317872084,96.32557620063466])
	    
        if np.shape(input_data)[0]==8:
            fp(input_data,False)
	    index_result = np.argmax(ol.y,axis=1)
	    probability = round(float(ol.y[0][index_result])*100,3)
	    pose_identification_number=3
	    if index_result==0 and probability>=50:
	        print('座り---{}%'.format(probability))
	        pose_identification_number = index_result
	    if index_result==1 and probability>=50:
	        print('立ち---{}%'.format(probability))
	        pose_identification_number = index_result
	    if index_result==2 and probability>=50:
	        print('あぐら---{}%'.format(probability))  
	        pose_identification_number = index_result 
	    if probability<50 :
	        pose_identification_number = 3

        
        pub.publish(pose_identification_number)
    
        
