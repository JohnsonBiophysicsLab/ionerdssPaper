# PyMOL script for coarse-grained structure visualization
# Generated for PDB: 7PG9

# Load original structure
load /Users/yueying/Workspace/ionerdss/7pg9_dir/structures/downloaded/7pg9-assembly1.cif, original
hide everything, original
show cartoon, original
spectrum chain, original
set cartoon_transparency, 0.7, original

# Load coarse-grained structure
load /Users/yueying/Workspace/ionerdss/7pg9_dir/visualizations/7PG9_coarse_grained.cif, coarse_grained
hide everything, coarse_grained
show spheres, name COM
show spheres, name INT
set sphere_scale, 1.0
color red, name COM
color blue, name INT

# Create pseudoatoms for COMs and interfaces
pseudoatom com_A0, pos=[204.792, 144.622, 176.970], color=red, label=A0
pseudoatom com_A1, pos=[138.663, 104.800, 139.051], color=red, label=A1
pseudoatom com_B0, pos=[208.426, 126.068, 153.652], color=red, label=B0
pseudoatom com_B1, pos=[135.167, 116.319, 169.657], color=red, label=B1
pseudoatom com_C, pos=[208.055, 132.389, 123.361], color=red, label=C
pseudoatom com_D, pos=[200.881, 159.183, 110.111], color=red, label=D
pseudoatom com_E, pos=[193.762, 185.844, 122.444], color=red, label=E
pseudoatom com_F, pos=[191.124, 191.888, 152.367], color=red, label=F
pseudoatom com_G, pos=[196.145, 174.860, 176.891], color=red, label=G
pseudoatom com_H, pos=[162.617, 143.907, 180.909], color=red, label=H
pseudoatom com_I, pos=[170.855, 117.141, 159.326], color=red, label=I
pseudoatom com_J, pos=[171.608, 116.042, 131.176], color=red, label=J
pseudoatom com_K, pos=[166.084, 138.377, 109.075], color=red, label=K
pseudoatom com_L, pos=[156.666, 170.276, 113.069], color=red, label=L
pseudoatom com_M, pos=[151.324, 185.126, 139.734], color=red, label=M
pseudoatom com_N, pos=[153.913, 173.254, 170.296], color=red, label=N
pseudoatom com_O, pos=[84.161, 144.925, 175.202], color=red, label=O
pseudoatom com_P, pos=[81.179, 163.718, 151.946], color=red, label=P
pseudoatom com_Q, pos=[82.450, 157.748, 121.608], color=red, label=Q
pseudoatom com_R, pos=[90.009, 131.108, 108.269], color=red, label=R
pseudoatom com_S, pos=[96.758, 104.301, 120.498], color=red, label=S
pseudoatom com_T, pos=[98.504, 97.911, 150.414], color=red, label=T
pseudoatom com_U, pos=[92.757, 114.656, 174.973], color=red, label=U
pseudoatom com_V, pos=[126.154, 145.545, 180.344], color=red, label=V
pseudoatom com_W, pos=[118.583, 172.558, 158.842], color=red, label=W
pseudoatom com_X, pos=[118.650, 173.987, 130.692], color=red, label=X
pseudoatom com_Y, pos=[124.827, 151.906, 108.508], color=red, label=Y
pseudoatom com_Z, pos=[134.119, 119.959, 112.412], color=red, label=Z

# Create interface connections
pseudoatom int_A0_0, pos=[206.718, 141.871, 174.134], color=blue
pseudoatom int_B0_0, pos=[209.840, 133.028, 154.880], color=blue
distance line1, com_A0, int_A0_0
set dash_width, 2, line1
set dash_gap, 0.3, line1
distance line2, com_B0, int_B0_0
set dash_width, 2, line2
set dash_gap, 0.3, line2
distance interface0, int_A0_0, int_B0_0
set dash_width, 4, interface0
set dash_gap, 0.1, interface0
color green, interface0
pseudoatom int_A0_1, pos=[206.163, 150.007, 171.621], color=blue
pseudoatom int_G_1, pos=[197.901, 170.518, 176.589], color=blue
distance line3, com_A0, int_A0_1
set dash_width, 2, line3
set dash_gap, 0.3, line3
distance line4, com_G, int_G_1
set dash_width, 2, line4
set dash_gap, 0.3, line4
distance interface1, int_A0_1, int_G_1
set dash_width, 4, interface1
set dash_gap, 0.1, interface1
color green, interface1
pseudoatom int_A0_2, pos=[195.960, 145.466, 178.324], color=blue
pseudoatom int_H_2, pos=[173.328, 146.716, 177.335], color=blue
distance line5, com_A0, int_A0_2
set dash_width, 2, line5
set dash_gap, 0.3, line5
distance line6, com_H, int_H_2
set dash_width, 2, line6
set dash_gap, 0.3, line6
distance interface2, int_A0_2, int_H_2
set dash_width, 4, interface2
set dash_gap, 0.1, interface2
color green, interface2
pseudoatom int_A0_3, pos=[195.505, 138.254, 174.142], color=blue
pseudoatom int_I_3, pos=[178.159, 126.392, 164.862], color=blue
distance line7, com_A0, int_A0_3
set dash_width, 2, line7
set dash_gap, 0.3, line7
distance line8, com_I, int_I_3
set dash_width, 2, line8
set dash_gap, 0.3, line8
distance interface3, int_A0_3, int_I_3
set dash_width, 4, interface3
set dash_gap, 0.1, interface3
color green, interface3
pseudoatom int_A1_4, pos=[137.984, 110.890, 145.476], color=blue
pseudoatom int_B1_4, pos=[136.793, 115.903, 165.319], color=blue
distance line9, com_A1, int_A1_4
set dash_width, 2, line9
set dash_gap, 0.3, line9
distance line10, com_B1, int_B1_4
set dash_width, 2, line10
set dash_gap, 0.3, line10
distance interface4, int_A1_4, int_B1_4
set dash_width, 4, interface4
set dash_gap, 0.1, interface4
color green, interface4
pseudoatom int_A1_5, pos=[146.865, 103.285, 140.469], color=blue
pseudoatom int_I_5, pos=[162.863, 109.982, 151.367], color=blue
distance line11, com_A1, int_A1_5
set dash_width, 2, line11
set dash_gap, 0.3, line11
distance line12, com_I, int_I_5
set dash_width, 2, line12
set dash_gap, 0.3, line12
distance interface5, int_A1_5, int_I_5
set dash_width, 4, interface5
set dash_gap, 0.1, interface5
color green, interface5
pseudoatom int_A1_6, pos=[147.422, 103.704, 137.804], color=blue
pseudoatom int_J_6, pos=[165.155, 111.239, 130.048], color=blue
distance line13, com_A1, int_A1_6
set dash_width, 2, line13
set dash_gap, 0.3, line13
distance line14, com_J, int_J_6
set dash_width, 2, line14
set dash_gap, 0.3, line14
distance interface6, int_A1_6, int_J_6
set dash_width, 4, interface6
set dash_gap, 0.1, interface6
color green, interface6
pseudoatom int_A1_7, pos=[128.224, 106.464, 135.707], color=blue
pseudoatom int_S_7, pos=[106.397, 105.117, 125.988], color=blue
distance line15, com_A1, int_A1_7
set dash_width, 2, line15
set dash_gap, 0.3, line15
distance line16, com_S, int_S_7
set dash_width, 2, line16
set dash_gap, 0.3, line16
distance interface7, int_A1_7, int_S_7
set dash_width, 4, interface7
set dash_gap, 0.1, interface7
color green, interface7
pseudoatom int_A1_8, pos=[127.245, 106.476, 141.353], color=blue
pseudoatom int_T_8, pos=[106.590, 98.395, 147.447], color=blue
distance line17, com_A1, int_A1_8
set dash_width, 2, line17
set dash_gap, 0.3, line17
distance line18, com_T, int_T_8
set dash_width, 2, line18
set dash_gap, 0.3, line18
distance interface8, int_A1_8, int_T_8
set dash_width, 4, interface8
set dash_gap, 0.1, interface8
color green, interface8
pseudoatom int_A1_9, pos=[140.015, 107.027, 135.275], color=blue
pseudoatom int_Z_9, pos=[136.122, 119.270, 118.930], color=blue
distance line19, com_A1, int_A1_9
set dash_width, 2, line19
set dash_gap, 0.3, line19
distance line20, com_Z, int_Z_9
set dash_width, 2, line20
set dash_gap, 0.3, line20
distance interface9, int_A1_9, int_Z_9
set dash_width, 4, interface9
set dash_gap, 0.1, interface9
color green, interface9
pseudoatom int_B0_10, pos=[209.157, 127.099, 149.450], color=blue
pseudoatom int_C_10, pos=[209.319, 137.494, 130.146], color=blue
distance line21, com_B0, int_B0_10
set dash_width, 2, line21
set dash_gap, 0.3, line21
distance line22, com_C, int_C_10
set dash_width, 2, line22
set dash_gap, 0.3, line22
distance interface10, int_B0_10, int_C_10
set dash_width, 4, interface10
set dash_gap, 0.1, interface10
color green, interface10
pseudoatom int_B0_11, pos=[201.655, 124.067, 156.440], color=blue
pseudoatom int_I_11, pos=[178.992, 123.683, 159.979], color=blue
distance line23, com_B0, int_B0_11
set dash_width, 2, line23
set dash_gap, 0.3, line23
distance line24, com_I, int_I_11
set dash_width, 2, line24
set dash_gap, 0.3, line24
distance interface11, int_B0_11, int_I_11
set dash_width, 4, interface11
set dash_gap, 0.1, interface11
color green, interface11
pseudoatom int_B0_12, pos=[198.831, 124.392, 147.665], color=blue
pseudoatom int_J_12, pos=[179.689, 120.048, 136.381], color=blue
distance line25, com_B0, int_B0_12
set dash_width, 2, line25
set dash_gap, 0.3, line25
distance line26, com_J, int_J_12
set dash_width, 2, line26
set dash_gap, 0.3, line26
distance interface12, int_B0_12, int_J_12
set dash_width, 4, interface12
set dash_gap, 0.1, interface12
color green, interface12
pseudoatom int_B1_13, pos=[141.619, 121.937, 173.791], color=blue
pseudoatom int_H_13, pos=[155.732, 136.495, 181.036], color=blue
distance line27, com_B1, int_B1_13
set dash_width, 2, line27
set dash_gap, 0.3, line27
distance line28, com_H, int_H_13
set dash_width, 2, line28
set dash_gap, 0.3, line28
distance interface13, int_B1_13, int_H_13
set dash_width, 4, interface13
set dash_gap, 0.1, interface13
color green, interface13
pseudoatom int_B1_14, pos=[144.845, 114.191, 172.001], color=blue
pseudoatom int_I_14, pos=[165.285, 115.362, 165.988], color=blue
distance line29, com_B1, int_B1_14
set dash_width, 2, line29
set dash_gap, 0.3, line29
distance line30, com_I, int_I_14
set dash_width, 2, line30
set dash_gap, 0.3, line30
distance interface14, int_B1_14, int_I_14
set dash_width, 4, interface14
set dash_gap, 0.1, interface14
color green, interface14
pseudoatom int_B1_15, pos=[125.896, 113.945, 164.169], color=blue
pseudoatom int_T_15, pos=[107.873, 100.919, 155.672], color=blue
distance line31, com_B1, int_B1_15
set dash_width, 2, line31
set dash_gap, 0.3, line31
distance line32, com_T, int_T_15
set dash_width, 2, line32
set dash_gap, 0.3, line32
distance interface15, int_B1_15, int_T_15
set dash_width, 4, interface15
set dash_gap, 0.1, interface15
color green, interface15
pseudoatom int_B1_16, pos=[122.861, 116.522, 168.948], color=blue
pseudoatom int_U_16, pos=[100.317, 113.918, 174.739], color=blue
distance line33, com_B1, int_B1_16
set dash_width, 2, line33
set dash_gap, 0.3, line33
distance line34, com_U, int_U_16
set dash_width, 2, line34
set dash_gap, 0.3, line34
distance interface16, int_B1_16, int_U_16
set dash_width, 4, interface16
set dash_gap, 0.1, interface16
color green, interface16
pseudoatom int_B1_17, pos=[133.317, 124.340, 168.908], color=blue
pseudoatom int_V_17, pos=[128.391, 141.820, 178.249], color=blue
distance line35, com_B1, int_B1_17
set dash_width, 2, line35
set dash_gap, 0.3, line35
distance line36, com_V, int_V_17
set dash_width, 2, line36
set dash_gap, 0.3, line36
distance interface17, int_B1_17, int_V_17
set dash_width, 4, interface17
set dash_gap, 0.1, interface17
color green, interface17
pseudoatom int_C_18, pos=[207.761, 136.928, 121.906], color=blue
pseudoatom int_D_18, pos=[203.967, 157.280, 116.118], color=blue
distance line37, com_C, int_C_18
set dash_width, 2, line37
set dash_gap, 0.3, line37
distance line38, com_D, int_D_18
set dash_width, 2, line38
set dash_gap, 0.3, line38
distance interface18, int_C_18, int_D_18
set dash_width, 4, interface18
set dash_gap, 0.1, interface18
color green, interface18
pseudoatom int_C_19, pos=[200.138, 128.165, 124.938], color=blue
pseudoatom int_J_19, pos=[179.483, 121.770, 131.286], color=blue
distance line39, com_C, int_C_19
set dash_width, 2, line39
set dash_gap, 0.3, line39
distance line40, com_J, int_J_19
set dash_width, 2, line40
set dash_gap, 0.3, line40
distance interface19, int_C_19, int_J_19
set dash_width, 4, interface19
set dash_gap, 0.1, interface19
color green, interface19
pseudoatom int_C_20, pos=[196.251, 133.700, 119.687], color=blue
pseudoatom int_K_20, pos=[175.022, 138.759, 114.097], color=blue
distance line41, com_C, int_C_20
set dash_width, 2, line41
set dash_gap, 0.3, line41
distance line42, com_K, int_K_20
set dash_width, 2, line42
set dash_gap, 0.3, line42
distance interface20, int_C_20, int_K_20
set dash_width, 4, interface20
set dash_gap, 0.1, interface20
color green, interface20
pseudoatom int_D_21, pos=[201.384, 163.143, 111.479], color=blue
pseudoatom int_E_21, pos=[198.204, 179.515, 125.508], color=blue
distance line43, com_D, int_D_21
set dash_width, 2, line43
set dash_gap, 0.3, line43
distance line44, com_E, int_E_21
set dash_width, 2, line44
set dash_gap, 0.3, line44
distance interface21, int_D_21, int_E_21
set dash_width, 4, interface21
set dash_gap, 0.1, interface21
color green, interface21
pseudoatom int_D_22, pos=[194.097, 155.053, 108.805], color=blue
pseudoatom int_K_22, pos=[174.361, 144.076, 112.055], color=blue
distance line45, com_D, int_D_22
set dash_width, 2, line45
set dash_gap, 0.3, line45
distance line46, com_K, int_K_22
set dash_width, 2, line46
set dash_gap, 0.3, line46
distance interface22, int_D_22, int_K_22
set dash_width, 4, interface22
set dash_gap, 0.1, interface22
color green, interface22
pseudoatom int_D_23, pos=[189.725, 161.553, 110.611], color=blue
pseudoatom int_L_23, pos=[167.924, 166.668, 114.809], color=blue
distance line47, com_D, int_D_23
set dash_width, 2, line47
set dash_gap, 0.3, line47
distance line48, com_L, int_L_23
set dash_width, 2, line48
set dash_gap, 0.3, line48
distance interface23, int_D_23, int_L_23
set dash_width, 4, interface23
set dash_gap, 0.1, interface23
color green, interface23
pseudoatom int_E_24, pos=[194.488, 186.247, 127.217], color=blue
pseudoatom int_F_24, pos=[195.428, 187.922, 148.455], color=blue
distance line49, com_E, int_E_24
set dash_width, 2, line49
set dash_gap, 0.3, line49
distance line50, com_F, int_F_24
set dash_width, 2, line50
set dash_gap, 0.3, line50
distance interface24, int_E_24, int_F_24
set dash_width, 4, interface24
set dash_gap, 0.1, interface24
color green, interface24
pseudoatom int_E_25, pos=[186.503, 183.275, 119.759], color=blue
pseudoatom int_L_25, pos=[167.015, 171.112, 117.772], color=blue
distance line51, com_E, int_E_25
set dash_width, 2, line51
set dash_gap, 0.3, line51
distance line52, com_L, int_L_25
set dash_width, 2, line52
set dash_gap, 0.3, line52
distance interface25, int_E_25, int_L_25
set dash_width, 4, interface25
set dash_gap, 0.1, interface25
color green, interface25
pseudoatom int_E_26, pos=[183.965, 184.963, 127.635], color=blue
pseudoatom int_M_26, pos=[161.859, 183.501, 136.684], color=blue
distance line53, com_E, int_E_26
set dash_width, 2, line53
set dash_gap, 0.3, line53
distance line54, com_M, int_M_26
set dash_width, 2, line54
set dash_gap, 0.3, line54
distance interface26, int_E_26, int_M_26
set dash_width, 4, interface26
set dash_gap, 0.1, interface26
color green, interface26
pseudoatom int_F_27, pos=[193.245, 190.053, 155.506], color=blue
pseudoatom int_G_27, pos=[199.260, 174.023, 169.499], color=blue
distance line55, com_F, int_F_27
set dash_width, 2, line55
set dash_gap, 0.3, line55
distance line56, com_G, int_G_27
set dash_width, 2, line56
set dash_gap, 0.3, line56
distance interface27, int_F_27, int_G_27
set dash_width, 4, interface27
set dash_gap, 0.1, interface27
color green, interface27
pseudoatom int_F_28, pos=[183.130, 191.437, 149.154], color=blue
pseudoatom int_M_28, pos=[162.669, 183.424, 142.356], color=blue
distance line57, com_F, int_F_28
set dash_width, 2, line57
set dash_gap, 0.3, line57
distance line58, com_M, int_M_28
set dash_width, 2, line58
set dash_gap, 0.3, line58
distance interface28, int_F_28, int_M_28
set dash_width, 4, interface28
set dash_gap, 0.1, interface28
color green, interface28
pseudoatom int_F_29, pos=[181.604, 188.818, 157.308], color=blue
pseudoatom int_N_29, pos=[163.342, 175.692, 165.114], color=blue
distance line59, com_F, int_F_29
set dash_width, 2, line59
set dash_gap, 0.3, line59
distance line60, com_N, int_N_29
set dash_width, 2, line60
set dash_gap, 0.3, line60
distance interface29, int_F_29, int_N_29
set dash_width, 4, interface29
set dash_gap, 0.1, interface29
color green, interface29
pseudoatom int_G_30, pos=[187.171, 166.239, 177.213], color=blue
pseudoatom int_H_30, pos=[170.742, 150.161, 177.285], color=blue
distance line61, com_G, int_G_30
set dash_width, 2, line61
set dash_gap, 0.3, line61
distance line62, com_H, int_H_30
set dash_width, 2, line62
set dash_gap, 0.3, line62
distance interface30, int_G_30, int_H_30
set dash_width, 4, interface30
set dash_gap, 0.1, interface30
color green, interface30
pseudoatom int_G_31, pos=[188.596, 175.601, 176.440], color=blue
pseudoatom int_N_31, pos=[166.235, 173.061, 169.951], color=blue
distance line63, com_G, int_G_31
set dash_width, 2, line63
set dash_gap, 0.3, line63
distance line64, com_N, int_N_31
set dash_width, 2, line64
set dash_gap, 0.3, line64
distance interface31, int_G_31, int_N_31
set dash_width, 4, interface31
set dash_gap, 0.1, interface31
color green, interface31
pseudoatom int_H_32, pos=[163.348, 140.348, 174.451], color=blue
pseudoatom int_I_32, pos=[167.625, 122.036, 164.961], color=blue
distance line65, com_H, int_H_32
set dash_width, 2, line65
set dash_gap, 0.3, line65
distance line66, com_I, int_I_32
set dash_width, 2, line66
set dash_gap, 0.3, line66
distance interface32, int_H_32, int_I_32
set dash_width, 4, interface32
set dash_gap, 0.1, interface32
color green, interface32
pseudoatom int_H_33, pos=[160.442, 147.656, 178.791], color=blue
pseudoatom int_N_33, pos=[155.788, 165.242, 169.510], color=blue
distance line67, com_H, int_H_33
set dash_width, 2, line67
set dash_gap, 0.3, line67
distance line68, com_N, int_N_33
set dash_width, 2, line68
set dash_gap, 0.3, line68
distance interface33, int_H_33, int_N_33
set dash_width, 4, interface33
set dash_gap, 0.1, interface33
color green, interface33
pseudoatom int_H_34, pos=[157.402, 143.575, 184.724], color=blue
pseudoatom int_V_34, pos=[131.254, 145.831, 184.317], color=blue
distance line69, com_H, int_H_34
set dash_width, 2, line69
set dash_gap, 0.3, line69
distance line70, com_V, int_V_34
set dash_width, 2, line70
set dash_gap, 0.3, line70
distance interface34, int_H_34, int_V_34
set dash_width, 4, interface34
set dash_gap, 0.1, interface34
color green, interface34
pseudoatom int_I_35, pos=[168.745, 115.386, 149.308], color=blue
pseudoatom int_J_35, pos=[171.224, 114.310, 131.603], color=blue
distance line71, com_I, int_I_35
set dash_width, 2, line71
set dash_gap, 0.3, line71
distance line72, com_J, int_J_35
set dash_width, 2, line72
set dash_gap, 0.3, line72
distance interface35, int_I_35, int_J_35
set dash_width, 4, interface35
set dash_gap, 0.1, interface35
color green, interface35
pseudoatom int_J_36, pos=[168.107, 123.275, 128.778], color=blue
pseudoatom int_K_36, pos=[165.312, 135.184, 112.084], color=blue
distance line73, com_J, int_J_36
set dash_width, 2, line73
set dash_gap, 0.3, line73
distance line74, com_K, int_K_36
set dash_width, 2, line74
set dash_gap, 0.3, line74
distance interface36, int_J_36, int_K_36
set dash_width, 4, interface36
set dash_gap, 0.1, interface36
color green, interface36
pseudoatom int_J_37, pos=[161.695, 117.330, 126.263], color=blue
pseudoatom int_Z_37, pos=[144.866, 117.644, 114.754], color=blue
distance line75, com_J, int_J_37
set dash_width, 2, line75
set dash_gap, 0.3, line75
distance line76, com_Z, int_Z_37
set dash_width, 2, line76
set dash_gap, 0.3, line76
distance interface37, int_J_37, int_Z_37
set dash_width, 4, interface37
set dash_gap, 0.1, interface37
color green, interface37
pseudoatom int_K_38, pos=[162.971, 145.430, 114.100], color=blue
pseudoatom int_L_38, pos=[155.976, 165.660, 113.027], color=blue
distance line77, com_K, int_K_38
set dash_width, 2, line77
set dash_gap, 0.3, line77
distance line78, com_L, int_L_38
set dash_width, 2, line78
set dash_gap, 0.3, line78
distance interface38, int_K_38, int_L_38
set dash_width, 4, interface38
set dash_gap, 0.1, interface38
color green, interface38
pseudoatom int_K_39, pos=[154.868, 141.140, 107.278], color=blue
pseudoatom int_Y_39, pos=[136.091, 149.159, 107.013], color=blue
distance line79, com_K, int_K_39
set dash_width, 2, line79
set dash_gap, 0.3, line79
distance line80, com_Y, int_Y_39
set dash_width, 2, line80
set dash_gap, 0.3, line80
distance interface39, int_K_39, int_Y_39
set dash_width, 4, interface39
set dash_gap, 0.1, interface39
color green, interface39
pseudoatom int_K_40, pos=[158.593, 133.605, 105.484], color=blue
pseudoatom int_Z_40, pos=[142.360, 120.820, 109.619], color=blue
distance line81, com_K, int_K_40
set dash_width, 2, line81
set dash_gap, 0.3, line81
distance line82, com_Z, int_Z_40
set dash_width, 2, line82
set dash_gap, 0.3, line82
distance interface40, int_K_40, int_Z_40
set dash_width, 4, interface40
set dash_gap, 0.1, interface40
color green, interface40
pseudoatom int_L_41, pos=[154.469, 170.890, 119.532], color=blue
pseudoatom int_M_41, pos=[150.086, 182.943, 135.894], color=blue
distance line83, com_L, int_L_41
set dash_width, 2, line83
set dash_gap, 0.3, line83
distance line84, com_M, int_M_41
set dash_width, 2, line84
set dash_gap, 0.3, line84
distance interface41, int_L_41, int_M_41
set dash_width, 4, interface41
set dash_gap, 0.1, interface41
color green, interface41
pseudoatom int_L_42, pos=[145.852, 172.562, 115.117], color=blue
pseudoatom int_X_42, pos=[128.705, 172.752, 126.061], color=blue
distance line85, com_L, int_L_42
set dash_width, 2, line85
set dash_gap, 0.3, line85
distance line86, com_X, int_X_42
set dash_width, 2, line86
set dash_gap, 0.3, line86
distance interface42, int_L_42, int_X_42
set dash_width, 4, interface42
set dash_gap, 0.1, interface42
color green, interface42
pseudoatom int_L_43, pos=[148.512, 169.447, 110.023], color=blue
pseudoatom int_Y_43, pos=[132.422, 156.717, 105.197], color=blue
distance line87, com_L, int_L_43
set dash_width, 2, line87
set dash_gap, 0.3, line87
distance line88, com_Y, int_Y_43
set dash_width, 2, line88
set dash_gap, 0.3, line88
distance interface43, int_L_43, int_Y_43
set dash_width, 4, interface43
set dash_gap, 0.1, interface43
color green, interface43
pseudoatom int_M_44, pos=[151.815, 178.962, 146.106], color=blue
pseudoatom int_N_44, pos=[152.417, 173.720, 165.917], color=blue
distance line89, com_M, int_M_44
set dash_width, 2, line89
set dash_gap, 0.3, line89
distance line90, com_N, int_N_44
set dash_width, 2, line90
set dash_gap, 0.3, line90
distance interface44, int_M_44, int_N_44
set dash_width, 4, interface44
set dash_gap, 0.1, interface44
color green, interface44
pseudoatom int_M_45, pos=[143.082, 186.623, 140.925], color=blue
pseudoatom int_W_45, pos=[126.768, 179.824, 151.419], color=blue
distance line91, com_M, int_M_45
set dash_width, 2, line91
set dash_gap, 0.3, line91
distance line92, com_W, int_W_45
set dash_width, 2, line92
set dash_gap, 0.3, line92
distance interface45, int_M_45, int_W_45
set dash_width, 4, interface45
set dash_gap, 0.1, interface45
color green, interface45
pseudoatom int_M_46, pos=[142.554, 186.173, 138.142], color=blue
pseudoatom int_X_46, pos=[125.135, 178.800, 129.812], color=blue
distance line93, com_M, int_M_46
set dash_width, 2, line93
set dash_gap, 0.3, line93
distance line94, com_X, int_X_46
set dash_width, 2, line94
set dash_gap, 0.3, line94
distance interface46, int_M_46, int_X_46
set dash_width, 4, interface46
set dash_gap, 0.1, interface46
color green, interface46
pseudoatom int_N_47, pos=[147.483, 167.499, 174.112], color=blue
pseudoatom int_V_47, pos=[133.033, 152.952, 180.762], color=blue
distance line95, com_N, int_N_47
set dash_width, 2, line95
set dash_gap, 0.3, line95
distance line96, com_V, int_V_47
set dash_width, 2, line96
set dash_gap, 0.3, line96
distance interface47, int_N_47, int_V_47
set dash_width, 4, interface47
set dash_gap, 0.1, interface47
color green, interface47
pseudoatom int_N_48, pos=[144.169, 175.354, 172.375], color=blue
pseudoatom int_W_48, pos=[123.978, 174.359, 165.736], color=blue
distance line97, com_N, int_N_48
set dash_width, 2, line97
set dash_gap, 0.3, line97
distance line98, com_W, int_W_48
set dash_width, 2, line98
set dash_gap, 0.3, line98
distance interface48, int_N_48, int_W_48
set dash_width, 4, interface48
set dash_gap, 0.1, interface48
color green, interface48
pseudoatom int_O_49, pos=[82.382, 147.719, 172.397], color=blue
pseudoatom int_P_49, pos=[79.729, 156.744, 153.053], color=blue
distance line99, com_O, int_O_49
set dash_width, 2, line99
set dash_gap, 0.3, line99
distance line100, com_P, int_P_49
set dash_width, 2, line100
set dash_gap, 0.3, line100
distance interface49, int_O_49, int_P_49
set dash_width, 4, interface49
set dash_gap, 0.1, interface49
color green, interface49
pseudoatom int_O_50, pos=[83.043, 139.560, 169.817], color=blue
pseudoatom int_U_50, pos=[91.012, 119.002, 174.669], color=blue
distance line101, com_O, int_O_50
set dash_width, 2, line101
set dash_gap, 0.3, line101
distance line102, com_U, int_U_50
set dash_width, 2, line102
set dash_gap, 0.3, line102
distance interface50, int_O_50, int_U_50
set dash_width, 4, interface50
set dash_gap, 0.1, interface50
color green, interface50
pseudoatom int_O_51, pos=[92.903, 144.032, 176.751], color=blue
pseudoatom int_V_51, pos=[115.554, 142.782, 176.421], color=blue
distance line103, com_O, int_O_51
set dash_width, 2, line103
set dash_gap, 0.3, line103
distance line104, com_V, int_V_51
set dash_width, 2, line104
set dash_gap, 0.3, line104
distance interface51, int_O_51, int_V_51
set dash_width, 4, interface51
set dash_gap, 0.1, interface51
color green, interface51
pseudoatom int_O_52, pos=[93.483, 151.291, 172.668], color=blue
pseudoatom int_W_52, pos=[111.098, 163.252, 164.046], color=blue
distance line105, com_O, int_O_52
set dash_width, 2, line105
set dash_gap, 0.3, line105
distance line106, com_W, int_W_52
set dash_width, 2, line106
set dash_gap, 0.3, line106
distance interface52, int_O_52, int_W_52
set dash_width, 4, interface52
set dash_gap, 0.1, interface52
color green, interface52
pseudoatom int_P_53, pos=[80.574, 162.736, 147.714], color=blue
pseudoatom int_Q_53, pos=[80.984, 152.565, 128.292], color=blue
distance line107, com_P, int_P_53
set dash_width, 2, line107
set dash_gap, 0.3, line107
distance line108, com_Q, int_Q_53
set dash_width, 2, line108
set dash_gap, 0.3, line108
distance interface53, int_P_53, int_Q_53
set dash_width, 4, interface53
set dash_gap, 0.1, interface53
color green, interface53
pseudoatom int_P_54, pos=[87.864, 165.685, 154.956], color=blue
pseudoatom int_W_54, pos=[110.412, 166.017, 159.172], color=blue
distance line109, com_P, int_P_54
set dash_width, 2, line109
set dash_gap, 0.3, line109
distance line110, com_W, int_W_54
set dash_width, 2, line110
set dash_gap, 0.3, line110
distance interface54, int_P_54, int_W_54
set dash_width, 4, interface54
set dash_gap, 0.1, interface54
color green, interface54
pseudoatom int_P_55, pos=[90.948, 165.460, 146.266], color=blue
pseudoatom int_X_55, pos=[110.418, 169.924, 135.607], color=blue
distance line111, com_P, int_P_55
set dash_width, 2, line111
set dash_gap, 0.3, line111
distance line112, com_X, int_X_55
set dash_width, 2, line112
set dash_gap, 0.3, line112
distance interface55, int_P_55, int_X_55
set dash_width, 4, interface55
set dash_gap, 0.1, interface55
color green, interface55
pseudoatom int_Q_56, pos=[82.787, 153.226, 120.109], color=blue
pseudoatom int_R_56, pos=[86.750, 132.941, 114.202], color=blue
distance line113, com_Q, int_Q_56
set dash_width, 2, line113
set dash_gap, 0.3, line113
distance line114, com_R, int_R_56
set dash_width, 2, line114
set dash_gap, 0.3, line114
distance interface56, int_Q_56, int_R_56
set dash_width, 4, interface56
set dash_gap, 0.1, interface56
color green, interface56
pseudoatom int_Q_57, pos=[90.318, 161.950, 123.468], color=blue
pseudoatom int_X_57, pos=[110.775, 168.262, 130.501], color=blue
distance line115, com_Q, int_Q_57
set dash_width, 2, line115
set dash_gap, 0.3, line115
distance line116, com_X, int_X_57
set dash_width, 2, line116
set dash_gap, 0.3, line116
distance interface57, int_Q_57, int_X_57
set dash_width, 4, interface57
set dash_gap, 0.1, interface57
color green, interface57
pseudoatom int_Q_58, pos=[94.359, 156.475, 118.271], color=blue
pseudoatom int_Y_58, pos=[115.743, 151.471, 113.257], color=blue
distance line117, com_Q, int_Q_58
set dash_width, 2, line117
set dash_gap, 0.3, line117
distance line118, com_Y, int_Y_58
set dash_width, 2, line118
set dash_gap, 0.3, line118
distance interface58, int_Q_58, int_Y_58
set dash_width, 4, interface58
set dash_gap, 0.1, interface58
color green, interface58
pseudoatom int_R_59, pos=[89.512, 127.086, 109.542], color=blue
pseudoatom int_S_59, pos=[92.228, 110.596, 123.502], color=blue
distance line119, com_R, int_R_59
set dash_width, 2, line119
set dash_gap, 0.3, line119
distance line120, com_S, int_S_59
set dash_width, 2, line120
set dash_gap, 0.3, line120
distance interface59, int_R_59, int_S_59
set dash_width, 4, interface59
set dash_gap, 0.1, interface59
color green, interface59
pseudoatom int_R_60, pos=[96.825, 135.258, 107.224], color=blue
pseudoatom int_Y_60, pos=[116.465, 146.177, 111.175], color=blue
distance line121, com_R, int_R_60
set dash_width, 2, line121
set dash_gap, 0.3, line121
distance line122, com_Y, int_Y_60
set dash_width, 2, line122
set dash_gap, 0.3, line122
distance interface60, int_R_60, int_Y_60
set dash_width, 4, interface60
set dash_gap, 0.1, interface60
color green, interface60
pseudoatom int_R_61, pos=[101.089, 128.618, 109.353], color=blue
pseudoatom int_Z_61, pos=[122.814, 123.552, 113.858], color=blue
distance line123, com_R, int_R_61
set dash_width, 2, line123
set dash_gap, 0.3, line123
distance line124, com_Z, int_Z_61
set dash_width, 2, line124
set dash_gap, 0.3, line124
distance interface61, int_R_61, int_Z_61
set dash_width, 4, interface61
set dash_gap, 0.1, interface61
color green, interface61
pseudoatom int_S_62, pos=[95.890, 103.843, 125.242], color=blue
pseudoatom int_T_62, pos=[94.319, 101.923, 146.423], color=blue
distance line125, com_S, int_S_62
set dash_width, 2, line125
set dash_gap, 0.3, line125
distance line126, com_T, int_T_62
set dash_width, 2, line126
set dash_gap, 0.3, line126
distance interface62, int_S_62, int_T_62
set dash_width, 4, interface62
set dash_gap, 0.1, interface62
color green, interface62
pseudoatom int_S_63, pos=[104.095, 106.898, 118.060], color=blue
pseudoatom int_Z_63, pos=[123.634, 119.074, 116.795], color=blue
distance line127, com_S, int_S_63
set dash_width, 2, line127
set dash_gap, 0.3, line127
distance line128, com_Z, int_Z_63
set dash_width, 2, line128
set dash_gap, 0.3, line128
distance interface63, int_S_63, int_Z_63
set dash_width, 4, interface63
set dash_gap, 0.1, interface63
color green, interface63
pseudoatom int_T_64, pos=[96.291, 99.710, 153.510], color=blue
pseudoatom int_U_64, pos=[89.863, 115.580, 167.502], color=blue
distance line129, com_T, int_T_64
set dash_width, 2, line129
set dash_gap, 0.3, line129
distance line130, com_U, int_U_64
set dash_width, 2, line130
set dash_gap, 0.3, line130
distance interface64, int_T_64, int_U_64
set dash_width, 4, interface64
set dash_gap, 0.1, interface64
color green, interface64
pseudoatom int_U_65, pos=[101.719, 123.269, 175.662], color=blue
pseudoatom int_V_65, pos=[118.140, 139.338, 176.408], color=blue
distance line131, com_U, int_U_65
set dash_width, 2, line131
set dash_gap, 0.3, line131
distance line132, com_V, int_V_65
set dash_width, 2, line132
set dash_gap, 0.3, line132
distance interface65, int_U_65, int_V_65
set dash_width, 4, interface65
set dash_gap, 0.1, interface65
color green, interface65
pseudoatom int_V_66, pos=[125.616, 149.179, 173.909], color=blue
pseudoatom int_W_66, pos=[121.626, 167.602, 164.508], color=blue
distance line133, com_V, int_V_66
set dash_width, 2, line133
set dash_gap, 0.3, line133
distance line134, com_W, int_W_66
set dash_width, 2, line134
set dash_gap, 0.3, line134
distance interface66, int_V_66, int_W_66
set dash_width, 4, interface66
set dash_gap, 0.1, interface66
color green, interface66
pseudoatom int_W_67, pos=[120.972, 174.432, 148.907], color=blue
pseudoatom int_X_67, pos=[119.022, 175.714, 131.150], color=blue
distance line135, com_W, int_W_67
set dash_width, 2, line135
set dash_gap, 0.3, line135
distance line136, com_X, int_X_67
set dash_width, 2, line136
set dash_gap, 0.3, line136
distance interface67, int_W_67, int_X_67
set dash_width, 4, interface67
set dash_gap, 0.1, interface67
color green, interface67
pseudoatom int_X_68, pos=[122.220, 166.781, 128.315], color=blue
pseudoatom int_Y_68, pos=[125.510, 155.064, 111.575], color=blue
distance line137, com_X, int_X_68
set dash_width, 2, line137
set dash_gap, 0.3, line137
distance line138, com_Y, int_Y_68
set dash_width, 2, line138
set dash_gap, 0.3, line138
distance interface68, int_X_68, int_Y_68
set dash_width, 4, interface68
set dash_gap, 0.1, interface68
color green, interface68
pseudoatom int_Y_69, pos=[127.788, 144.794, 113.542], color=blue
pseudoatom int_Z_69, pos=[134.810, 124.575, 112.444], color=blue
distance line139, com_Y, int_Y_69
set dash_width, 2, line139
set dash_gap, 0.3, line139
distance line140, com_Z, int_Z_69
set dash_width, 2, line140
set dash_gap, 0.3, line140
distance interface69, int_Y_69, int_Z_69
set dash_width, 4, interface69
set dash_gap, 0.1, interface69
color green, interface69

# Final visualization settings
set sphere_transparency, 0.2
bg_color white
zoom all
