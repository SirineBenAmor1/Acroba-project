#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import actionlib
import acroba_workshop_sigma.msg

def main():
    rospy.init_node("test_Move")

    client = actionlib.SimpleActionClient(
        "Move2", acroba_workshop_sigma.msg.MoveAction
    )
    client.wait_for_server()

    rate = rospy.Rate(60)
    
    while not rospy.is_shutdown():
        goal = acroba_workshop_sigma.msg.MoveGoal()
        goal.speed = 0.9
        goal.distance = 2
        goal.turtle_name = "turtle2"
        goal.isForward = True
        client.send_goal(goal)
        client.wait_for_result()
        rate.sleep()

if __name__ == "__main__":
    main()

