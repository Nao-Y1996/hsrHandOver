#!/usr/bin/env python

#from ImagePass.srv import *
import rospy
#import tf
from hsrb_interface import Robot
from hsrb_interface import geometry
import math

robot = Robot()
#omni_base = robot.try_get('omni_base')
#tts = robot.try_get('default_tts')
whole_body = robot.try_get('whole_body')
#gripper = robot.try_get('gripper')
collision_world=robot.try_get('global_collision_world')
#br=tf.TransformBroadcaster()



if __name__ == '__main__':
    #rospy.init_node('python_services')
    collision_world.remove_all()
    whole_body.collision_world=collision_world

    #kitchin-table
    collision_world.add_box(x=0.8, y=0.7, z=0.5, pose=geometry.pose(x=-0.3, y=0.35, z=0.28), frame_id='abstract_map')


    #desk
    collision_world.add_box(x=0.6, y=0.7, z=1.0, pose=geometry.pose(x=-1.5, y=0.35, z=-0.2), frame_id='abstract_map')



    #wall
    collision_world.add_box(x=2.5, y=2.5, z=0.08, pose=geometry.pose(x=-1.25, y=-0.5, z=0.55), frame_id='abstract_map')



    #wall2
    collision_world.add_box(x=0.08, y=2.5, z=4, pose=geometry.pose(x=0.15, y=-0.5, z=-1.55), frame_id='abstract_map')

    #table2
    collision_world.add_box(x=0.65, y=0.68, z=0.45, pose=geometry.pose(x=-1.2, y=0.30, z=-2.05), frame_id='abstract_map')

    whole_body.collision_world=collision_world



"""    
    #parameters of the table
    #table
    collision_world.add_box(x=0.8, y=0.04, z=0.5, pose=geometry.pose(x=0.33, y=-0.06, z=0.25), frame_id='ar_marker/14')
    #leg
    leg1 = collision_world.add_cylinder(radius=0.03, length=0.67, pose=geometry.pose(x=-0.03, y=0.30, z=0.02, ei=math.radians(90)), frame_id='ar_marker/14')
    #leg 2
    leg2 = collision_world.add_cylinder(radius=0.03, length=0.67, pose=geometry.pose(x=0.72, y=0.30, z=0.02, ei=math.radians(90)), frame_id='ar_marker/14')
    #leg 3
    leg3 = collision_world.add_cylinder(radius=0.03, length=0.67, pose=geometry.pose(x=0.72, y=0.30, z=0.48, ei=math.radians(90)), frame_id='ar_marker/14')
    #leg4
    leg4 = collision_world.add_cylinder(radius=0.03, length=0.67, pose=geometry.pose(x=-0.03, y=0.30, z=0.48, ei=math.radians(90)), frame_id='ar_marker/14')

    ## end of table stuff
    whole_body.collision_world=collision_world

    ##sehelf collision
    y_table = 0.74
    z_table = -1.73
    y_leg = y_table - 0.16
    z_leg1 =z_table + 0.385
    z_leg2 =z_table - 0.385
    
    #table1_bottom
    collision_world.add_box(x=0.03, y=0.35,z=0.8, pose=geometry.pose(x=-0.6, y=y_table, z=z_table),frame_id="abstract_map")
    #table2
    collision_world.add_box(x=0.03, y=0.35,z=0.8, pose=geometry.pose(x=-0.2, y=y_table, z=z_table),frame_id="abstract_map")
    #table3
    collision_world.add_box(x=0.03, y=0.35,z=0.8, pose=geometry.pose(x=0.15, y=y_table, z=z_table),frame_id="abstract_map")
    #table4_top
    collision_world.add_box(x=0.03, y=0.35,z=0.8, pose=geometry.pose(x=0.5, y=y_table, z=z_table),frame_id="abstract_map")
    #leg1
    collision_world.add_box(x=1.2, y=0.05,z=0.05, pose=geometry.pose(x=-0.1, y=y_leg, z=z_leg1),frame_id="abstract_map")
    #leg2
    collision_world.add_box(x=1.2, y=0.05,z=0.05, pose=geometry.pose(x=-0.1, y=y_leg, z=z_leg2),frame_id="abstract_map")
    

    
    #big_box
    collision_world.add_box(x=1.5, y=0.8,z=0.5, pose=geometry.pose(x=0.0, y=0.5, z=-0.25),frame_id="abstract_map")
    #wall_behind_shelf
    collision_world.add_box(x=1.5, y=0.05,z=2, pose=geometry.pose(x=0.0, y=0.95, z=-1.3),frame_id="abstract_map")
    #wall
    collision_world.add_box(x=1.5, y=1,z=0.05, pose=geometry.pose(x=0.0, y=0.4, z=-2.2),frame_id="abstract_map")


"""

