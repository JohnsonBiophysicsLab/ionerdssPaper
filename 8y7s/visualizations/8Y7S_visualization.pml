# PyMOL script for coarse-grained structure visualization
# Generated for PDB: 8Y7S

# Load original structure
load /Users/yueying/Workspace/ionerdss/workspace_8Y7S_test1/1/8y7s_dir/structures/downloaded/8y7s-assembly1.cif, original
hide everything, original
show cartoon, original
spectrum chain, original
set cartoon_transparency, 0.7, original

# Load coarse-grained structure
load /Users/yueying/Workspace/ionerdss/workspace_8Y7S_test1/1/8y7s_dir/visualizations/8Y7S_coarse_grained.cif, coarse_grained
hide everything, coarse_grained
show spheres, name COM
show spheres, name INT
set sphere_scale, 1.0
color red, name COM
color blue, name INT

# Create pseudoatoms for COMs and interfaces
pseudoatom com_A, pos=[-34.339, 24.679, 53.314], color=red, label=A
pseudoatom com_B, pos=[-30.535, -12.090, 71.740], color=red, label=B
pseudoatom com_E, pos=[-6.333, 14.933, 30.687], color=red, label=E
pseudoatom com_F, pos=[4.566, -13.369, 59.113], color=red, label=F

# Create interface connections
pseudoatom int_A_0, pos=[-38.403, 11.893, 62.233], color=blue
pseudoatom int_B_0, pos=[-37.007, 2.386, 68.259], color=blue
distance line1, com_A, int_A_0
set dash_width, 2, line1
set dash_gap, 0.3, line1
distance line2, com_B, int_B_0
set dash_width, 2, line2
set dash_gap, 0.3, line2
distance interface0, int_A_0, int_B_0
set dash_width, 4, interface0
set dash_gap, 0.1, interface0
color green, interface0
pseudoatom int_A_1, pos=[-26.665, 22.625, 45.739], color=blue
pseudoatom int_E_1, pos=[-14.453, 18.960, 36.712], color=blue
distance line3, com_A, int_A_1
set dash_width, 2, line3
set dash_gap, 0.3, line3
distance line4, com_E, int_E_1
set dash_width, 2, line4
set dash_gap, 0.3, line4
distance interface1, int_A_1, int_E_1
set dash_width, 4, interface1
set dash_gap, 0.1, interface1
color green, interface1
pseudoatom int_A_2, pos=[-28.718, 0.266, 42.125], color=blue
pseudoatom int_F_2, pos=[-19.242, -10.823, 45.257], color=blue
distance line5, com_A, int_A_2
set dash_width, 2, line5
set dash_gap, 0.3, line5
distance line6, com_F, int_F_2
set dash_width, 2, line6
set dash_gap, 0.3, line6
distance interface2, int_A_2, int_F_2
set dash_width, 4, interface2
set dash_gap, 0.1, interface2
color green, interface2
pseudoatom int_B_3, pos=[-12.113, 8.132, 69.489], color=blue
pseudoatom int_E_3, pos=[-7.075, 16.742, 58.331], color=blue
distance line7, com_B, int_B_3
set dash_width, 2, line7
set dash_gap, 0.3, line7
distance line8, com_E, int_E_3
set dash_width, 2, line8
set dash_gap, 0.3, line8
distance interface3, int_B_3, int_E_3
set dash_width, 4, interface3
set dash_gap, 0.1, interface3
color green, interface3
pseudoatom int_B_4, pos=[-19.985, -13.280, 69.099], color=blue
pseudoatom int_F_4, pos=[-5.712, -14.292, 62.997], color=blue
distance line9, com_B, int_B_4
set dash_width, 2, line9
set dash_gap, 0.3, line9
distance line10, com_F, int_F_4
set dash_width, 2, line10
set dash_gap, 0.3, line10
distance interface4, int_B_4, int_F_4
set dash_width, 4, interface4
set dash_gap, 0.1, interface4
color green, interface4
pseudoatom int_E_5, pos=[3.039, 4.069, 38.153], color=blue
pseudoatom int_F_5, pos=[5.926, -4.093, 45.733], color=blue
distance line11, com_E, int_E_5
set dash_width, 2, line11
set dash_gap, 0.3, line11
distance line12, com_F, int_F_5
set dash_width, 2, line12
set dash_gap, 0.3, line12
distance interface5, int_E_5, int_F_5
set dash_width, 4, interface5
set dash_gap, 0.1, interface5
color green, interface5

# Final visualization settings
set sphere_transparency, 0.2
bg_color white
zoom all
