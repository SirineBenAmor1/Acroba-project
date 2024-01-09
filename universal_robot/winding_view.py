import json
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



