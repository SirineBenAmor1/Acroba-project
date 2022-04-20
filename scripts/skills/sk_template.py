#!/usr/bin/env python3

"""
Description of the skill.
"""

import rospy
import actionlib
import ACROBA_Workshop_SIGMA.msg


class SkillName:
    """
    Class for SkillName skill
    """

    # create messages that are used to publish feedback/result
    feedback_ = ACROBA_Workshop_SIGMA.msg.SkillNameFeedback()
    result_ = ACROBA_Workshop_SIGMA.msg.SkillNameResult()

    # create the different client
    client_1 = actionlib.SimpleActionClient(
        "Sever_1_name", ACROBA_Workshop_SIGMA.msg.Server1Action
    )
    client_2 = actionlib.SimpleActionClient(
        "Sever_2_name", ACROBA_Workshop_SIGMA.msg.Server2Action
    )

    # create goal message
    goal_server_1 = ACROBA_Workshop_SIGMA.msg.Server1Goal()
    goal_server_2 = ACROBA_Workshop_SIGMA.msg.Server2Goal()

    def __init__(self, name):
        # wait for server to be ready
        self.client_1.wait_for_server()
        self.client_2.wait_for_server()

        # init skill's server
        self._action_name = name
        self._as = actionlib.SimpleActionServer(
            self._action_name,
            ACROBA_Workshop_SIGMA.msg.SkillNameAction,
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

        # define first goals
        self.goal_server_1.goal_1 = goal.goal_1
        self.goal_server_1.goal_2 = goal.goal_2

        # send first goal
        self.client_1.send_goal(self.goal_server_1)

        # wait for response
        while self.client_1.get_result() is None:
            print("doing action 1")
            if self._as.is_preempt_requested() or rospy.is_shutdown():
                rospy.loginfo("%s: Preempted" % self._action_name)
                self.client_1.cancel_goal()
                self._as.set_preempted()
                success = False
                break
            rate.sleep()

        if self.client_1.get_state() == 4:  # if goal aborted
            success = False
            rospy.loginfo("%s: Aborted" % self._action_name)
            self._as.set_aborted()

        # continu only if previous one success
        if success:
            rospy.loginfo("action 1 done")
            result_server_1 = self.client_1.get_result()
            # define next goal with previous result
            self.goal_server_2.goal_1 = result_server_1.result_1
            self.goal_server_2.goal_2 = result_server_1.result_2

            # or define with initial goal component if needed
            self.goal_server_2.goal_3 = goal.goal_3

            # send goal
            self.client_2.send_goal(self.goal_server_2)

            # wait for response
            while self.client_2.get_result() is None:
                print("doing action 2")
                if self._as.is_preempt_requested() or rospy.is_shutdown():
                    rospy.loginfo("%s: Preempted" % self._action_name)
                    self.client_2.cancel_goal()
                    self._as.set_preempted()
                    success = False
                    break
                rate.sleep()

            if self.client_2.get_state() == 4:  # if goal aborted
                success = False
                rospy.loginfo("%s: Aborted" % self._action_name)
                self._as.set_aborted()

        if success:
            result_server_2 = self.client_2.get_result()
            self.result_.result_1 = result_server_2.result_1
            rospy.loginfo("%s: Succeeded" % self._action_name)
            self._as.set_succeeded(self.result_)


if __name__ == "__main__":
    rospy.init_node("SkillName")
    server = SkillName(rospy.get_name())
    rospy.spin()
