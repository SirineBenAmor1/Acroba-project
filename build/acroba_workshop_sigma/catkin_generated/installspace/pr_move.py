#!/usr/bin/env python3
import rospy
import actionlib
import acroba_workshop_sigma.msg
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose


class MoveAction:
    # create messages that are used to publish feedback/result
    feedback = acroba_workshop_sigma.msg.MoveFeedback()
    result = acroba_workshop_sigma.msg.MoveResult()

    def __init__(self, name):
        self.vel_msg = Twist()
        self._action_name = name
        self._as = actionlib.SimpleActionServer(
            self._action_name,
            acroba_workshop_sigma.msg.MoveAction,
            execute_cb=self.execute_cb,
            auto_start=False,
        )
        self._as.start()
        rospy.loginfo("Server Ready...")

    # Callback function to feedback the pose value received
    def pose_feedback_callback(self, data):
        self.feedback.pose = data
        self._as.publish_feedback(self.feedback)

    def execute_cb(self, goal):

        # Create publisher
        velocity_publisher = rospy.Publisher("/"+goal.turtle_name+"/cmd_vel", Twist, queue_size=1)

        # Create pose subscriber
        rospy.Subscriber("/"+goal.turtle_name+"/pose", Pose, self.pose_feedback_callback)

        if (goal.speed <= 0 or goal.distance <= 0 or type(goal.isForward) != bool):
            self._as.set_aborted()
            if goal.speed <= 0:
                rospy.loginfo("Aborted: speed value should be > 0")
            if goal.distance <= 0:
                rospy.loginfo("Aborted: distance value should be > 0")
            if type(goal.isForward) != bool:
                rospy.loginfo("Aborted: isForward value should be True or False")

        else:
            success = True
            rospy.loginfo("Let's move your robot")
            
            # Checking if the movement is forward or backward
            if goal.isForward:
                self.vel_msg.linear.x = abs(goal.speed)
            else:
                self.vel_msg.linear.x = -abs(goal.speed)
            # Setting the current time for distance calculus
            current_distance = 0
            t0 = rospy.Time.now().to_sec()         
            # Loop to move the turtle in an specified distance
            while(current_distance < goal.distance):
                # Publish the velocity
                velocity_publisher.publish(self.vel_msg)
                # Takes actual time to velocity calculus
                t1 = rospy.Time.now().to_sec()
                # Calculates distancePoseStamped
                current_distance = goal.speed*(t1-t0)
            # After the loop, stops the robot
            self.vel_msg.linear.x = 0
            # Force the robot to stop
            velocity_publisher.publish(self.vel_msg)
            rospy.sleep(0.5)

            # This block is needed at the end to send success and result data
            if success:
                rospy.loginfo("%s: Succeeded" % self._action_name)
                self._as.set_succeeded(self.result)

if __name__ == "__main__":
    rospy.init_node("Move")
    server = MoveAction(rospy.get_name())
    rospy.spin()
