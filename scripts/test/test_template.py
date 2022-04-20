#!/usr/bin/env python3

import rospy
import actionlib
import ACROBA_Workshop_SIGMA.msg

# define global variables if needed
global_msg = msg_type()

# define subscriber callback if needed
def callback(msg):
    global_msg = msg
    # code


def main():
    rospy.init_node("test_name", anonymous=True)

    # define publisher or subscriber if needed
    pub = rospy.Publisher("topic", message, queue_size=1)
    rospy.Subscriber("topice", message, callback)

    # define client
    client = actionlib.SimpleActionClient(
        "Sever_name", skills.msg.ServeNameAction
    )
    client.wait_for_server()

    # create goal message
    goal = ACROBA_Workshop_SIGMA.msg.ServeNameGoal()
    goal.goal_1 = data

    # send goal and wait
    client.send_goal(goal)
    if client.wait_for_result():
        print("Success")


if __name__ == "__main__":
    main()
