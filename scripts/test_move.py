#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import rospy
import actionlib
import acroba_workshop_sigma.msg


def main():
    rospy.init_node("test_Move")

    client = actionlib.SimpleActionClient(
        "Move", acroba_workshop_sigma.msg.MoveAction
    )
    client.wait_for_server()
    goal = acroba_workshop_sigma.msg.MoveGoal()
    rate = rospy.Rate(60)
    goal.speed = 1
    goal.distance = 2
    #while not rospy.is_shutdown():
    goal.turtle_name = "turtle1"
    goal.isForward = True
    client.send_goal(goal)
    client.wait_for_result()
    rate.sleep()


if __name__ == "__main__":
    main()
