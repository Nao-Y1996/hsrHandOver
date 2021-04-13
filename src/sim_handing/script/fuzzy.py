#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import csv
import numpy as np
#import rospy
from matplotlib import pyplot as plt
import cv2
import time


path2 = '/home/naoyamada/catkin_ws3/src/hsr_handing/script/csv/force_data.csv'
with open(path2) as f:
    reader = csv.reader(f)
    data = [row for row in reader]
data = [[float(v) for v in row] for row in data]
force = np.reshape(data,[2]))

