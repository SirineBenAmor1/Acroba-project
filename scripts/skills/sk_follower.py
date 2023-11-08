#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import math
import time

def follower_skill():
    rospy.init_node('sk_follower', anonymous=True)
    pub = rospy.Publisher('/turtle2/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)
    
    # Temps de départ du follower (en secondes)
    follower_start_time = time.time()
    
    while not rospy.is_shutdown():
        twist = Twist()
        
        # Temps écoulé depuis le départ du follower
        elapsed_time = time.time() - follower_start_time
        
        if elapsed_time >= 1.5:
            # Une fois que le follower a attendu 1 seconde, effectuer la translation
            twist.linear.x = 1.5  # Translation (déplacement en avant)
            
            # Rotation après la translation (exemples : 90 degrés par seconde, dans le sens horaire)
            twist.angular.z = math.radians(90)  # Convertir degrés en radians
        else:
            twist.linear.x = 0.0  # Attente
        
        pub.publish(twist)
        rate.sleep()

if __name__ == '__main__':
    try:
        follower_skill()
    except rospy.ROSInterruptException:
        pass
