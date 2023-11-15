#!/usr/bin/env python3.9

import rospy
from geometry_msgs.msg import Twist
from actionlib import SimpleActionClient
from acroba_workshop_sigma.msg import LeadAction, LeadGoal
import math
import time

def leader_skill():
    rospy.init_node('sk_leader', anonymous=True)
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)
    
    # Temps de départ du leader (en secondes)
    leader_start_time = time.time()

    # Créer un client Actionlib pour l'action Lead
    lead_client = SimpleActionClient('/lead_action', LeadAction)
    lead_client.wait_for_server()

    while not rospy.is_shutdown():
        twist = Twist()
        
        # Temps écoulé depuis le départ du leader
        elapsed_time = time.time() - leader_start_time
        
        if elapsed_time >= 1.0:
            # Une fois que le leader a attendu 1 seconde, effectuer l'action Lead
            lead_goal = LeadGoal(duration=3.0)  # Durée du lead
            lead_client.send_goal(lead_goal)
            lead_client.wait_for_result()
            
            # Rotation après la translation (exemples : 90 degrés par seconde, dans le sens horaire)
            twist.angular.z = math.radians(90)  # Convertir degrés en radians
        else:
            twist.linear.x = 0.0  # Attente
        
        pub.publish(twist)
        rate.sleep()

if __name__ == '__main__':
    try:
        leader_skill()
    except rospy.ROSInterruptException:
        pass
