#!/usr/bin/env python3
import rospy
import actionlib
import acroba_workshop_sigma.msg

class PatrolSkillAction:
    """
    Class for the PatrolSkill skill.
    """

    # Create messages that are used to publish feedback/result
    feedback = acroba_workshop_sigma.msg.PatrolSkillFeedback()
    result = acroba_workshop_sigma.msg.PatrolSkillResult()

    # Create the action clients for the Move and rotate actions
    client_move = actionlib.SimpleActionClient("Move", acroba_workshop_sigma.msg.MoveAction)
    client_rotate = actionlib.SimpleActionClient("rotate", acroba_workshop_sigma.msg.rotateAction)

    # Create goal messages for the Move and rotate actions
    goal_move = acroba_workshop_sigma.msg.MoveGoal()
    goal_rotate = acroba_workshop_sigma.msg.rotateGoal()

    def __init__(self, name):
        # Wait for the servers to be ready
        self.client_move.wait_for_server()
        self.client_rotate.wait_for_server()

        # Initialize the skill's server
        self._action_name = name
        self._as = actionlib.SimpleActionServer(
            self._action_name,
            acroba_workshop_sigma.msg.PatrolSkillAction,
            execute_cb=self.execute_cb,
            auto_start=False,
        )
        self._as.start()
        rospy.loginfo("Server ready")

    def execute_cb(self, goal):
        """
        Callback function.
        """
        rate = rospy.Rate(60)
        success = True

        # Define the goal messages for Move and rotate actions
        self.goal_move.turtle_name = goal.turtle_name
        self.goal_move.speed = goal.move_speed
        self.goal_rotate.turtle_name = goal.turtle_name
        self.goal_rotate.speed = goal.move_speed  # You can adjust the speed as needed

        for _ in range(goal.repetitions):
            # Send the Move goal (forward movement)
            self.goal_move.distance = goal.move_distance
            self.goal_move.isForward = True
            self.client_move.send_goal(self.goal_move)
            self.client_move.wait_for_result()
            feedback = acroba_workshop_sigma.msg.PatrolSkillFeedback()
            feedback.pose = self.client_move.get_result()
            self._as.publish_feedback(feedback)

            if self._as.is_preempt_requested() or rospy.is_shutdown():
                rospy.loginfo("%s: Preempted" % self._action_name)
                self.client_move.cancel_goal()
                self.client_rotate.cancel_goal()
                success = False
                break

            # Send the rotate goal (turn right)
            self.goal_rotate.distance = goal.rotate_angle
            self.goal_rotate.isForward = True  # Adjust as needed
            self.client_rotate.send_goal(self.goal_rotate)
            self.client_rotate.wait_for_result()
            feedback = acroba_workshop_sigma.msg.PatrolSkillFeedback()
            feedback.pose = self.client_rotate.get_result()
            self._as.publish_feedback(feedback)

            if self._as.is_preempt_requested() or rospy.is_shutdown():
                rospy.loginfo("%s: Preempted" % self._action_name)
                self.client_move.cancel_goal()
                self.client_rotate.cancel_goal()
                success = False
                break

        if success:
            rospy.loginfo("Patrol completed")
            self.result.success = True
            self._as.set_succeeded(self.result)

if __name__ == "__main__":
    rospy.init_node("PatrolSkill")
    server = PatrolSkillAction(rospy.get_name())
    rospy.spin()

