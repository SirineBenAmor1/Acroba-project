#!/usr/bin/env python3
import rospy
import actionlib
import acroba_workshop_sigma.msg

class PatrolSkill:
    """
    Class for the PatrolSkill skill.
    """

    # Create messages that are used to publish feedback/result
    feedback_= acroba_workshop_sigma.msg.PatrolSkillFeedback()
    result_= acroba_workshop_sigma.msg.PatrolSkillResult()

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
        self.goal_move.distance = goal.move_distance
        self.goal_move.isForward = goal.isForward
        
        self.client_move.send_goal(self.goal_move)
   
        while self.client_move.get_result() is None:
            if self._as.is_preempt_requested() or rospy.is_shutdown():
                rospy.loginfo("%s: Preempted" % self._action_name)
                self.client_move.cancel_goal()
                self._as.set_preempted()
                success = False
                break
            rate.sleep()

        if self.client_move.get_state() == 4:  # if goal aborted
            success = False
            rospy.loginfo("%s: Aborted" % self._action_name)
            self._as.set_aborted()
        if success:
            # Send the rotate goal (turn right)
            self.goal_rotate.turtle_name = goal.turtle_name
            self.goal_rotate.isClockwise = goal.isClockwise # Adjust 
            self.goal_rotate.speed = goal.speed_rotate
            self.goal_rotate.degrees = goal.degrees
 
            self.client_rotate.send_goal(self.goal_rotate)

            while self.client_rotate.get_result() is None:
                if self._as.is_preempt_requested() or rospy.is_shutdown():
                    rospy.loginfo("%s: Preempted" % self._action_name)
                    self.client_rotate.cancel_goal()
                    self._as.set_preempted()
                    success = False
                    break
                rate.sleep()

            if self.client_rotate.get_state() == 4:  # if goal aborted
                success = False
                rospy.loginfo("%s: Aborted" % self._action_name)
                self._as.set_aborted()
          
        if success:
            rospy.loginfo("%s: Succeeded" % self._action_name)
            self._as.set_succeeded(self.result_)


if __name__ == "__main__":
    rospy.init_node("PatrolSkill")
    server = PatrolSkill(rospy.get_name())
    rospy.spin()

