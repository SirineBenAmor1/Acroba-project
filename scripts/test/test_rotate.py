#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import actionlib
import acroba_workshop_sigma.msg


def main():
    rospy.init_node("test_Rotate")

    client = actionlib.SimpleActionClient(
        "rotate", acroba_workshop_sigma.msg.rotateAction
    )
    client.wait_for_server()
    goal = acroba_workshop_sigma.msg.rotateGoal()
    rate = rospy.Rate(60)
    goal.speed = 0.9
    goal.distance = 158
    goal.angle = 5
    #while not rospy.is_shutdown():
    goal.turtle_name = "turtle1"
    goal.isForward = True
    client.send_goal(goal)
    client.wait_for_result()
    rate.sleep()


if __name__ == "__main__":
    main()
