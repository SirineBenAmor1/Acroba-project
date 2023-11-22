#!/usr/bin/env python3
import rospy
import actionlib
from acroba_workshop_sigma.msg import PatrolSkillAction, PatrolSkillFeedback, PatrolSkillResult
from std_msgs.msg import String
import time

class PatrolSkill:
    def __init__(self, name):
        self._action_name = name
        self._as = actionlib.SimpleActionServer(
            self._action_name,
            PatrolSkillAction,
            execute_cb=self.execute_cb,
            auto_start=False,
        )
        self._as.start()
        rospy.loginfo("Server ready")
        # Create a publisher for the pr_move and pr_rotate primitives
        self.pub_primitive = rospy.Publisher("/primitive_command", String, queue_size=10)

    def execute_cb(self, goal):
        rate = rospy.Rate(1)  # Adjust the rate as needed

        # Create feedback and result objects
        feedback = PatrolSkillFeedback()
        result = PatrolSkillResult()

        # The dimensions of the rectangle (change as needed)
        side_length = goal.side_length
        rotation_angle = 90  # Rectangle corners are at 90-degree angles

        # Move and rotate to draw the rectangle
        for _ in range(4):
            # Move forward to draw a side of the rectangle
            self.pub_primitive.publish("Move " + str(side_length))

            # Provide feedback to the client
            feedback.status = f"Drawing side {feedback.side_drawn + 1} of the rectangle"
            feedback.side_drawn += 1
            self._as.publish_feedback(feedback)

            if self._as.is_preempt_requested():
                rospy.loginfo("%s: Preempted" % self._action_name)
                self._as.set_preempted()
                return

            # Rotate to the right to prepare for the next side
            self.pub_primitive.publish("rotate " + str(rotation_angle))

            rate.sleep()

        # Set the result
        result.message = "Rectangle drawn successfully."
        self._as.set_succeeded(result)

if __name__ == "__main__":
    rospy.init_node("PatrolSkill")
    server = PatrolSkill(rospy.get_name())
    rospy.spin()

