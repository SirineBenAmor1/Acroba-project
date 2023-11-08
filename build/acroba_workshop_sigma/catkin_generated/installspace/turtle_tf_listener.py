#!/usr/bin/env python3.9

import rospy
import tf

def listener():
    rospy.init_node('tf_listener')
    listener = tf.TransformListener()

    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        try:
            (trans, rot) = listener.lookupTransform('/target_frame', '/source_frame', rospy.Time(0))
            # Faites quelque chose avec la transformation (trans) et la rotation (rot) ici
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue

        rate.sleep()

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
