#!/usr/bin/env python
# -*- coding: utf-8 -*-

import hsrb_interface
import rospy
import sys
from hsrb_interface import geometry
import math
import csv
import numpy as np
import sys
import time
import pprint

pose_path = '/home/kubotalab/catkin_ws3/src/hsr_handing/script/csv/pose.csv'

def triangle_fuzzy(a,c,b,F):#a<c<bとする
    if a<F and F<=c: #(a,0),(c,1)の式
        return 1/(c-a)*(F-a)
    if c<F and F<b:  #(c,1),(b,0)の式
        return 1/(c-b)*(F-b)
    else:
        return 0

def l_edge_fuzzy(c,b,F):#c<bとする
    if F<=c: 
        return 1
    if c<F and F<b:  #(c,1),(b,0)の式
        return 1/(c-b)*(F-b)
    else:
        return 0

def r_edge_fuzzy(a,c,F):#c<bとする
    if a<F and F<=c: #(a,0),(c,1)の式
        return 1/(c-a)*(F-a)
    if c<F:
        return 1                               
    else:
        return 0


class Fuzzy_inference():
    def __init__(self):
        self.x = 0
        self.y = 0
        self.next_ek = 0


    def fuzzy4position(self, x,old_x):
        
        if old_x==0:
	    old_x = x
        dx = x - old_x

        w1 = l_edge_fuzzy(-1.5,0.0,x) * l_edge_fuzzy(-0.7,0.0,dx)
        w2 = l_edge_fuzzy(-1.5,0.0,x) * triangle_fuzzy(-0.2,0.0,0.2,dx)
        w3 = l_edge_fuzzy(-1.5,0.0,x) * r_edge_fuzzy(0.0,0.7,x)

        w4 = triangle_fuzzy(-0.5,0.0,0.5,x) * l_edge_fuzzy(-0.7,0.0,dx)
        w5 = triangle_fuzzy(-0.5,0.0,0.5,x) * triangle_fuzzy(-0.2,0.0,0.2,dx)
        w6 = triangle_fuzzy(-0.5,0.0,0.5,x) * r_edge_fuzzy(0.0,0.7,dx)

        w7 = r_edge_fuzzy(0.0,1.5,x) * l_edge_fuzzy(-0.7,0.0,dx)
	w8 = r_edge_fuzzy(0.0,1.5,x) * triangle_fuzzy(-0.2,0.0,0.2,dx)
	w9 = r_edge_fuzzy(0.0,1.5,x) * r_edge_fuzzy(0.0,0.7,dx)

        w_vec = np.array([w1,w2,w3,w4,w5,w6,w7,w8,w9])
        #print(w_vec)
        then_vec = np.array([ -0.15, -0.1, -0.05, 0.0,0.0,0.0, 0.05, 0.1, 0.15])
        return np.dot(w_vec, then_vec)/np.sum(w_vec)
   
    def fuzzy4angle(self, x,dx):

        w1 = l_edge_fuzzy(-4.0,-3.0,x) * l_edge_fuzzy(-0.7,0.0,dx)
        w2 = l_edge_fuzzy(-4.0,-3.0,x) * triangle_fuzzy(-0.2,0.0,-0.2,dx)
        w3 = l_edge_fuzzy(-4.0,-3.0,x) * r_edge_fuzzy(-0.7,0.0,dx)

        w4 = r_edge_fuzzy(3.0,4.0,x) * l_edge_fuzzy(-0.7,0.0,dx)
	w5 = r_edge_fuzzy(3.0,4.0,x) * triangle_fuzzy(-0.2,0.0,-0.2,dx)
	w6 = r_edge_fuzzy(3.0,4.0,x) * r_edge_fuzzy(0.0,0.7,dx)

        w_vec = np.array([w1,w2,w3,w4,w5,w6])
        print(w_vec)
        then_vec = np.array([-0.78, -0.52, -0.26, 0.26, 0.52, 0.78])
	ans = np.dot(w_vec, then_vec)/np.sum(w_vec)
        return ans



if __name__=="__main__":
    fuzzy = Fuzzy_inference()
    oldfy=1.929
    fx, fy, ek = -0.66, -2.42, -0.0
    f = 2.508
    theta = 254.732
    F = [-0.66,-2.42]
    old_F = [0.393,1.929]
    old_x,old_y,old_ek = -0.177,-0.209,0.0
    if abs(fy)<=2.0:
        x = old_x + fuzzy.fuzzy4position(F[0],F[0]-old_F[0])
        y = old_y + fuzzy.fuzzy4position(F[1],F[1]-old_F[1])
        next_ek = old_ek + 0
    if abs(fy)>2.0:
        x = old_x + 0
        y = old_y + 0
        next_ek = old_ek + fuzzy.fuzzy4angle(fy,fy-oldfy)
    if np.isnan(x)==True or np.isnan(y)==True or np.isnan(next_ek)==True:
        x,y,next_ek =old_x,old_y,old_ek
    print(x)
    print(y)
    print(next_ek)
