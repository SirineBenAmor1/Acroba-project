#!/usr/bin/env python
import json
import rospy
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Ouvrir le fichier JSON en mode lecture
with open('/home/sirineba/acroba_workshop_ws/src/robot_universal/winding.json', 'r') as fichier_json:
    donnees = json.load(fichier_json)

# Accéder aux données
stator_center = donnees['Stator']['center']
stator_diameter = donnees['Stator']['diameter']
tooth_thickness = donnees['Tooth']['thickness']
tooth_width = donnees['Tooth']['width']
tooth_internal_diameter = donnees['Tooth']['diameters']['internal']
tooth_external_diameter = donnees['Tooth']['diameters']['external']

turns_number = donnees['Turns']['number']
turns_clockwise = donnees['Turns']['clockwise']

# Afficher les données
print("Stator Center:", stator_center)
print("Stator Diameter:", stator_diameter)
print("Tooth Thickness:", tooth_thickness)
print("Tooth Width:", tooth_width)
print("Tooth Internal Diameter:", tooth_internal_diameter)
print("Tooth External Diameter:", tooth_external_diameter)
print("Turns Number:", turns_number)
print("Turns Clockwise:", turns_clockwise)

w=0
t=0
r=0.03
x1 = -tooth_thickness / 2 - t 
y1 = (tooth_external_diameter - tooth_internal_diameter) / 2
z1 = tooth_width / 2 + w 

x3 = tooth_thickness / 2 + t + 0.5 
y3 = y1
z3 = z1+r

x2 = x3
y2 = y3
z2 = z1


x4 = x1
y4 = y2
z4 = z3 + 0.02

# Coordonnées des points en 3D
# Coordonnées des points en 3D
points = [(x1, y1, z1), (x2, y2, z2), (x3, y3, z3), (x4, y4, z4)]

# Création de la figure et de l'axe 3D
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# Tracé des points en 3D
for i, point in enumerate(points):
    ax.scatter(*point, c='r', marker='o')

    # Ajouter une annotation pour chaque point
    ax.text(point[0], point[1], point[2], f'Point {i+1}', color='b', fontsize=8, ha='right')

# Étiquettes des axes
ax.set_xlabel('Axe X')
ax.set_ylabel('Axe Y')
ax.set_zlabel('Axe Z')

# Affichage du tracé
plt.show()




def add_marker():
    rospy.init_node('marker_publisher', anonymous=True)
    marker_pub = rospy.Publisher('visualization_marker', Marker, queue_size=10)
    rate = rospy.Rate(1)  # Adjust the rate as needed

    while not rospy.is_shutdown():
        marker = Marker()
        marker.header.frame_id = "base_link"  # Change frame_id as per your needs
        marker.type = Marker.POINTS
        marker.action = Marker.ADD
        marker.pose.orientation.w = 1.0
        marker.scale.x = 0.2  # Adjust the scale as needed
        marker.scale.y = 0.2
        marker.color.a = 1.0
        marker.color.r = 1.0
        marker.points = [Point(x=x1, y=y1, z=z1),  # Add your specific coordinates
                         Point(x=x2, y=y2, z=z2),
                         Point(x=x3, y=y3, z=z3),
                         Point(x=x4, y=y4, z=z4)]  # Add more points if needed

        marker_pub.publish(marker)
        rate.sleep()

if __name__ == '__main__':
    try:
        add_marker()
    except rospy.ROSInterruptException:
        pass
