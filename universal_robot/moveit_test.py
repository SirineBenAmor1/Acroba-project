#!/usr/bin/env python
import rospy
from geometry_msgs.msg import PoseStamped
from moveit_commander import RobotCommander, MoveGroupCommander
from tf.transformations import quaternion_from_euler
from moveit_msgs.msg import RobotTrajectory
from moveit_msgs.srv import GetCartesianPath
import json

# Load data from JSON file
json_file_path = '/home/sirineba/acroba_workshop_ws/src/universal_robot/winding.json'

with open(json_file_path, 'r') as json_file:
    data = json.load(json_file)

# Extract data from JSON
# (Assuming the data extraction is correct)
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
x1 = -tooth_thickness / 2 - t + 0.39
y1 = (tooth_external_diameter - tooth_internal_diameter) / 2
z1 = tooth_width / 2 + w + 0.045 + 0.2
x2 = tooth_thickness / 2 + t + 0.32
y2 = y1
z2 = z1

x3 = x2
y3 = y2
z3 = z2 - r

x4 = x1
y4 = y3
z4 = z3 + 0.09

points = [(x1, y1, z1), (x2, y2, z2), (x3, y3, z3), (x4, y4, z4)]


def compute_cartesian_path(move_group, waypoints):
    # Service to compute Cartesian path
    cartesian_path_service = rospy.ServiceProxy('/compute_cartesian_path', GetCartesianPath)
    rospy.wait_for_service('/compute_cartesian_path')

    # Create request
    req = GetCartesianPathRequest()
    req.header.frame_id = "base_link"  # Replace with your reference frame
    req.header.stamp = rospy.Time.now()
    req.group_name = "arm"  # Replace with your actual planning group name
    req.link_name = move_group.get_end_effector_link()
    req.max_step = 0.01  # Set your desired step size
    req.jump_threshold = 0.0

    # Set waypoints
    req.waypoints = [PoseStamped() for _ in range(len(waypoints))]
    for i, point in enumerate(waypoints):
        req.waypoints[i].pose.position.x = point[0]
        req.waypoints[i].pose.position.y = point[1]
        req.waypoints[i].pose.position.z = point[2]

    # Compute Cartesian path
    resp = cartesian_path_service(req)
    return resp.solution


def main():
    rospy.init_node('robot_move', anonymous=True)

    robot_commander = RobotCommander()
    planning_group_name = "arm"  # Replace with your actual planning group name
    move_group = MoveGroupCommander(planning_group_name)

    rate = rospy.Rate(1)  # Adjust the rate as needed

    for i in range(len(points)):
        # Compute Cartesian path
        trajectory = compute_cartesian_path(move_group, points[:i+1])

        # Execute trajectory
        move_group.execute(trajectory, wait=True)

        rate.sleep()

    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

