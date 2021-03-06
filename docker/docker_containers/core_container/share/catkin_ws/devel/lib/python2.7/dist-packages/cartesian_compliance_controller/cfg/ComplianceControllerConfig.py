## *********************************************************
##
## File autogenerated for the cartesian_compliance_controller package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'Linear stiffness along x-axis [N/m]', 'max': 5000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trans_x', 'edit_method': '', 'default': 500.0, 'level': 0, 'min': 100.0, 'type': 'double'}, {'srcline': 291, 'description': 'Linear stiffness along y-axis [N/m]', 'max': 5000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trans_y', 'edit_method': '', 'default': 500.0, 'level': 0, 'min': 100.0, 'type': 'double'}, {'srcline': 291, 'description': 'Linear stiffness along z-axis [N/m]', 'max': 5000.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'trans_z', 'edit_method': '', 'default': 500.0, 'level': 0, 'min': 100.0, 'type': 'double'}, {'srcline': 291, 'description': 'Rotary stiffness along x-axis [Nm/rad]', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'rot_x', 'edit_method': '', 'default': 50.0, 'level': 0, 'min': 5.0, 'type': 'double'}, {'srcline': 291, 'description': 'Rotary stiffness along y-axis [Nm/rad]', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'rot_y', 'edit_method': '', 'default': 50.0, 'level': 0, 'min': 5.0, 'type': 'double'}, {'srcline': 291, 'description': 'Rotary stiffness along z-axis [Nm/rad]', 'max': 200.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'rot_z', 'edit_method': '', 'default': 50.0, 'level': 0, 'min': 5.0, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

