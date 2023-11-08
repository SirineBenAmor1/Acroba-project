#!/usr/bin/env python3.9

import rospy
import tf

def broadcaster():
    rospy.init_node('tf_broadcaster')
    br = tf.TransformBroadcaster()

    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        br.sendTransform((x, y, z), tf.transformations.quaternion_from_euler(roll, pitch, yaw), rospy.Time.now(), "target_frame", "source_frame")
        rate.sleep()

if __name__ == '__main__':
    try:
        broadcaster()
    except rospy.ROSInterruptException:
        pass
