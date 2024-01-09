#!/usr/bin/env python
import rospy
from geometry_msgs.msg import PoseStamped
from moveit_commander import RobotCommander, MoveGroupCommander
from tf.transformations import quaternion_from_euler
import json

# Load data from JSON file
json_file_path = '/home/sirineba/acroba_workshop_ws/src/universal_robot/winding.json'

with open(json_file_path, 'r') as json_file:
    data = json.load(json_file)

# Extract data from JSON
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

# Define your points
x1 = -tooth_thickness / 2 - t + 0.39 +0.16
y1 = (tooth_external_diameter - tooth_internal_diameter) / 2-0.09
z1 = tooth_width / 2 + w + 0.045 + 0.29

x2 = tooth_thickness / 2 + t + 0.30
y2 = y1+0.1
z2 = z1

x3 = x2
y3 = y2
z3 = z2-r+0.097

x4 = x1
y4 = y3-0.1
z4 = z3 + 0.05

points = [ (x2, y2, z2), (x1, y1, z1), (x4, y4, z4), (x3, y3, z3), (x2, y2, z2)]


def main():
    rospy.init_node('robot_move', anonymous=True)

    robot_commander = RobotCommander()
    planning_group_name = "arm"  # Replace with your actual planning group name
    move_group = MoveGroupCommander(planning_group_name)

    rate = rospy.Rate(1)  # Adjust the rate as needed

    for point in points:
        # Move the robot to the point using MoveIt!
        pose_target = PoseStamped()
        pose_target.header.frame_id = "base_link"  # Replace with your reference frame
        pose_target.pose.position.x = point[0]
        pose_target.pose.position.y = point[1]
        pose_target.pose.position.z = point[2]
        
        current_orientation = move_group.get_current_pose().pose.orientation
        pose_target.pose.orientation = current_orientation
        
        # Set the pose target
        move_group.set_pose_target(pose_target)
        
        move_group.set_planning_time(15.0)
        # Plan and execute the trajectory
        plan = move_group.go(wait=True)

        # Clear the pose target for the next iteration
        move_group.clear_pose_targets()
        move_group.stop()
        move_group.clear_pose_targets()

        rate.sleep()

    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

