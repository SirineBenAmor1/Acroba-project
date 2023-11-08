#!/usr/bin/env python

import rospy
from turtlesim.srv import Spawn
from geometry_msgs.msg import Twist
import sys

def spawn_turtle():
    # Initialize the ROS node
    rospy.init_node('spawn_turtle')

    # Check if enough arguments are provided
    if len(sys.argv) != 6:
        rospy.logerr("Usage: spawn_turtle.py x y theta turtle_name background_r")

    # Parse the command line arguments
    x = float(sys.argv[1])
    y = float(sys.argv[2])
    theta = float(sys.argv[3])
    turtle_name = sys.argv[4]
    background_r = int(sys.argv[5])

    # Create a service proxy to call the 'spawn' service
    rospy.wait_for_service('spawn')
    spawn_turtle = rospy.ServiceProxy('spawn', Spawn)

    # Call the 'spawn' service to spawn a new turtle
    try:
        spawn_turtle(x, y, theta, turtle_name)
        rospy.set_param('/' + turtle_name + '/background_r', background_r)
        rospy.loginfo(f"Spawned turtle: {turtle_name}")
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)

    # Set the turtle's initial position and orientation
    pub = rospy.Publisher('/' + turtle_name + '/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(2)  # 2 Hz

    twist = Twist()
    twist.linear.x = 0.0
    twist.angular.z = 0.0
    pub.publish(twist)

    rospy.spin()

if __name__ == '__main__':
    spawn_turtle()
