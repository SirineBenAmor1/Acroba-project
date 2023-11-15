#!/usr/bin/env python3.9

import rospy
from geometry_msgs.msg import Twist
from actionlib import SimpleActionClient
from acroba_workshop_sigma.msg import FollowAction, FollowGoal
import math
import time

class FollowerSkill:
    def __init__(self):
        rospy.init_node('sk_follower', anonymous=True)
        self.pub = rospy.Publisher('/turtle2/cmd_vel', Twist, queue_size=10)
        self.rate = rospy.Rate(10)
        self.follow_client = SimpleActionClient('/follow_action', FollowAction)
        self.follow_client.wait_for_server()

        # Temps de départ du follower (en secondes)
        self.follower_start_time = time.time()

    def follow_action(self):
        follow_goal = FollowGoal(distance=2.0)  # Distance à suivre
        self.follow_client.send_goal(follow_goal)
        self.follow_client.wait_for_result()

    def follower_skill(self):
        while not rospy.is_shutdown():
            twist = Twist()

            # Temps écoulé depuis le départ du follower
            elapsed_time = time.time() - self.follower_start_time

            if elapsed_time >= 1.5:
                # Une fois que le follower a attendu 1 seconde, effectuer l'action Follow
                self.follow_action()

                # Rotation après la translation (exemples : 90 degrés par seconde, dans le sens horaire)
                twist.angular.z = math.radians(90)  # Convertir degrés en radians
            else:
                twist.linear.x = 0.0  # Attente

            self.pub.publish(twist)
            self.rate.sleep()

if __name__ == '__main__':
    try:
        follower = FollowerSkill()
        follower.follower_skill()
    except rospy.ROSInterruptException:
        pass
