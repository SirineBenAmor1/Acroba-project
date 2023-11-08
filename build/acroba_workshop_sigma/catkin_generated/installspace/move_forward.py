#!/usr/bin/env python3.9
import rospy
from geometry_msgs.msg import Twist
def move_turtle(speed, distance, is_forward=True):
    # Initialize a ROS node
    rospy.init_node('move_turtle_node', anonymous=True)
    # Create a publisher for the /turtle1/cmd_vel topic
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    # Create a Twist message to control the turtle's movement
    cmd_vel = Twist()
    # Set linear and angular velocities based on speed and direction
    if is_forward:
        cmd_vel.linear.x = abs(speed)
        cmd_vel.angular.z = abs(speed2)
               
    else:
        cmd_vel.linear.x = -abs(speed)
    # Calculate the time required to travel the specified distance
    time_to_run = distance / speed
    # Record the current time
    start_time = rospy.get_time()
    # Keep publishing the Twist message until the desired time has passed
    while (rospy.get_time() - start_time) < time_to_run:
        pub.publish(cmd_vel)
    # Stop the turtle by publishing a Twist message with zero velocities
    pub.publish(Twist())

if __name__ == '__main__':
    try:
        # Input parameters: speed (m/s), distance (m), and direction (True for forward, False for backward)
        speed2=0.9
        speed = 2.0  # Adjust the speed as needed
        distance = 120.0  # Adjust the distance as needed
        is_forward = True  # True for forward, False for backward

        move_turtle(speed, distance, is_forward)
    except rospy.ROSInterruptException:
        pass

