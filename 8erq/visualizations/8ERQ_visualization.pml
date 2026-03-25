# PyMOL script for coarse-grained structure visualization
# Generated for PDB: 8ERQ

# Load original structure
load /Users/yueying/Workspace/ionerdss/workspace_8ERQ_test1/1/8erq_dir/structures/downloaded/8erq-assembly1.cif, original
hide everything, original
show cartoon, original
spectrum chain, original
set cartoon_transparency, 0.7, original

# Load coarse-grained structure
load /Users/yueying/Workspace/ionerdss/workspace_8ERQ_test1/1/8erq_dir/visualizations/8ERQ_coarse_grained.cif, coarse_grained
hide everything, coarse_grained
show spheres, name COM
show spheres, name INT
set sphere_scale, 1.0
color red, name COM
color blue, name INT

# Create pseudoatoms for COMs and interfaces
pseudoatom com_A, pos=[269.018, 242.177, 295.647], color=red, label=A
pseudoatom com_H, pos=[266.206, 240.440, 332.464], color=red, label=H
pseudoatom com_L, pos=[248.660, 252.641, 327.454], color=red, label=L

# Create interface connections
pseudoatom int_A_0, pos=[266.521, 252.490, 316.893], color=blue
pseudoatom int_L_0, pos=[263.284, 257.136, 316.921], color=blue
distance line1, com_A, int_A_0
set dash_width, 2, line1
set dash_gap, 0.3, line1
distance line2, com_L, int_L_0
set dash_width, 2, line2
set dash_gap, 0.3, line2
distance interface0, int_A_0, int_L_0
set dash_width, 4, interface0
set dash_gap, 0.1, interface0
color green, interface0
pseudoatom int_H_1, pos=[256.533, 244.921, 337.047], color=blue
pseudoatom int_L_1, pos=[254.037, 248.735, 334.886], color=blue
distance line3, com_H, int_H_1
set dash_width, 2, line3
set dash_gap, 0.3, line3
distance line4, com_L, int_L_1
set dash_width, 2, line4
set dash_gap, 0.3, line4
distance interface1, int_H_1, int_L_1
set dash_width, 4, interface1
set dash_gap, 0.1, interface1
color green, interface1

# Final visualization settings
set sphere_transparency, 0.2
bg_color white
zoom all
