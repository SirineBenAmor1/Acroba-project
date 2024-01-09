#!/usr/bin/env python
import rospy
from visualization_msgs.msg import Marker, MarkerArray
from geometry_msgs.msg import Point
import json

# Load data from JSON file
json_file_path = '/home/sirineba/acroba_workshop_ws/src/universal_robot/winding.json'

with open(json_file_path, 'r') as json_file:
    data = json.load(json_file)

# Extract data from JSON
# (Assuming the JSON structure matches your example)
stator_center = data['Stator']['center']
stator_diameter = data['Stator']['diameter']
tooth_thickness = data['Tooth']['thickness']
tooth_width = data['Tooth']['width']
tooth_internal_diameter = data['Tooth']['diameters']['internal']
tooth_external_diameter = data['Tooth']['diameters']['external']

# Other necessary parameters
w = 0
t = 0.1
r = 0.2

def create_marker(x, y, z, id):
    marker = Marker()
    marker.header.frame_id = "base_link"
    marker.type = Marker.SPHERE
    marker.action = Marker.ADD
    marker.pose.orientation.w = 1.0
    marker.scale.x = 0.02
    marker.scale.y = 0.02
    marker.scale.z = 0.02
    marker.color.a = 1.0
    marker.color.r = 1.0
    marker.color.g = 0.0
    marker.color.b = 0.0
    marker.pose.position = Point(x, y, z)
    marker.id = id
    return marker

if __name__ == '__main__':
    rospy.init_node('marker_publisher_node')
    marker_pub = rospy.Publisher('visualization_marker_array', MarkerArray, queue_size=10)

    rate = rospy.Rate(1)  # Adjust the rate as needed

    while not rospy.is_shutdown():
        # Calculate marker positions based on your logic
        x1 = -tooth_thickness / 2 - t + 0.39 +0.16
        y1 = (tooth_external_diameter - tooth_internal_diameter) / 2-0.09
        z1 = tooth_width / 2 + w + 0.045 + 0.29

        x2 = tooth_thickness / 2 + t + 0.32
        y2 = y1+0.1
        z2 = z1

        x3 = x2
        y3 = y2
        z3 = z2-r+0.097

        x4 = x1
        y4 = y3-0.1
        z4 = z3 + 0.05

        # Create all markers
        markers = [
            create_marker(x1, y1, z1, 0),
            create_marker(x2, y2, z2, 1),
            create_marker(x3, y3, z3, 2),
            create_marker(x4, y4, z4, 3)
    
        ]

        # Publish all markers in a single MarkerArray
        marker_array = MarkerArray(markers=markers)
        marker_pub.publish(marker_array)
        rate.sleep()

