# PyMOL script to visualize regularized coarse-grained structure
load /Users/s_chibz/Documents/6bno_finaltry4/regularized_coarse_grained_structure.cif, coarse_grained
hide everything
show spheres, name COM
show spheres, name INT
set sphere_scale, 1.0
color red, name COM
color blue, name INT
pseudoatom com_A, pos=[-6.894, -14.229, -91.530], color=red
pseudoatom int_A_1, pos=[1.301, -17.282, -62.702], color=blue
distance line1, com_A, int_A_1
set dash_width, 4, line1
set dash_gap, 0.5, line1
pseudoatom int_A_2, pos=[-9.272, -13.089, -115.614], color=blue
distance line2, com_A, int_A_2
set dash_width, 4, line2
set dash_gap, 0.5, line2
pseudoatom int_A_3, pos=[-4.660, -0.407, -76.125], color=blue
distance line3, com_A, int_A_3
set dash_width, 4, line3
set dash_gap, 0.5, line3
pseudoatom int_A_4, pos=[2.126, -5.411, -102.895], color=blue
distance line4, com_A, int_A_4
set dash_width, 4, line4
set dash_gap, 0.5, line4
pseudoatom com_B, pos=[3.462, 15.422, -63.375], color=red
pseudoatom int_B_1, pos=[-5.162, 16.525, -34.532], color=blue
distance line5, com_B, int_B_1
set dash_width, 4, line5
set dash_gap, 0.5, line5
pseudoatom int_B_2, pos=[6.005, 14.842, -87.462], color=blue
distance line6, com_B, int_B_2
set dash_width, 4, line6
set dash_gap, 0.5, line6
pseudoatom int_B_3, pos=[4.517, 1.472, -47.959], color=blue
distance line7, com_B, int_B_3
set dash_width, 4, line7
set dash_gap, 0.5, line7
pseudoatom int_B_4, pos=[-3.282, 4.741, -74.721], color=blue
distance line8, com_B, int_B_4
set dash_width, 4, line8
set dash_gap, 0.5, line8
pseudoatom com_C, pos=[0.150, -15.829, -35.272], color=red
pseudoatom int_C_1, pos=[8.815, -14.749, -6.441], color=blue
distance line9, com_C, int_C_1
set dash_width, 4, line9
set dash_gap, 0.5, line9
pseudoatom int_C_2, pos=[-2.467, -15.960, -59.358], color=blue
distance line10, com_C, int_C_2
set dash_width, 4, line10
set dash_gap, 0.5, line10
pseudoatom int_C_3, pos=[-4.152, -2.467, -19.900], color=blue
distance line11, com_C, int_C_3
set dash_width, 4, line11
set dash_gap, 0.5, line11
pseudoatom int_C_4, pos=[4.197, -3.900, -46.658], color=blue
distance line12, com_C, int_C_4
set dash_width, 4, line12
set dash_gap, 0.5, line12
pseudoatom com_D, pos=[-3.861, 15.315, -7.195], color=red
pseudoatom int_D_1, pos=[-12.050, 12.316, 21.640], color=blue
distance line13, com_D, int_D_1
set dash_width, 4, line13
set dash_gap, 0.5, line13
pseudoatom int_D_2, pos=[-1.343, 16.015, -31.282], color=blue
distance line14, com_D, int_D_2
set dash_width, 4, line14
set dash_gap, 0.5, line14
pseudoatom int_D_3, pos=[3.375, 3.292, 8.181], color=blue
distance line15, com_D, int_D_3
set dash_width, 4, line15
set dash_gap, 0.5, line15
pseudoatom int_D_4, pos=[-5.080, 2.767, -18.568], color=blue
distance line16, com_D, int_D_4
set dash_width, 4, line16
set dash_gap, 0.5, line16
pseudoatom com_E, pos=[7.315, -14.027, 20.952], color=red
pseudoatom int_E_1, pos=[14.567, -9.302, 49.806], color=blue
distance line17, com_E, int_E_1
set dash_width, 4, line17
set dash_gap, 0.5, line17
pseudoatom int_E_2, pos=[5.042, -15.213, -3.140], color=blue
distance line18, com_E, int_E_2
set dash_width, 4, line18
set dash_gap, 0.5, line18
pseudoatom int_E_3, pos=[-2.527, -4.053, 36.347], color=blue
distance line19, com_E, int_E_3
set dash_width, 4, line19
set dash_gap, 0.5, line19
pseudoatom int_E_4, pos=[5.591, -1.510, 9.609], color=blue
distance line20, com_E, int_E_4
set dash_width, 4, line20
set dash_gap, 0.5, line20
pseudoatom com_F, pos=[-10.320, 11.987, 49.037], color=red
pseudoatom int_F_1, pos=[-16.336, 5.662, 77.869], color=blue
distance line21, com_F, int_F_1
set dash_width, 4, line21
set dash_gap, 0.5, line21
pseudoatom int_F_2, pos=[-8.333, 13.704, 24.951], color=blue
distance line22, com_F, int_F_2
set dash_width, 4, line22
set dash_gap, 0.5, line22
pseudoatom int_F_3, pos=[1.536, 4.568, 64.455], color=blue
distance line23, com_F, int_F_3
set dash_width, 4, line23
set dash_gap, 0.5, line23
pseudoatom int_F_4, pos=[-5.704, 0.233, 37.687], color=blue
distance line24, com_F, int_F_4
set dash_width, 4, line24
set dash_gap, 0.5, line24
pseudoatom com_G, pos=[12.819, -9.274, 77.154], color=red
pseudoatom int_G_1, pos=[17.130, -1.734, 106.000], color=blue
distance line25, com_G, int_G_1
set dash_width, 4, line25
set dash_gap, 0.5, line25
pseudoatom int_G_2, pos=[11.377, -11.436, 53.066], color=blue
distance line26, com_G, int_G_2
set dash_width, 4, line26
set dash_gap, 0.5, line26
pseudoatom int_G_3, pos=[-0.471, -4.735, 92.521], color=blue
distance line27, com_G, int_G_3
set dash_width, 4, line27
set dash_gap, 0.5, line27
pseudoatom int_G_4, pos=[5.695, 1.119, 65.773], color=blue
distance line28, com_G, int_G_4
set dash_width, 4, line28
set dash_gap, 0.5, line28
pseudoatom com_H, pos=[-14.613, 6.050, 105.265], color=red
pseudoatom int_H_1, pos=[-17.097, -2.314, 134.099], color=blue
distance line29, com_H, int_H_1
set dash_width, 4, line29
set dash_gap, 0.5, line29
pseudoatom int_H_2, pos=[-13.670, 8.488, 81.178], color=blue
distance line30, com_H, int_H_2
set dash_width, 4, line30
set dash_gap, 0.5, line30
pseudoatom int_H_3, pos=[-0.651, 4.687, 120.645], color=blue
distance line31, com_H, int_H_3
set dash_width, 4, line31
set dash_gap, 0.5, line31
pseudoatom int_H_4, pos=[-5.268, -2.403, 93.885], color=blue
distance line32, com_H, int_H_4
set dash_width, 4, line32
set dash_gap, 0.5, line32
set sphere_transparency, 0.2
bg_color white
zoom all
load /Users/s_chibz/Documents/6bno_finaltry4/6bno.cif
spectrum chain
hide everything, 6bno
show cartoon, 6bno
set cartoon_transparency, 0.7, 6bno
png /Users/s_chibz/Documents/6bno_finaltry4/comparison_regularized.png, 800, 800, 150, 1
