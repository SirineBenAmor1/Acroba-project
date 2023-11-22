#!/usr/bin/env python3

import rospy
import actionlib
import acroba_workshop_sigma.msg

def main():
    rospy.init_node("skill_test", anonymous=True)

    # Create an action client for the "PatrolSkill" action server
    client = actionlib.SimpleActionClient(
        "PatrolSkill", acroba_workshop_sigma.msg.PatrolSkillAction
    )
    client.wait_for_server()
    goal = acroba_workshop_sigma.msg.PatrolSkillGoal()
    rate = rospy.Rate(200)
    # Create a goal message to specify the parameters for creating a rectangle

    while not rospy.is_shutdown():
        goal.turtle_name = "turtle1"
        goal.move_speed = 1
        goal.move_distance = 2
        goal.isForward = True
        goal.speed_rotate = 1
        goal.degrees = 1.62
        goal.isClockwise = True
        client.send_goal(goal)
        client.wait_for_result()
        rate.sleep()


if __name__ == "__main__":
    main()

