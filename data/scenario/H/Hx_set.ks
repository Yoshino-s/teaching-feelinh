;;メニュー表示
*H_command
[if exp="f.h_menu=='act'" ][button storage="H/Hx_set.ks" target="*menu_act" graphic="Hx/menu_act.png" x="1105" y="5" exp="f.system_act=1" ]
[else][button storage="H/Hx_set.ks" target="*menu_act" graphic="Hx/menu_act-.png" x="1105" y="5" exp="f.system_act=1" ][endif]
[if exp="f.h_menu=='setting'" ][button storage="H/Hx_set.ks" target="*menu_setting" graphic="Hx/menu_setting.png" x="1170" y="5" exp="f.system_act=1" ]
[else][button storage="H/Hx_set.ks" target="*menu_setting" graphic="Hx/menu_setting-.png" x="1170" y="5" exp="f.system_act=1" ][endif]
[if exp="f.h_menu=='off'" ][button storage="H/Hx_set.ks" target="*menu_off" graphic="Hx/menu_off.png" x="1235" y="5" exp="f.system_act=1" ]
[else][button storage="H/Hx_set.ks" target="*menu_off" graphic="Hx/menu_off-.png" x="1235" y="5" exp="f.system_act=1" ][endif]

[if exp="f.h_menu=='act' && f.h_style=='def'" ][h_hand_off_def]
[elsif exp="f.h_menu=='act' && f.h_style=='sit'" ][h_hand_off_sit][endif]

[if exp="f.h_menu=='act'" ][h_menu_act]
[elsif exp="f.h_menu=='setting'" ][h_menu_setting][endif]
[return]

*menu_act
[cm][eval exp="f.h_menu='act'" ][mod_win st="o/win/Hx_act.png" ][h_def]
*menu_setting
[cm][eval exp="f.h_menu='setting'" ][mod_win st="o/win/Hx_setting.png" ][h_def]
*menu_off
[cm][eval exp="f.h_menu='off'" ][mod_win st="o/win/Hx_non.png" ][h_def]

;;ベッド以降直後設定
*pre_Hx
[eval exp="f.h_count=0" ][eval exp="f.repeat_mode=0" ]
[eval exp="f.h_right='non',f.h_left='non',f.h_sex=0" ]
[eval exp="f.h_v_select='finger',f.h_v_speed='normal'" ]
[eval exp="f.h_in=0,f.h_out=0,f.s_ex=0,f.y_ex=0,f.s_feel=0,f.y_feel=0,f.h_z_in=0" ]
[eval exp="f.h_menu='act'" ][mod_win st="o/win/Hx_act.png" ]

[h_x st="00.png" ]
[if exp="f.mood=='lust' && f.lust<=1000" ][eval exp="f.wet=200" ]
[elsif exp="f.mood=='calm' && f.lust>=1000" ][eval exp="f.wet=130" ]
[elsif exp="f.lust<=5" ][eval exp="f.wet=0" ]
[elsif exp="f.lust<=20" ][eval exp="f.wet=10" ]
[elsif exp="f.lust<=100" ][eval exp="f.wet=30" ]
[elsif exp="f.lust<=200" ][eval exp="f.wet=70" ]
[elsif exp="f.mood=='calm'" ][eval exp="f.wet=70" ]
[elsif exp="f.lust<=350" ][eval exp="f.wet=100" ]
[elsif exp="f.lust<=500" ][eval exp="f.wet=130" ]
[elsif exp="f.lust<=1000" ][eval exp="f.wet=200" ]
[else][eval exp="f.wet=300" ][endif][xf/reset]

[if exp="f.h_act=='self' || f.h_act=='mouth'" ][eval exp="f.wet=f.wet+30" ][endif]
[eval exp="f.h_act='non'" ][set_win_frame_h]
;[show_repeat_role_Hx]


;;行動メニュー
[macro name="h_menu_act"][mod_win st="o/win/Hx_act.png" ]
[if exp="f.h_sex==1" ][elsif exp="f.h_v_select=='finger'" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/sex_fing.png" x="1004" y="98" exp="f.system_act=1" ][else]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/sex_fing-.png" x="1004" y="98" exp="f.h_v_select='finger',f.system_act=1" ][endif]
[if exp="f.h_right=='f'" ][elsif exp="f.h_v_select=='sex'" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/sex_sex.png" x="1112" y="98" exp="f.system_act=1" ]
[elsif exp="f.wet>=30" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/sex_sex-.png" x="1112" y="98" exp="f.h_v_select='sex',f.system_act=1" ][endif]
[if exp="f.h_sex==1" ][button target="*v_off" graphic="Hx/sex_off.png" x="1192" y="97" ][endif]
[if exp="f.h_right=='f'" ][button target="*f_off" graphic="Hx/sex_off.png" x="1192" y="97" ][endif]

[if exp="f.h_v_speed=='normal'" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/sex_def.png" x="1027" y="148" exp="f.system_act=1 ][else]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/sex_def-.png" x="1027" y="148" exp="f.h_v_speed='normal',f.system_act=1" ][endif]
[if exp="f.h_v_speed=='fast'" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/sex_hard.png" x="1143" y="148" exp="f.system_act=1 ]
[elsif exp="f.wet>=400" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/sex_hard-.png" x="1143" y="148" exp="f.h_v_speed='fast',f.system_act=1" ][endif]
[if exp="f.h_style=='def' && f.love>=500" ]
[button storage="H/Hx.ks" target="*change_style" graphic="Hx/sty_sit.png" x="1076" y="208" ][else]
[button storage="H/Hx2.ks" target="*change_style" graphic="Hx/sty_def.png" x="1076" y="208" ][endif]

[if exp="f.Hx_dress==1" ][button storage="H/Hx_set.ks" target="*off_dress" graphic="Hx/uw_dress.png" x="1064" y="279" exp="f.system_act=1 ][endif]
[if exp="f.Hx_socks==1" ][button storage="H/Hx_set.ks" target="*off_socks" graphic="Hx/uw_socks.png" x="1124" y="279" exp="f.system_act=1 ][endif]
[if exp="f.Hx_ribbon==1" ][button storage="H/Hx_set.ks" target="*off_ribbon" graphic="Hx/uw_ribbon.png" x="1208" y="279" exp="f.system_act=1 ][endif]
[if exp="f.Hx_pin==1" ][button storage="H/Hx_set.ks" target="*off_pin" graphic="Hx/uw_pin.png" x="1064" y="327" exp="f.system_act=1 ][endif]
[if exp="f.Hx_glasses==1" ][button storage="H/Hx_set.ks" target="*off_glasses" graphic="Hx/uw_glasses.png" x="1170" y="327" exp="f.system_act=1 ][endif]
[if exp="f.Hx_dress==1 || f.Hx_socks==1 || f.Hx_ribbon==1 || f.Hx_pin==1 || f.Hx_glasses==1" ]
[button storage="H/Hx_set.ks" target="*off_all" graphic="Hx/uw_all.png" x="977" y="312" exp="f.system_act=1 ][endif]

[button storage="H/Hx_set.ks" target="*state" graphic="Hx/other_syl.png" x="990" y="439" exp="f.system_act=1 ]
[button storage="H/Hx_set.ks" target="*stop" graphic="Hx/other_done.png" x="1153" y="439" ]
[endmacro]


;;設定メニュー
[macro name="h_menu_setting"][mod_win st="o/win/Hx_setting.png" ]
[if exp="f.h_cum_pos=='select'" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/cum_select.png" x="1043" y="117" exp="f.system_act=1 ][else]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/cum_select-.png" x="1043" y="117" exp="f.h_cum_pos='select',f.system_act=1" ][endif]
[if exp="f.h_cum_pos=='in'" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/cum_in.png" x="1135" y="117" exp="f.system_act=1 ][else]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/cum_in-.png" x="1135" y="117" exp="f.h_cum_pos='in',f.system_act=1" ][endif]
[if exp="f.h_cum_pos=='out'" ]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/cum_out.png" x="1200" y="117" exp="f.system_act=1 ][else]
[button storage="H/Hx_set.ks" target="*h_def" graphic="Hx/cum_out-.png" x="1200" y="117" exp="f.h_cum_pos='out',f.system_act=1" ][endif]

[if exp="f.h_xr==1" ][button storage="H/Hx_set.ks" target="*x_ray_off" graphic="Hx/ef_xr.png" x="1045" y="212" exp="f.system_act=1 ]
[else][button storage="H/Hx_set.ks" target="*x_ray_on" graphic="Hx/ef_xr-.png" x="1045" y="212" exp="f.system_act=1 ][endif]
;[if exp="f.h_tx==1" ][button storage="H/Hx_set.ks" target="*effect_off" graphic="Hx/ef_tx.png" x="1170" y="212" ]
;[else][button storage="H/Hx_set.ks" target="*effect_on" graphic="Hx/ef_tx-.png" x="1170" y="212" ][endif]
[if exp="f.h_ef==1" ][button storage="H/Hx_set.ks" target="*effect_off" graphic="Hx/ef_ef.png" x="1045" y="263" exp="f.system_act=1 ]
[else][button storage="H/Hx_set.ks" target="*effect_on" graphic="Hx/ef_ef-.png" x="1045" y="263" exp="f.system_act=1 ][endif]

[if exp="f.h_win=='a'" ][button storage="H/Hx_set.ks" target="*non" graphic="Hx/win_a.png" x="1031" y="369" exp="f.system_act=1 ]
[else][button storage="H/Hx_set.ks" target="*win" graphic="Hx/win_a-.png" x="1031" y="369" exp="f.h_win='a',f.system_act=1" ][endif]
[if exp="f.h_win=='b'" ][button storage="H/Hx_set.ks" target="*non" graphic="Hx/win_b.png" x="1084" y="369" exp="f.system_act=1 ]
[else][button storage="H/Hx_set.ks" target="*win" graphic="Hx/win_b-.png" x="1084" y="369" exp="f.h_win='b',f.system_act=1" ][endif]
[if exp="f.h_win=='c'" ][button storage="H/Hx_set.ks" target="*non" graphic="Hx/win_c.png" x="1137" y="369" exp="f.system_act=1 ]
[else][button storage="H/Hx_set.ks" target="*win" graphic="Hx/win_c-.png" x="1137" y="369" exp="f.h_win='c',f.system_act=1" ][endif]
[if exp="f.h_win=='d'" ][button storage="H/Hx_set.ks" target="*non" graphic="Hx/win_d.png" x="1190" y="369" exp="f.system_act=1 ]
[else][button storage="H/Hx_set.ks" target="*win" graphic="Hx/win_d-.png" x="1190" y="369" exp="f.h_win='d',f.system_act=1" ][endif]
[endmacro]

[macro name="h_hand_off_def"]
[if exp="f.h_right=='non' && f.h_left=='non'" ][else]
[button target="*hands_off" graphic="Hx/other_off.png" x="1066" y="391" ][endif][endmacro]

[macro name="h_hand_off_sit"]
[if exp="f.h_right=='b' || f.h_left=='b' || f.h_right=='f' || f.h_left=='c'" ]
[button target="*hands_off" graphic="Hx/other_off.png" x="1066" y="391" ][endif][endmacro]

[macro name="H_text_non_repeat"]
[if exp="f.repeat_mode==1 && f.repeat_mode_c==1" ][jump storage="H/Hx_text.ks" target="*tx_calc" ]
[elsif exp="f.repeat_mode==1" ][eval exp="f.repeat_mode_c=1" ][endif][endmacro]
[macro name="H_text_non_repeat_m"]
[if exp="f.repeat_mode==1 && f.repeat_mode_c==1" ][jump storage="H/Hx_text.ks" target="*m_calc" ]
[elsif exp="f.repeat_mode==1" ][eval exp="f.repeat_mode_c=1" ][endif][endmacro]
[macro name="H_text_non_repeat_v"]
[if exp="f.repeat_mode==1 && f.repeat_mode_c==1" ][jump storage="H/Hx_text.ks" target="*v_calc" ]
[elsif exp="f.repeat_mode==1" ][eval exp="f.repeat_mode_c=1" ][endif][endmacro]

[macro name="H_text_non_repeat_adj"]
[if exp="f.skip_mode==1" ][random_3][endif]
[if exp="f.skip_mode==1 && f.r==1" ][eval exp="f.r=100" ][endif]
[endmacro]

[return]

;;ボタンアクション/脱衣
*off_dress
[cm][if exp="f.h_right=='f'" ][se_nloop st="s-wet2.ogg" ][endif]
[if exp="f.h_style=='def'" ][right_non][left_non][else][left_l][right_l][endif]
[set_black][eval exp="f.h_act='off'" ]
;[_]…。[p]
;[_]（希露薇脫下衣服。[p]
[eval exp="f.h_out=0" ][eval exp="f.Hx_dress=0" ]
[if exp="f.h_style=='def'" ]
[chara_part name="Hx1" dress="00.png" z-a="00.png" allow_storage=true ][else]
[chara_part name="Hx2" dress="00.png" z-a="00.png" allow_storage=true ][endif]
[wait time=300 ][hide_black][h_def]

*off_socks
[cm][if exp="f.h_right=='f'" ][se_nloop st="s-wet2.ogg" ][endif]
[if exp="f.h_style=='def'" ][right_non][left_non][else][left_l][right_l][endif]
[set_black][eval exp="f.h_act='off'" ][eval exp="f.Hx_socks=0" ]
;[_]…。[p]
;[_]（希露薇脫下襪子。[p]
[if exp="f.h_style=='def'" ]
[chara_part name="Hx1" socks="00.png" allow_storage=true ][else]
[chara_part name="Hx2" socks="00.png" allow_storage=true ][endif]
[wait time=200 ][hide_black][h_def]

*off_ribbon
[cm][eval exp="f.Hx_ribbon=0" ]
[if exp="f.h_style=='def'" ]
[chara_part name="Hx1" hair_b="Hx1/hair/nr_.png" ribbon="Hx1/hair/nr.png" hat="00.png" ribbon_b="00.png" time="300" wait="true" allow_storage=true ]
[else]
[chara_part name="Hx2" hair_b="Hx2/hair/nr_.png" ribbon="Hx2/hair/nr.png" hat="00.png" ribbon_b="00.png" time="300" wait="true" allow_storage=true ]
[endif][h_def]

*off_pin
[cm][eval exp="f.Hx_pin=0" ]
[if exp="f.h_style=='def'" ]
[chara_part name="Hx1" pin="00.png" hair_f="Hx1/body/fh.png" time="300" wait="true" allow_storage=true ]
[else]
[chara_part name="Hx2" pin="00.png" hair_f="Hx2/body/fh.png" time="300" wait="true" allow_storage=true ]
[endif][h_def]

*off_glasses
[cm][eval exp="f.Hx_glasses=0" ]
[if exp="f.h_style=='def'" ]
[chara_part name="Hx1" glasses="00.png" time="200" allow_storage=true ][else]
[chara_part name="Hx2" glasses="00.png" time="200" allow_storage=true ][endif][h_def]

*off_all
[cm][if exp="f.h_right=='f'" ][se_nloop st="s-wet2.ogg" ][endif]
[if exp="f.h_style=='def'" ][right_non][left_non][else][left_l][right_l][endif]
[set_black][eval exp="f.h_act='off'" ]
;[_]…。[p]
;（希露薇脫下了身體上的全部東西。
[eval exp="f.Hx_dress=0,f.Hx_socks=0,f.Hx_ribbon=0,f.Hx_pin=0,f.Hx_glasses=0" ]
[if exp="f.h_style=='def'" ]
[chara_part name="Hx1" dress="00.png" socks="00.png" ribbon_b="00.png" pin="00.png" glasses="00.png" hat="00.png" allow_storage=true ]
[chara_part name="Hx1" hair_f="Hx1/body/fh.png" hair_b="Hx1/hair/nr_.png" ribbon="Hx1/hair/nr.png" allow_storage=true ]
[else]
[chara_part name="Hx2" dress="00.png" socks="00.png" ribbon_b="00.png" pin="00.png" glasses="00.png" hat="00.png" allow_storage=true ]
[chara_part name="Hx2" hair_f="Hx2/body/fh.png" hair_b="Hx2/hair/nr_.png" ribbon="Hx2/hair/nr.png" allow_storage=true ]
[endif]
[wait time=300 ][hide_black][h_def]

;;ボタンアクション/他

*non
[cm][h_def]
*h_def
[cm][h_def]
*win
[cm][set_win_frame_h][h_def]
*state
[cm][eval exp="f.h_state=1" ][jump storage="H/Hx_text.ks" target="*desc_calc" ]

*x_ray_off
[cm][eval exp="f.h_xr=0" ][chara_hide name="x" time="0" wait="true" ][h_def]
*x_ray_on
[cm][eval exp="f.h_xr=1" ][chara_show name="x" time="0" wait="true" left="0.1" zindex="85" ][h_def]
*effect_off
[cm][eval exp="f.h_ef=0" ][chara_hide name="ef" time="0" wait="true" ][h_def]
*effect_on
[cm][eval exp="f.h_ef=1" ][chara_show name="ef" time="0" wait="true" left="0.1" zindex="110" ][h_def]

*stop
[cm][stop_se]
[if exp="f.h_style=='def'" ][left_non][right_non][else][left_l][right_l][endif]
[if exp="f.h_sex==1" ][se_nloop st="s-wet1.ogg" ][v_show][endif]
[_][if exp="f.wet>=1000" ][jump storage="H/Hx_text.ks" target="*tx_stop6" ]
[elsif exp="f.wet>=600" ][jump storage="H/Hx_text.ks" target="*tx_stop5" ]
[elsif exp="f.wet>=250" ][jump storage="H/Hx_text.ks" target="*tx_stop4" ]
[elsif exp="f.wet>=150" ][jump storage="H/Hx_text.ks" target="*tx_stop3" ]
[elsif exp="f.wet>=80" ][jump storage="H/Hx_text.ks" target="*tx_stop2" ]
[else][jump storage="H/Hx_text.ks" target="*tx_stop1" ][endif]
