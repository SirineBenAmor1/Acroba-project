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
    goal.speed = 1
    goal.degrees = 1.6
    #while not rospy.is_shutdown():
    goal.turtle_name = "turtle1"
    goal.isClockwise = True
    client.send_goal(goal)
    client.wait_for_result()
    rate.sleep()


if __name__ == "__main__":
    main()
