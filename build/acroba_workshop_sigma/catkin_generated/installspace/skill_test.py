#!/usr/bin/env python3

import rospy
import actionlib
import acroba_workshop_sigma.msg

def main():
    rospy.init_node("skill_test")

    # Create an action client for the "PatrolSkill" action server
    client = actionlib.SimpleActionClient(
        "PatrolSkill", acroba_workshop_sigma.msg.PatrolSkillAction
    )
    client.wait_for_server()

    # Create a goal message to specify the parameters for creating a rectangle
    goal = acroba_workshop_sigma.msg.PatrolSkillGoal()
    goal.turtle_name = "turtle1"
    goal.move_distance = 2.0  # Distance for one side of the rectangle
    goal.move_speed = 1.0    # Speed of movement
    goal.rotate_angle = 90.0   # Angle to turn (90 degrees)
    goal.repetitions = 4     # Four sides for a rectangle

    # Send the goal to the "PatrolSkill" action server
    client.send_goal(goal)

    # Wait for the action to finish
    client.wait_for_result()

if __name__ == "__main__":
    main()

