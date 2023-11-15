#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import actionlib
import acroba_workshop_sigma.msg


def main():
    rospy.init_node("test_patrol", anonymous=True)

    client = actionlib.SimpleActionClient(
        "Patrol", acroba_workshop_sigma.msg.PatrolAction
    )
    client.wait_for_server()
    goal = acroba_workshop_sigma.msg.PatrolGoal()
    rate = rospy.Rate(200)

    while not rospy.is_shutdown():
        goal.turtle_name = "turtle1"
        goal.speed_move = 1
        goal.distance = 2
        goal.isForward = True
        goal.speed_rotate = 90
        goal.degrees = 90
        goal.isClockwise = True
        client.send_goal(goal)
        client.wait_for_result()
        rate.sleep()


if __name__ == "__main__":
    main()
