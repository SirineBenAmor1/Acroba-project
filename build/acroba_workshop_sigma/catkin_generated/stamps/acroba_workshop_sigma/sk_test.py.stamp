#!/usr/bin/env python3

import rospy
import actionlib
import acroba_workshop_sigma.msg
from turtlesim.msg import Pose
from acroba_workshop_sigma.msg import rotateActionGoal  # Corrected to use lowercase 'action'
from acroba_workshop_sigma.msg import MoveActionGoal    # Corrected to use lowercase 'action'


class PatrolSkill:
    def __init__(self, name):
        self.client_move = actionlib.SimpleActionClient("Move", acroba_workshop_sigma.msg.MoveAction)
        self.client_rotate = actionlib.SimpleActionClient("rotate", acroba_workshop_sigma.msg.rotateAction)
        self.client_move.wait_for_server()
        self.client_rotate.wait_for_server()
        self._action_name = name
        self._as = actionlib.SimpleActionServer(
            self._action_name,
            acroba_workshop_sigma.msg.PatrolSkillAction,
            execute_cb=self.execute_cb,
            auto_start=False,
        )
        self._as.start()
        self.feedback = acroba_workshop_sigma.msg.PatrolSkillFeedback()

    def pose_feedback_callback(self, data):
        self.feedback.pose = data
        self._as.publish_feedback(self.feedback)

    def execute_cb(self, goal):
        rate = rospy.Rate(60)
        success = True
        for _ in range(goal.repetitions):
            # Send the "move" goal
            move_goal = acroba_workshop_sigma.msg.MoveActionGoal()
            move_goal.turtle_name = goal.turtle_name
            move_goal.distance = goal.move_distance
            move_goal.speed = goal.move_speed
            move_goal.isForward = True 
            self.client_move.send_goal(move_goal)
            self.client_move.wait_for_result()
            
            if self.client_move.get_state() == 4:  # If "move" goal was aborted
                success = False
                rospy.loginfo("%s: Aborted" % self._action_name)
                self._as.set_aborted()
                break

            # Send the "rotate" goal
            rotate_goal = acroba_workshop_sigma.msg.rotateActionGoal()
            rotate_goal.turtle_name = goal.turtle_name
            rotate_goal.angle = goal.rotate_angle
            rotate_goal.isForward = True  # You need to set the direction
            self.client_rotate.send_goal(rotate_goal)
            self.client_rotate.wait_for_result()

            if self.client_rotate.get_state() == 4:  # If "rotate" goal was aborted
                success = False
                rospy.loginfo("%s: Aborted" % self._action_name)
                self._as.set_aborted()
                break

            if not rospy.is_shutdown():
                self._as.publish_feedback(self.feedback)  # Optional feedback

            rate.sleep()

        if success:
            self._as.set_succeeded(acroba_workshop_sigma.msg.PatrolSkillResult())

if __name__ == "__main__":
    rospy.init_node("PatrolSkill")
    server = PatrolSkill(rospy.get_name())
    rospy.spin()

