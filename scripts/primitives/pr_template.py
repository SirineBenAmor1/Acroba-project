#! /usr/bin/env python3

"""
Global description of the primitive
"""

import rospy
import actionlib

# other needed imports
import ACROBA_Workshop_SIGMA.msg


def function(arg_1, arg_2):
    """
    Function that does... with :
    - arg_1 : argument description
    - arg_2 : argument description
    """
    # code exemple
    output = arg_1 + arg_2
    ...
    return output


class PrimitiveName:
    """
    Class for PrimitiveName primitive.
    """

    # create messages that are used to publish feedback/result
    feedback_ = ACROBA_Workshop_SIGMA.msg.PrimitiveNameFeedback()
    result_ = ACROBA_Workshop_SIGMA.msg.PrimitiveNameResult()

    def __init__(self, name):
        self._action_name = name
        self._as = actionlib.SimpleActionServer(
            self._action_name,
            ACROBA_Workshop_SIGMA.msg.PrimitiveNameAction,
            execute_cb=self.execute_cb,
            auto_start=False,
        )

        # Instance Attribute example
        self.attr_1 = ...

        # if needed define the publisher and subscriber here
        self.pub = rospy.Publisher("ros_topic", msg, queue_size=1)
        self.sub = rospy.Subscriber("ros_topic", msg, self.sub_callback)

        self._as.start()
        rospy.loginfo("Server Ready...")

    def my_callback(self, msg):
        """
        Callback for ... topic
        """
        # code
        ...

    def pub_feedback_callback(self, data):
        """
        Callback to publish feedback message ... topic
        """
        self.feedback_.msg = data
        self._as.publish_feedback(self.feedback)

    def class_method(self, input1, input2):
        """
        Method that does... with :
        - input1 : input description
        - input2 : input description
        """
        # code exemple
        output = self.attr_1 + input1 + input2
        ...
        return output

    def execute_cb(self, goal):
        """
        Callback function.
        """
        if (
            # test if given goals are in the required format / not missing
            # Example
            goal.goal1 is int
            or not goal.goal2
        ):
            self._as.set_aborted()
            if goal.goal1 is int:
                rospy.loginfo("Aborted: goal 1 is given in a wrong format")
            if not goal.goal2:
                rospy.loginfo("Aborted: info missing : empty goal 2")
        else:
            success = True
            rospy.loginfo("Goals valid, let's do something")
            # this block is needed to handle cancelation during processing
            if self._as.is_preempt_requested():
                rospy.loginfo("%s: Preempted" % self._action_name)
                self._as.set_preempted()
                success = False
                ...
            # code exemple
            self.result_.res1 = goal.goal1 + goal.goal2

            # If a result or intermediate result needs to be publish
            self.pub.publish(...)

            # This block is needed at the end to send success and result data
            if success:
                rospy.loginfo("%s: Succeeded" % self._action_name)
                self._as.set_succeeded(self._result)


if __name__ == "__main__":
    rospy.init_node("PrimitiveName")
    server = PrimitiveName(rospy.get_name())
    rospy.spin()
