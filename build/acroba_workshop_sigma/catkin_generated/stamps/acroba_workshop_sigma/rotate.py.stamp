#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from math import cos, sin, pi

def draw_custom_spiral(angular_speed, rate_decay, duration, initial_theta):
    rospy.init_node('draw_custom_spiral', anonymous=True)
    cmd_vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)  # 10 Hz

    start_time = rospy.Time.now()
    while (rospy.Time.now() - start_time).to_sec() < duration:
        twist = Twist()
        twist.angular.z = angular_speed
        twist.linear.x = 0.2 * angular_speed * (rospy.Time.now() - start_time).to_sec()  # Adjusted linear velocity
        cmd_vel_pub.publish(twist)
        rate.sleep()

    rospy.spin()

if __name__ == '__main__':
    try:
        angular_speed = 1  # Adjusted angular speed for a smaller spin
        rate_decay = 0.98  # Adjust the rate decay
        duration = 15.0  # Adjust the duration
        initial_theta = 45.0  # Adjust the initial angle (theta)

        draw_custom_spiral(angular_speed, rate_decay, duration, initial_theta)
    except rospy.ROSInterruptException:
        pass

