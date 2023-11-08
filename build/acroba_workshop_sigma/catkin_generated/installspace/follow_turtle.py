#!/usr/bin/env python3.9
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
from math import atan2, sqrt

class FollowTurtle:
    def __init__(self, follower_name, target_name):
        self.follower_name = follower_name
        self.target_name = target_name
        self.target_pose = None
        self.vel_pub = rospy.Publisher(f"/{self.follower_name}/cmd_vel", Twist, queue_size=10)
        rospy.Subscriber(f"/{self.target_name}/pose", Pose, self.target_pose_callback)

    def target_pose_callback(self, data):
        self.target_pose = data

    def follow_target(self):
        rate = rospy.Rate(10)
        while not rospy.is_shutdown():
            if self.target_pose is not None:
                target_x = self.target_pose.x
                target_y = self.target_pose.y
                angle_to_target = atan2(target_y, target_x)
                distance_to_target = sqrt(target_x**2 + target_y**2)

                twist = Twist()
                twist.linear.x = 2.0 * distance_to_target
                twist.angular.z = 4.0 * angle_to_target
                self.vel_pub.publish(twist)

            rate.sleep()

if __name__ == '__main__':
    rospy.init_node('follow_turtle')
    follower_name = rospy.get_param("~follower_name", "turtle1")
    target_name = rospy.get_param("~target_name", "turtle2")
    follower = FollowTurtle(follower_name, target_name)
    try:
        follower.follow_target()
    except rospy.ROSInterruptException:
        pass
