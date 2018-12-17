;;
*H_ex
[cm][bgm_MT][eval exp="f.h_style='def'" ]
[call storage="H/Hx_set.ks" target="*pre_Hx" ]

*show
[cm][mod_win st="o/win/Hx_act.png" allow_storage=true ]
[set_Hx1][show_Hx1][show_repeat_role_Hx]

;;選択画面
*h_def
[cm][if exp="f.h_style=='sit'" ][jump storage="H/Hx2.ks" target="*h_def" ][endif]
[if exp="f.s_feel<=0" ][eval exp="f.s_feel=0" ][endif]
[clearstack][set_s_feel][set_y_feel]

[if exp="f.wet>=600" ]
[chara_part name="Hx1" breath="Hx1/ef/breath3.png" tear="Hx1/tear/3.png" allow_storage=true ]
[elsif exp="f.wet>=400" ]
[chara_part name="Hx1" breath="Hx1/ef/breath2.png" tear="Hx1/tear/2.png" allow_storage=true ]
[elsif exp="f.wet>=120" ]
[chara_part name="Hx1" breath="Hx1/ef/breath1.png" tear="Hx1/tear/1.png" allow_storage=true ]
[else][chara_part name="Hx1" breath="00.png" tear="00.png" allow_storage=true ][endif]

[if exp="f.h_act=='non'" ][chara_part name="Hx1" tear="00.png" allow_storage=true ][endif]
[chara_mod name="other" time="0" storage="00.png" ][hx/shake]

[if exp="f.wet>=500" ][h_ef st="Hx1/ef/heart5.png" ][elsif exp="f.wet>=380" ][h_ef st="Hx1/ef/heart4.png" ]
[elsif exp="f.wet>=240" ][h_ef st="Hx1/ef/heart3.png" ][elsif exp="f.wet>=180" ][h_ef st="Hx1/ef/heart2.png" ]
[elsif exp="f.wet>=50" ][h_ef st="Hx1/ef/heart1.png" ][else][h_ef st="00.png" ][endif]

[if exp="f.wet>=500" ]
[chara_part name="Hx1" wait="false" body="Hx1/body/body3.png" head="Hx1/body/head3.png" allow_storage=true ]
[bg time="0" method="crossfade" storage="H/Hx1_3.jpg" ]
[elsif exp="f.wet>=250" ]
[chara_part name="Hx1" wait="false" body="Hx1/body/body2.png" head="Hx1/body/head2.png" allow_storage=true ]
[bg time="0" method="crossfade" storage="H/Hx1_2.jpg" ]
[elsif exp="f.wet>=120" ]
[chara_part name="Hx1" wait="false" body="Hx1/body/body1.png" head="Hx1/body/head1.png" allow_storage=true ]
[bg time="0" method="crossfade" storage="H/Hx1_1.jpg" ][endif]

[if exp="f.s_feel>=250 && f.y_feel>=210" ][jump target="*ex_both" ]
[elsif exp="f.s_feel>=250" ][jump target="*ex_s" ]
[elsif exp="f.y_feel>=210" ][jump target="*ex_y" ][endif]

[if exp="f.s_ex>=2 && f.lust<=10 && f.drug_s==0" ][jump storage="H/Hx_text.ks" target="*tx_end_s" ]
[elsif exp="f.y_ex>=1 && f.lust<=10 && f.drug_y==0" ][jump storage="H/Hx_text.ks" target="*tx_end_y" ]
[elsif exp="f.s_ex>=3 && f.lust<=70 && f.drug_s==0" ][jump storage="H/Hx_text.ks" target="*tx_end_s" ]
[elsif exp="f.y_ex>=2 && f.lust<=70 && f.drug_y==0" ][jump storage="H/Hx_text.ks" target="*tx_end_y" ]
[elsif exp="f.s_ex>=4 && f.drug_s==0" ][jump storage="H/Hx_text.ks" target="*tx_end_s" ]
[elsif exp="f.y_ex>=3 && f.drug_y==0" ][jump storage="H/Hx_text.ks" target="*tx_end_y" ][endif]

[if exp="f.system_act==1" ][eval exp="f.system_act=0" ]
[elsif exp="f.repeat_mode!=1" ][eval exp="f.repeat_mode_c=0" ]
[elsif exp="f.last_act=='kiss'" ][jump target="*kiss" ]
[elsif exp="f.last_act=='bust_l'" ][jump target="*bust_l" ]
[elsif exp="f.last_act=='bust_r'" ][jump target="*bust_r" ]
[elsif exp="f.last_act=='clit'" ][jump target="*clit" ]
[elsif exp="f.last_act=='f_fast'" ][jump target="*f_fast" ]
[elsif exp="f.last_act=='f_slow'" ][jump target="*f_slow" ]
[elsif exp="f.last_act=='v_fast'" ][jump target="*v_fast" ]
[elsif exp="f.last_act=='v_slow'" ][jump target="*v_slow" ][endif]


;;キス-選択
[clickable width="28" height="14" x="390" y="253" target="*kiss" border="" ]
[clickable width="27" height="13" x="402" y="241" target="*kiss" border="" ]
[clickable width="18" height="13" x="415" y="231" target="*kiss" border="" ]
[clickable width="11" height="12" x="423" y="225" target="*kiss" border="" ]
;;胸-選択
[clickable width="71" height="74" x="402" y="342" target="*bust_l" border="" ]
[clickable width="77" height="78" x="499" y="262" target="*bust_r" border="" ]
;;指入れ-選択
[if exp="f.h_right=='f' || f.h_sex==1" ][elsif exp="f.h_v_select=='finger'" ]
[clickable width="47" height="48" x="697" y="582" target="*f_in" border="" ][endif]
;;指動かし-選択
[if exp="f.h_right=='f' && f.h_v_speed=='fast'" ]
[clickable width="108" height="124" x="698" y="585" target="*f_fast" border="" ]
[elsif exp="f.h_right=='f' && f.h_v_speed=='normal'" ]
[clickable width="108" height="124" x="697" y="582" target="*f_slow" border="" ][endif]

;;挿入-選択
[if exp="f.h_right=='f' || f.h_sex==1" ][elsif exp="f.h_v_select=='sex'" ]
[clickable width="47" height="48" x="697" y="582" target="*v_in" border="" ][endif]
;;腰動かし-選択
[if exp="f.h_sex==1 && f.h_v_speed=='fast'" ]
[clickable width="68" height="75" x="702" y="589" target="*v_fast" border="" ]
[elsif exp="f.h_sex==1 && f.h_v_speed=='normal'" ]
[clickable width="68" height="75" x="702" y="589" target="*v_slow" border="" ][endif]
;;クリ-選択
[clickable width="22" height="20" x="686" y="567" target="*clit" border="" ]
;;手-選択
[if exp="f.h_right!='hands'" ]
[clickable width="78" height="69" x="690" y="68" target="*hands_hands_r" border="" ]
[clickable width="65" height="60" x="710" y="126" target="*hands_hands_r" border="" ][endif]
[if exp="f.h_left!='hands'" ]
[clickable width="86" height="67" x="180" y="343" target="*hands_hands_l" border="" ]
[clickable width="70" height="77" x="190" y="397" target="*hands_hands_l" border="" ][endif]

;;脚-選択
[if exp="f.h_right!='legs'" ]
[clickable width="119" height="184" x="788" y="171" target="*hands_legs_r" border="" ]
[clickable width="36" height="84" x="766" y="209" target="*hands_legs_r" border="" ]
[clickable width="147" height="125" x="740" y="276" target="*hands_legs_r" border="" ][endif]
[if exp="f.h_left!='legs'" ]
[clickable width="192" height="149" x="278" y="577" target="*hands_legs_l" border="" ]
[clickable width="71" height="167" x="446" y="573" target="*hands_legs_l" border="" ][endif]

[call storage="H/Hx_set.ks" target="*H_command" ]
[cancelskip][s]

;;キス
*kiss
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='kiss'" ]
[eval exp="f.h_count=f.h_count+1" ]
[if exp="f.h_act=='m'" ][eval exp="f.h_act='mm'" ]
[elsif exp="f.h_act=='mm'" ][eval exp="f.h_m=f.h_m+1" ]
[else][eval exp="f.h_act='m'" ][endif]

[eval exp="f.h_m=f.h_m+1" ][eval exp="f.love=f.love+1" ]

[if exp="f.h_m<10" ][eval exp="f.s_feel=f.s_feel+2" ][eval exp="f.wet=f.wet+2" ]
[elsif exp="f.h_m<=50" ][eval exp="f.s_feel=f.s_feel+3" ][eval exp="f.wet=f.wet+3" ]
[elsif exp="f.h_m<=250" ][eval exp="f.s_feel=f.s_feel+5" ][eval exp="f.wet=f.wet+5" ]
[else][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ][endif]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]
[if exp="f.h_right=='f'" ][f_slow][eval exp="f.s_feel+7" ][endif]
[if exp="f.h_sex==1" ][eval exp="f.h_v=f.h_v+1" ][v_slow]
[eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.y_feel=f.y_feel+10" ][endif]

[if exp="f.h_act=='mm' && f.h_right=='b' && f.h_left=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vbbm_" ]
[elsif exp="f.h_act=='mm' && f.h_left=='c' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vcm_" ]
[elsif exp="f.h_act=='mm' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vm_" ]
[elsif exp="f.h_act=='mm' && f.h_right=='f' && f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bfm_" ]
[elsif exp="f.h_act=='mm' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_fm_" ]
[elsif exp="f.h_act=='mm' && f.h_right=='b' && f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bbm_" ]
[elsif exp="f.h_act=='mm' && f.h_right=='b' && f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bcm_" ]
[elsif exp="f.h_act=='mm'" ]
	[jump storage="H/Hx_text.ks" target="*tx_m_" ]

[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_left=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vbbm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_left=='c' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vbbm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vbbm" ]
[elsif exp="f.h_act=='m' && f.h_left=='c' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vcm" ]
[elsif exp="f.h_act=='m' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vm" ]
[elsif exp="f.h_act=='m' && f.h_right=='f' && f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bfm" ]
[elsif exp="f.h_act=='m' && f.h_right=='f' && f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_fm" ]
[elsif exp="f.h_act=='m' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_fm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bbm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bcm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bbm" ]
[elsif exp="f.h_act=='m'" ]
	[jump storage="H/Hx_text.ks" target="*tx_m" ]
[endif]

;;胸
*bust_l
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='bust_l'" ]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='b'" ][eval exp="f.h_b=f.h_b+1" ]

[if exp="f.h_b<=20" ][eval exp="f.s_feel=f.s_feel+5" ][eval exp="f.wet=f.wet+5" ]
[elsif exp="f.h_b<=70" ][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ]
[elsif exp="f.h_b<=250" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" ]
[else][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ][endif]
[if exp="f.h_right=='f'" ][f_slow][eval exp="f.s_feel+7" ][endif]
[if exp="f.h_sex==1" ][eval exp="f.h_v=f.h_v+1" ][v_slow]
[eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.y_feel=f.y_feel+10" ][endif]

[if exp="f.h_left=='b' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb_" ]
[elsif exp="f.h_left=='c' && f.h_right=='b' && f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb" ]
[elsif exp="f.h_left=='c' && f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vb" ]
[elsif exp="f.h_right=='b' && f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb" ]
[elsif exp="f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vb" ]
[elsif exp="f.h_left=='b' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_bf_" ]
[elsif exp="f.h_left=='c' && f.h_right=='f'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bf" ]
[elsif exp="f.h_right=='f'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bf" ]
[elsif exp="f.h_left=='b' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb_" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[elsif exp="f.h_left=='c'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_b" ]
[elsif exp="f.h_right=='b'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[elsif exp="f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_b_" ]
[else][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_b" ]
[endif]

*bust_r
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='bust_r'" ]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='b'" ][eval exp="f.h_b=f.h_b+1" ]

[if exp="f.h_right=='f'" ][stopse][endif]
[if exp="f.h_b<=20" ][eval exp="f.s_feel=f.s_feel+5" ][eval exp="f.wet=f.wet+5" ]
[elsif exp="f.h_b<=70" ][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ]
[elsif exp="f.h_b<=250" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" ]
[else][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]
[if exp="f.h_sex==1" ][eval exp="f.h_v=f.h_v+1" ][v_slow]
[eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.y_feel=f.y_feel+10" ][endif]

[if exp="f.h_left=='b' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb_" ]
[elsif exp="f.h_left=='c' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbc_" ]
[elsif exp="f.h_left=='c' && f.h_sex==1" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbc" ]
[elsif exp="f.h_right=='b' && f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb" ]
[elsif exp="f.h_sex==1" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vb" ]
[elsif exp="f.h_left=='b' && f.h_right=='f'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[elsif exp="f.h_left=='c' && f.h_right=='f'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[elsif exp="f.h_right=='f'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_b" ]
[elsif exp="f.h_left=='b' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb_" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_bc_" ]
[elsif exp="f.h_left=='c'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bc" ]
[elsif exp="f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_b_" ]
[elsif exp="f.h_left=='b'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[else][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_b" ]
[endif]

;;クリ
*clit
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='clit'" ]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='c'" ]
[eval exp="f.h_c=f.h_c+1" ][left_c]

[if exp="f.h_c<15" ][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ]
[elsif exp="f.h_c<=60" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" 
[elsif exp="f.h_c<=250" ][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ]
[else][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ][endif]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_right=='f'" ][f_slow][eval exp="f.s_feel+7" ][endif]
[if exp="f.h_sex==1" ][eval exp="f.h_v=f.h_v+1" ][v_slow]
[eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.y_feel=f.y_feel+10" ][endif]


[if exp="f.h_left=='c' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vbc_" ]
[elsif exp="f.h_left=='b' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vbc" ]
[elsif exp="f.h_left=='c' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vc_" ]
[elsif exp="f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vbc" ]
[elsif exp="f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vc" ]
[elsif exp="f.h_left=='c' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_cf_" ]
[elsif exp="f.h_left=='b' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_cf" ]
[elsif exp="f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_cf" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_bc_" ]
[elsif exp="f.h_left=='b' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_bc" ]
[elsif exp="f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_bc" ]
[elsif exp="f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_c_" ]
[else][jump storage="H/Hx_text.ks" target="*tx_c_c" ][endif]

;;指入れ
*f_in
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='f_in'" ]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_v=f.h_v+1" ]
[if exp="f.h_left=='non'" ][left_l][endif]
[eval exp="f.h_right='f'" ][eval exp="f.h_act='f'" ]

[se_nloop st="s-wet2.ogg" ][right_f]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ]
[else][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ][endif]

[if exp="f.wet<=20" ][jump storage="H/Hx_text.ks" target="*tx_fi_a" ]
[elsif exp="f.wet<=70" ][jump storage="H/Hx_text.ks" target="*tx_fi_b" ]
[elsif exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_fi_c" ]
[elsif exp="f.wet<=800" ][jump storage="H/Hx_text.ks" target="*tx_fi_d" ]
[else][jump storage="H/Hx_text.ks" target="*tx_fi_e" ][endif]

*f_off
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='f_off'" ]
[se_nloop st="s-wet2.ogg" ][right_non]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='off'" ]

[if exp="f.wet<70" ][jump storage="H/Hx_text.ks" target="*tx_fo_a" ]
[elsif exp="f.wet<=150" ][jump storage="H/Hx_text.ks" target="*tx_fo_b" ]
[elsif exp="f.wet<=300" ][jump storage="H/Hx_text.ks" target="*tx_fo_c" ]
[else][jump storage="H/Hx_text.ks" target="*tx_fo_d" ][endif]

*f_slow
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='f_slow'" ]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='f'" ][eval exp="f.h_v=f.h_v+1" ]
[f_slow]
[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+12" ][eval exp="f.wet=f.wet+12" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+17" ][eval exp="f.wet=f.wet+17" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+22" ][eval exp="f.wet=f.wet+22" ]
[else][eval exp="f.s_feel=f.s_feel+27" ][eval exp="f.wet=f.wet+27" ][endif]

[if exp="f.h_left=='b'" ][jump storage="H/Hx_text.ks" target="*tx_f_bf" ]
[elsif exp="f.h_left=='c'" ][jump storage="H/Hx_text.ks" target="*tx_f_cf" ]
[else][jump storage="H/Hx_text.ks" target="*tx_f_f" ][endif]

*f_fast
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='f_fast'" ]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='f'" ][eval exp="f.h_v=f.h_v+1" ][f_fast]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ]
[else][eval exp="f.s_feel=f.s_feel+30" ][eval exp="f.wet=f.wet+30" ][endif]

[if exp="f.h_left=='b'" ][jump storage="H/Hx_text.ks" target="*tx_ff_bf" ]
[elsif exp="f.h_left=='c'" ][jump storage="H/Hx_text.ks" target="*tx_ff_cf" ]
[else][jump storage="H/Hx_text.ks" target="*tx_ff_f" ][endif]

;;挿入
*v_in
[cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='v_in'" ]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.love=f.love+1" ]
[eval exp="f.h_act='vi'" ][eval exp="f.h_sex=1" ][eval exp="f.h_v=f.h_v+1" ]
[_]
[if exp="f.h_left=='hands'" ][else][left_l][endif]
[if exp="f.h_right=='hands'" ][else][right_l][endif]
[v_show][v_in]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+12" ][eval exp="f.y_feel=f.y_feel+12" ][eval exp="f.wet=f.wet+12" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+17" ][eval exp="f.y_feel=f.y_feel+17" ][eval exp="f.wet=f.wet+17" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+22" ][eval exp="f.y_feel=f.y_feel+22" ][eval exp="f.wet=f.wet+22" ]
[else][eval exp="f.s_feel=f.s_feel+27" ][eval exp="f.y_feel=f.y_feel+27" ][eval exp="f.wet=f.wet+27" ][endif]

[if exp="f.wet<=20" ][jump storage="H/Hx_text.ks" target="*tx_vi_a" ]
[elsif exp="f.wet<=70" ][jump storage="H/Hx_text.ks" target="*tx_vi_b" ]
[elsif exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_vi_c" ]
[elsif exp="f.wet<=800" ][jump storage="H/Hx_text.ks" target="*tx_vi_d" ]
[else][jump storage="H/Hx_text.ks" target="*tx_vi_e" ][endif]

*v_off
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='v_off'" ]
[eval exp="f.h_count=f.h_count+1" ][left_non][right_non]
[se_nloop st="s-wet1.ogg" ][v_show]
[eval exp="f.h_sex=0" ][eval exp="f.h_act='off'" ]

[if exp="f.wet<50" ][jump storage="H/Hx_text.ks" target="*tx_vo_a" ]
[elsif exp="f.wet<=150" ][jump storage="H/Hx_text.ks" target="*tx_vo_b" ]
[elsif exp="f.wet<=300" ][jump storage="H/Hx_text.ks" target="*tx_vo_c" ]
[else][jump storage="H/Hx_text.ks" target="*tx_vo_d" ][endif]

*v_slow
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='v_slow'" ]
[eval exp="f.h_count=f.h_count+1" ][v_slow]
[eval exp="f.h_act='v'" ][eval exp="f.h_v=f.h_v+1" ]
[eval exp="f.y_feel=f.y_feel+20" ]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]
[if exp="f.h_right=='f'" ][eval exp="f.s_feel+7" ][endif]

[if exp="f.h_v<=25" ][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+30" ][eval exp="f.wet=f.wet+30" ]
[else][eval exp="f.s_feel=f.s_feel+35" ][eval exp="f.wet=f.wet+35" ][endif]

[if exp="f.h_left=='b' && f.h_right=='b'" ][jump storage="H/Hx_text.ks" target="*tx_v_vbb" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ][jump storage="H/Hx_text.ks" target="*tx_v_vbc" ]
[elsif exp="f.h_right=='b'" ][jump storage="H/Hx_text.ks" target="*tx_v_vbb" ]
[elsif exp="f.h_left=='c'" ][jump storage="H/Hx_text.ks" target="*tx_v_vc" ]
[else][jump storage="H/Hx_text.ks" target="*tx_v_v" ][endif]

*v_fast
[_][cm][mod_win st="o/win/Hx_non.png" allow_storage=true ][eval exp="f.last_act='v_fast'" ]
[eval exp="f.h_count=f.h_count+1" ][v_fast]
[eval exp="f.h_act='v'" ][eval exp="f.h_v=f.h_v+1" ][eval exp="f.y_feel=f.y_feel+25" ]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+30" ][eval exp="f.wet=f.wet+30" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+35" ][eval exp="f.wet=f.wet+35" ]
[else][eval exp="f.s_feel=f.s_feel+40" ][eval exp="f.wet=f.wet+40" ]
[endif]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]
[if exp="f.h_right=='f'" ][eval exp="f.s_feel+7" ][endif]

[if exp="f.h_left=='b' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_vv_vbb" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_vv_vbc" ]
[elsif exp="f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_vv_vbb" ]
[elsif exp="f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_vv_vc" ]
[else]
	[jump storage="H/Hx_text.ks" target="*tx_vv_v" ]
[endif]

;;手移動
*hands_off
[cm][eval exp="f.last_act='hand_moved'" ]
[if exp="f.h_right=='f'" ][stopse][endif]
[eval exp="f.h_act='off'" ][left_non][right_non][jump target="*h_def" ]

*hands_hands_r
[cm][eval exp="f.last_act='hand_moved'" ]
[if exp="f.h_right=='f'" ][stopse][endif]
[eval exp="f.h_act='hands'" ][right_h]
[jump target="*h_def" ]

*hands_hands_l
[cm][eval exp="f.last_act='hand_moved'" ]
[eval exp="f.h_act='hands'" ][left_h]
[jump target="*h_def" ]


*hands_legs_r
[cm][eval exp="f.last_act='hand_moved'" ]
[if exp="f.h_right=='f'" ][stopse][endif]
[eval exp="f.h_act='legs'" ][right_l][jump target="*h_def" ]

*hands_legs_l
[cm][eval exp="f.last_act='hand_moved'" ]
[eval exp="f.h_act='legs'" ][left_l][jump target="*h_def" ]

;;絶頂
*ex_both
[eval exp="f.last_act='ex_both'" ]
[eval exp="f.lust=f.lust+1" ][eval exp="f.heavn=f.heavn+1" ]
[eval exp="f.y_ex=f.y_ex+1" ][eval exp="f.s_ex=f.s_ex+1" ]
[eval exp="f.y_feel=0" ][eval exp="f.s_feel=f.s_feel-300" ]
[eval exp="f.wet=f.wet+30" ]
[_][if exp="f.h_cum_pos=='select'" ]
（就快要到極限了…
[button target="*in_cum" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*out_cum" graphic="ch/out-cum.png" x="0" y="350" ][cancelskip][s]
[elsif exp="f.h_cum_pos=='in'" ][jump target="*in_cum" ]
[elsif exp="f.h_cum_pos=='out'" ][jump target="*out_cum" ][endif]

*in_cum
[cm][eval exp="f.cum=f.cum+1" ][cum_in]
[_]（腰部盡情的把精液希露薇注入的深處。[p]
[squi][syl][random_4]
[if exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_both_1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_both_2" ]
[elsif exp="f.wet<=1000 && f.r<=2" ][call storage="H/Hx_text.ks" target="*tx_ex_both_3a" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_both_3b" ]
[elsif exp="f.r==1" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4a" ]
[elsif exp="f.r==2" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4b" ]
[elsif exp="f.r==3" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4c" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_both_4d" ][endif]
[_]（射精的同時希露薇因為絕頂而震盪著[r]
肉襞震動著陰莖渴望獲得更多的精液[p]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]
[jump target="*h_def" ]

*out_cum
[cm][eval exp="f.kake=f.kake+1" ][cum_out]
[_]（到達極限的瞬間拔出陰莖、對希露薇身體上吐出精液。[p]
[if exp="f.h_in>=8" ][chara_part name="Hx1" z-b="Hx1/z2/z5.png" allow_storage=true ]
[elsif exp="f.h_in>=6" ][chara_part name="Hx1" z-b="Hx1/z2/z4.png" allow_storage=true ]
[elsif exp="f.h_in>=4" ][chara_part name="Hx1" z-b="Hx1/z2/z3.png" allow_storage=true ]
[elsif exp="f.h_in>=3" ][chara_part name="Hx1" z-b="Hx1/z2/z2.png" allow_storage=true ]
[elsif exp="f.h_in==2" ][chara_part name="Hx1" z-b="Hx1/z2/z1.png" allow_storage=true ]
[else][chara_part name="Hx1" z-b="00.png" allow_storage=true ][endif]

[squi][syl][random_4]
[if exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_both_1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_both_2" ]
[elsif exp="f.wet<=1000 && f.r<=2" ][call storage="H/Hx_text.ks" target="*tx_ex_both_3a" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_both_3b" ]
[elsif exp="f.r==1" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4a" ]
[elsif exp="f.r==2" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4b" ]
[elsif exp="f.r==3" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4c" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_both_4d" ][endif]
[_]（射精的同時希露薇高潮吹起、兩人的性器官刮起的體液從空中散開。[p]
[left_non][right_non][cum_add][v_show]

[eval exp="f.h_sex=0" ][eval exp="f.h_act='off'" ]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]
[jump target="*h_def" ]

*ex_s
[eval exp="f.lust=f.lust+1" ][eval exp="f.heavn=f.heavn+1" ]
[eval exp="f.s_ex=f.s_ex+1" ][eval exp="f.s_feel=f.s_feel-300" ]
[eval exp="f.wet=f.wet+30" ]

[_]（希露薇的身體大浮度的絕頂顫抖著。[p]
[squi][syl][random_4]
[if exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_s1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_s2" ]
[elsif exp="f.wet<=1000 && f.r<=2" ][call storage="H/Hx_text.ks" target="*tx_ex_s3a" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_s3b" ]
[elsif exp="f.r==1" ][call storage="H/Hx_text.ks" target="*tx_ex_s4a" ]
[elsif exp="f.r==2" ][call storage="H/Hx_text.ks" target="*tx_ex_s4b" ]
[elsif exp="f.r==3" ][call storage="H/Hx_text.ks" target="*tx_ex_s4c" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_s4d" ][endif]

[if exp="f.y_feel>=200" ][jump target="*ex_sy" ][endif]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]

[jump target="*h_def" ]

*ex_sy
[eval exp="f.last_act='ex_sy'" ][set_y_feel]
[eval exp="f.y_feel=0" ][eval exp="f.y_ex=f.y_ex+1" ]
[_]（在她絕頂時、強忍著快感、拔出了陰莖射在了她的嬌軀上。[p]
[if exp="f.h_cum_pos=='select'" ]
[button target="*sy_in_cum" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*sy_out_cum" graphic="ch/out-cum.png" x="0" y="350" ][cancelskip][s]
[elsif exp="f.h_cum_pos=='in'" ][jump target="*sy_in_cum ]
[elsif exp="f.h_cum_pos=='out'" ][jump target="*sy_out_cum" ]
[endif]

*sy_in_cum
[cm][eval exp="f.cum=f.cum+1" ][cum_in]
[_]（腰部抽打著盡情的往顫抖的子宮裏注入精液。[p]
[syl][if exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_in1" ]
[elsif exp="f.wet<=600" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_in2" ]
[elsif exp="f.wet<=1000" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_in3" ]
[else][jump storage="H/Hx_text.ks" target="*tx_ex_sy_in4" ][endif]

*sy_out_cum
[cm][eval exp="f.kake=f.kake+1" ][cum_out]
[_]（到達極限的瞬間拔出陰莖、對希露薇身體上吐出精液。[p]
[if exp="f.h_in>=8" ][chara_part name="Hx1" z-b="Hx1/z2/z5.png" allow_storage=true ]
[elsif exp="f.h_in>=6" ][chara_part name="Hx1" z-b="Hx1/z2/z4.png" allow_storage=true ]
[elsif exp="f.h_in>=4" ][chara_part name="Hx1" z-b="Hx1/z2/z3.png" allow_storage=true ]
[elsif exp="f.h_in>=3" ][chara_part name="Hx1" z-b="Hx1/z2/z2.png" allow_storage=true ]
[elsif exp="f.h_in==2" ][chara_part name="Hx1" z-b="Hx1/z2/z1.png" allow_storage=true ]
[else][chara_part name="Hx1" z-b="00.png" allow_storage=true ][endif]

[left_non][right_non][cum_add][v_show]
[eval exp="f.h_sex=0" ][eval exp="f.h_act='off'" ]
[_]（灑落在颤抖的希露薇的身体上的精液散髮出點點光芒…。[p]
[syl][if exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_out1" ]
[elsif exp="f.wet<=600" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_out2" ]
[elsif exp="f.wet<=1000" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_out3" ]
[else][jump storage="H/Hx_text.ks" target="*tx_ex_sy_out4" ][endif]

*ex_y
[eval exp="f.last_act='ex_y'" ]
[eval exp="f.y_ex=f.y_ex+1" ][eval exp="f.y_feel=0" ][eval exp="f.wet=f.wet+30" ]
[_][if exp="f.h_cum_pos=='select'" ]
（就快要到極限了…
[button target="*y_in_cum" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*y_out_cum" graphic="ch/out-cum.png" x="0" y="350" ][cancelskip][s]
[elsif exp="f.h_cum_pos=='in'" ][jump target="*y_in_cum" ]
[elsif exp="f.h_cum_pos=='out'" ][jump target="*y_out_cum" ]
[endif]

*y_in_cum
[cm][eval exp="f.cum=f.cum+1" ][cum_in]
[_]（盡情的腰在子宮的最深處注入精液。[p]
[if exp="f.wet<=150" ][call storage="H/Hx_text.ks" target="*tx_ex_y_in0" ]
[elsif exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_y_in1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_y_in2" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_y_in3" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_y_in4" ][endif]

[if exp="f.s_feel>=250" ][jump target="*ex_ys" ][endif]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]
[jump target="*h_def" ]

*ex_ys
[set_s_feel]
[eval exp="f.lust=f.lust+1" ][eval exp="f.heavn=f.heavn+1" ]
[eval exp="f.s_ex=f.s_ex+1" ][eval exp="f.s_feel=f.s_feel-300" ]
[eval exp="f.wet=f.wet+30" ]
（希露薇的子宮接觸到熾熱的精液讓小腹顫抖不已。[p]
[squi][syl][random_4]
[if exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_s1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_s2" ]
[elsif exp="f.wet<=1000 && f.r<=2" ][call storage="H/Hx_text.ks" target="*tx_ex_s3a" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_s3b" ]
[elsif exp="f.r==1" ][call storage="H/Hx_text.ks" target="*tx_ex_s4a" ]
[elsif exp="f.r==2" ][call storage="H/Hx_text.ks" target="*tx_ex_s4b" ]
[elsif exp="f.r==3" ][call storage="H/Hx_text.ks" target="*tx_ex_s4c" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_s4d" ][endif]
[eval exp="f.y_feel=f.y_feel-30" ]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]
[jump target="*h_def" ]

*y_out_cum
[cm][eval exp="f.kake=f.kake+1" ][cum_out]
[_]（到達極限的瞬間拔出陰莖、對希露薇身體上吐出精液。[p]
[if exp="f.h_in>=8" ][chara_part name="Hx1" z-b="Hx1/z2/z5.png" allow_storage=true ]
[elsif exp="f.h_in>=6" ][chara_part name="Hx1" z-b="Hx1/z2/z4.png" allow_storage=true ]
[elsif exp="f.h_in>=4" ][chara_part name="Hx1" z-b="Hx1/z2/z3.png" allow_storage=true ]
[elsif exp="f.h_in>=3" ][chara_part name="Hx1" z-b="Hx1/z2/z2.png" allow_storage=true ]
[elsif exp="f.h_in==2" ][chara_part name="Hx1" z-b="Hx1/z2/z1.png" allow_storage=true ]
[else][chara_part name="Hx1" z-b="00.png" allow_storage=true ][endif]

[left_non][right_non][cum_add][v_show]
[eval exp="f.h_sex=0" ][eval exp="f.h_act='off'" ]

[if exp="f.wet<=150" ][jump storage="H/Hx_text.ks" target="*tx_ex_y_out0" ]
[elsif exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_ex_y_out1" ]
[elsif exp="f.wet<=600" ][jump storage="H/Hx_text.ks" target="*tx_ex_y_out2" ]
[elsif exp="f.wet<=1000" ][jump storage="H/Hx_text.ks" target="*tx_ex_y_out3" ]
[else][jump storage="H/Hx_text.ks" target="*tx_ex_y_out4" ][endif]

;;体位変更
*change_style
[cm][eval exp="f.last_act='change_style'" ]
[if exp="f.h_sex==1" ][eval exp="f.h_sex=0" ][left_non][right_non][se_nloop st="s-wet1.ogg" ][v_show][endif]
[if exp="f.h_act!='non'" ][eval exp="f.h_act='off'" ][endif]
[eval exp="f.h_style='sit'" ]

[black][xf/reset]
[_]（把希露薇的身體抬起跨在膝蓋上[p]
[jump storage="H/Hx2.ks" target="*show" ]
