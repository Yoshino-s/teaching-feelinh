;;コンフィグ
*config
[cm][free_chara][free_layermode][chara_config pos_mode="false" anim="false" ]
[nolog][hide_message_w][hide_role][current layer="message0" ]
[bg time="100" method="crossfade" storage="bg/config.jpg" ]
[chara_mod name="x" time="0" storage="o/other/config_xr.png" ]
[chara_mod name="se" time="0" storage="o/other/config_se.png" ]
[chara_mod name="tx" time="0" storage="o/other/config_tx.png" ]
[chara_mod name="ef" time="0" storage="o/other/config_ef.png" ]
[if exp="sf.xr==1" ][chara_show name="x" time="0" wait="false" left="0.1" ][endif]
[if exp="sf.tx==1" ][chara_show name="tx" time="0" wait="false" left="0.1" ][endif]
[if exp="sf.se==1" ][chara_show name="se" time="0" wait="false" left="0.1" ][endif]
[if exp="sf.ef==1" ][chara_show name="ef" time="0" wait="false" left="0.1" ][endif]

*select
[button target="*awake" graphic="config/back.png" x="1242" y="855" ]
[if exp="sf.full==0" ][button target="*full_screen" graphic="config/win.png" x="167" y="128" ]
[else][button target="*full_screen" graphic="config/full.png" x="167" y="128" ][endif]

;;1-10ボタン------------------------------------------------------------------------------------
[if exp="sf.text==1" ][button target="*tx_speed1" graphic="config/1.png" x="183" y="311" ]
[else][button target="*tx_speed1" graphic="config/1-.png" x="183" y="311" ][endif]
[if exp="sf.text==2" ][button target="*tx_speed2" graphic="config/2.png" x="226" y="311" ]
[else][button target="*tx_speed2" graphic="config/2-.png" x="226" y="311" ][endif]
[if exp="sf.text==3" ][button target="*tx_speed3" graphic="config/3.png" x="269" y="311" ]
[else][button target="*tx_speed3" graphic="config/3-.png" x="269" y="311" ][endif]
[if exp="sf.text==4" ][button target="*tx_speed4" graphic="config/4.png" x="312" y="311" ]
[else][button target="*tx_speed4" graphic="config/4-.png" x="312" y="311" ][endif]
[if exp="sf.text==5" ][button target="*tx_speed5" graphic="config/5.png" x="355" y="311" ]
[else][button target="*tx_speed5" graphic="config/5-.png" x="355" y="311" ][endif]
[if exp="sf.text==6" ][button target="*tx_speed6" graphic="config/6.png" x="398" y="311" ]
[else][button target="*tx_speed6" graphic="config/6-.png" x="398" y="311" ][endif]
[if exp="sf.text==7" ][button target="*tx_speed7" graphic="config/7.png" x="441" y="311" ]
[else][button target="*tx_speed7" graphic="config/7-.png" x="441" y="311" ][endif]
[if exp="sf.text==8" ][button target="*tx_speed8" graphic="config/8.png" x="484" y="311" ]
[else][button target="*tx_speed8" graphic="config/8-.png" x="484" y="311" ][endif]
[if exp="sf.text==9" ][button target="*tx_speed9" graphic="config/9.png" x="527" y="311" ]
[else][button target="*tx_speed9" graphic="config/9-.png" x="527" y="311" ][endif]
[if exp="sf.text==10" ][button target="*tx_speed10" graphic="config/10.png" x="570" y="311" ]
[else][button target="*tx_speed10" graphic="config/10-.png" x="570" y="311" ][endif]

[if exp="sf.auto==1" ][button target="*txa_speed1" graphic="config/1.png" x="183" y="414" ]
[else][button target="*txa_speed1" graphic="config/1-.png" x="183" y="414" ][endif]
[if exp="sf.auto==2" ][button target="*txa_speed2" graphic="config/2.png" x="226" y="414" ]
[else][button target="*txa_speed2" graphic="config/2-.png" x="226" y="414" ][endif]
[if exp="sf.auto==3" ][button target="*txa_speed3" graphic="config/3.png" x="269" y="414" ]
[else][button target="*txa_speed3" graphic="config/3-.png" x="269" y="414" ][endif]
[if exp="sf.auto==4" ][button target="*txa_speed4" graphic="config/4.png" x="312" y="414" ]
[else][button target="*txa_speed4" graphic="config/4-.png" x="312" y="414" ][endif]
[if exp="sf.auto==5" ][button target="*txa_speed5" graphic="config/5.png" x="355" y="414" ]
[else][button target="*txa_speed5" graphic="config/5-.png" x="355" y="414" ][endif]
[if exp="sf.auto==6" ][button target="*txa_speed6" graphic="config/6.png" x="398" y="414" ]
[else][button target="*txa_speed6" graphic="config/6-.png" x="398" y="414" ][endif]
[if exp="sf.auto==7" ][button target="*txa_speed7" graphic="config/7.png" x="441" y="414" ]
[else][button target="*txa_speed7" graphic="config/7-.png" x="441" y="414" ][endif]
[if exp="sf.auto==8" ][button target="*txa_speed8" graphic="config/8.png" x="484" y="414" ]
[else][button target="*txa_speed8" graphic="config/8-.png" x="484" y="414" ][endif]
[if exp="sf.auto==9" ][button target="*txa_speed9" graphic="config/9.png" x="527" y="414" ]
[else][button target="*txa_speed9" graphic="config/9-.png" x="527" y="414" ][endif]
[if exp="sf.auto==10" ][button target="*txa_speed10" graphic="config/10.png" x="570" y="414" ]
[else][button target="*txa_speed10" graphic="config/10-.png" x="570" y="414" ][endif]

[if exp="sf.bgm==0" ][button target="*bgm_vol0" graphic="config/off.png" x="573" y="579" ]
[else][button target="*bgm_vol0" graphic="config/off-.png" x="573" y="579" ][endif]
[if exp="sf.bgm==1" ][button target="*bgm_vol1" graphic="config/1.png" x="183" y="626" ]
[else][button target="*bgm_vol1" graphic="config/1-.png" x="183" y="626" ][endif]
[if exp="sf.bgm==2" ][button target="*bgm_vol2" graphic="config/2.png" x="226" y="626" ]
[else][button target="*bgm_vol2" graphic="config/2-.png" x="226" y="626" ][endif]
[if exp="sf.bgm==3" ][button target="*bgm_vol3" graphic="config/3.png" x="269" y="626" ]
[else][button target="*bgm_vol3" graphic="config/3-.png" x="269" y="626" ][endif]
[if exp="sf.bgm==4" ][button target="*bgm_vol4" graphic="config/4.png" x="312" y="626" ]
[else][button target="*bgm_vol4" graphic="config/4-.png" x="312" y="626" ][endif]
[if exp="sf.bgm==5" ][button target="*bgm_vol5" graphic="config/5.png" x="355" y="626" ]
[else][button target="*bgm_vol5" graphic="config/5-.png" x="355" y="626" ][endif]
[if exp="sf.bgm==6" ][button target="*bgm_vol6" graphic="config/6.png" x="398" y="626" ]
[else][button target="*bgm_vol6" graphic="config/6-.png" x="398" y="626" ][endif]
[if exp="sf.bgm==7" ][button target="*bgm_vol7" graphic="config/7.png" x="441" y="626" ]
[else][button target="*bgm_vol7" graphic="config/7-.png" x="441" y="626" ][endif]
[if exp="sf.bgm==8" ][button target="*bgm_vol8" graphic="config/8.png" x="484" y="626" ]
[else][button target="*bgm_vol8" graphic="config/8-.png" x="484" y="626" ][endif]
[if exp="sf.bgm==9" ][button target="*bgm_vol9" graphic="config/9.png" x="527" y="626" ]
[else][button target="*bgm_vol9" graphic="config/9-.png" x="527" y="626" ][endif]
[if exp="sf.bgm==10" ][button target="*bgm_vol10" graphic="config/10.png" x="570" y="626" ]
[else][button target="*bgm_vol10" graphic="config/10-.png" x="570" y="626" ][endif]

[if exp="sf.se_v==0" ][button target="*se_vol0" graphic="config/off.png" x="573" y="683" ]
[else][button target="*se_vol0" graphic="config/off-.png" x="573" y="683" ][endif]
[if exp="sf.se_v==1" ][button target="*se_vol1" graphic="config/1.png" x="183" y="730" ]
[else][button target="*se_vol1" graphic="config/1-.png" x="183" y="730" ][endif]
[if exp="sf.se_v==2" ][button target="*se_vol2" graphic="config/2.png" x="226" y="730" ]
[else][button target="*se_vol2" graphic="config/2-.png" x="226" y="730" ][endif]
[if exp="sf.se_v==3" ][button target="*se_vol3" graphic="config/3.png" x="269" y="730" ]
[else][button target="*se_vol3" graphic="config/3-.png" x="269" y="730" ][endif]
[if exp="sf.se_v==4" ][button target="*se_vol4" graphic="config/4.png" x="312" y="730" ]
[else][button target="*se_vol4" graphic="config/4-.png" x="312" y="730" ][endif]
[if exp="sf.se_v==5" ][button target="*se_vol5" graphic="config/5.png" x="355" y="730" ]
[else][button target="*se_vol5" graphic="config/5-.png" x="355" y="730" ][endif]
[if exp="sf.se_v==6" ][button target="*se_vol6" graphic="config/6.png" x="398" y="730" ]
[else][button target="*se_vol6" graphic="config/6-.png" x="398" y="730" ][endif]
[if exp="sf.se_v==7" ][button target="*se_vol7" graphic="config/7.png" x="441" y="730" ]
[else][button target="*se_vol7" graphic="config/7-.png" x="441" y="730" ][endif]
[if exp="sf.se_v==8" ][button target="*se_vol8" graphic="config/8.png" x="484" y="730" ]
[else][button target="*se_vol8" graphic="config/8-.png" x="484" y="730" ][endif]
[if exp="sf.se_v==9" ][button target="*se_vol9" graphic="config/9.png" x="527" y="730" ]
[else][button target="*se_vol9" graphic="config/9-.png" x="527" y="730" ][endif]
[if exp="sf.se_v==10" ][button target="*se_vol10" graphic="config/10.png" x="570" y="730" ]
[else][button target="*se_vol10" graphic="config/10-.png" x="570" y="730" ][endif]

;;エロ設定ボタン------------------------------------------------------------------------------------
[if exp="f.fin_choice==1" ]
[button target="*conf_re" graphic="config/do.png" x="974" y="164" ]
[button target="*conf_re" graphic="config/dont-.png" x="1072" y="164" exp="f.fin_choice=0" ]
[else]
[button target="*conf_re" graphic="config/do-.png" x="974" y="164" exp="f.fin_choice=1" ]
[button target="*conf_re" graphic="config/dont.png" x="1072" y="164" ][endif]

[if exp="f.fin_in_out==1" ]
[button target="*conf_re" graphic="config/in.png" x="925" y="263" ]
[button target="*conf_re" graphic="config/out-.png" x="1046" y="263" exp="f.fin_in_out=0" ]
[else]
[button target="*conf_re" graphic="config/in-.png" x="925" y="263" exp="f.fin_in_out=1" ]
[button target="*conf_re" graphic="config/out.png" x="1046" y="263" ][endif]

;;エロ表現ボタン------------------------------------------------------------------------------------
[if exp="sf.xr==1" ][button target="*xr_check" graphic="config/x.png" x="767" y="418" ]
[else][button target="*xr_check" graphic="config/x-.png" x="767" y="418" ][endif]
[if exp="sf.tx==1" ][button target="*tx_check" graphic="config/tx.png" x="767" y="475" ]
[else][button target="*tx_check" graphic="config/tx-.png" x="767" y="475" ][endif]
[if exp="sf.se==1" ][button target="*se_check" graphic="config/se.png" x="767" y="528" ]
[else][button target="*se_check" graphic="config/se-.png" x="767" y="528" ][endif]
[if exp="sf.ef==1" ][button target="*ef_check" graphic="config/ef.png" x="767" y="583" ]
[else][button target="*ef_check" graphic="config/ef-.png" x="767" y="583" ][endif]

;;購入テキストスキップボタン------------------------------------------------------------------------------------
[if exp="f.bought_skip==1" ]
[button target="*conf_re" graphic="config/dont-.png" x="1060" y="721" height=39 width=117 exp="f.bought_skip=0" ]
[button target="*conf_re" graphic="config/do.png" x="1060" y="768" height=39 width=88 ]
[else]
[button target="*conf_re" graphic="config/dont.png" x="1060" y="721" height=39 width=117 ]
[button target="*conf_re" graphic="config/do-.png" x="1060" y="768" height=39 width=88 exp="f.bought_skip=1" ][endif]
[s]

;;設定------------------------------------------------------------------------------------
*conf_re
[cm][jump target="*select" ]
*full_screen
[cm][if exp="sf.full==0" ][eval exp="sf.full=1" ][else][eval exp="sf.full=0" ][endif]
[screen_full][jump target="*select" ]

;;エロ設定------------------------------------------------------------------------------------
*xr_check
[cm][if exp="sf.xr==1" ][eval exp="sf.xr=0" ][chara_hide name="x" time="0" ][else][eval exp="sf.xr=1" ][chara_show name="x" time="0" wait="true" left=" 0.1"][endif][jump target="*select" ]
*tx_check
[cm][if exp="sf.tx==1" ][eval exp="sf.tx=0" ][chara_hide name="tx" time="0" ][else][eval exp="sf.tx=1" ][chara_show name="tx" time="0" wait="true" left=" 0.1"][endif][jump target="*select" ]
*se_check
[cm][if exp="sf.se==1" ][eval exp="sf.se=0" ][chara_hide name="se" time="0" ][else][eval exp="sf.se=1" ][chara_show name="se" time="0" wait="true" left=" 0.1"][endif][jump target="*select" ]
*ef_check
[cm][if exp="sf.ef==1" ][eval exp="sf.ef=0" ][chara_hide name="ef" time="0" ][else][eval exp="sf.ef=1" ][chara_show name="ef" time="0" wait="true" left=" 0.1"][endif][jump target="*select" ]

;;0-10------------------------------------------------------------------------------------
*tx_speed1
[delay speed=37 ][call target="*tx_speed_test" ][eval exp="sf.text=1" ][jump target="*tx_speed_after" ]
*tx_speed2
[delay speed=33 ][call target="*tx_speed_test" ][eval exp="sf.text=2" ][jump target="*tx_speed_after" ]
*tx_speed3
[delay speed=29 ][call target="*tx_speed_test" ][eval exp="sf.text=3" ][jump target="*tx_speed_after" ]
*tx_speed4
[delay speed=25 ][call target="*tx_speed_test" ][eval exp="sf.text=4" ][jump target="*tx_speed_after" ]
*tx_speed5
[delay speed=21 ][call target="*tx_speed_test" ][eval exp="sf.text=5" ][jump target="*tx_speed_after" ]
*tx_speed6
[delay speed=17 ][call target="*tx_speed_test" ][eval exp="sf.text=6" ][jump target="*tx_speed_after" ]
*tx_speed7
[delay speed=13 ][call target="*tx_speed_test" ][eval exp="sf.text=7" ][jump target="*tx_speed_after" ]
*tx_speed8
[delay speed=9 ][call target="*tx_speed_test" ][eval exp="sf.text=8" ][jump target="*tx_speed_after" ]
*tx_speed9
[delay speed=5 ][call target="*tx_speed_test" ][eval exp="sf.text=9" ][jump target="*tx_speed_after" ]
*tx_speed10
[delay speed=1 ][call target="*tx_speed_test" ][eval exp="sf.text=10" ][jump target="*tx_speed_after" ]
*tx_speed_test
[cm][_][bg time="100" method="crossfade" storage="bg/town.jpg" ]
[show_message_w]文字顯示速度。[r]在這個速度上顯示文字。[p][return]
*tx_speed_after
[cm][set_text_speed][bg time="100" method="crossfade" storage="bg/config.jpg" ][hide_message_w][jump target="*select" ]
*txa_speed1
[cm][eval exp="sf.auto=1" ][jump target="*auto_speed_after" ]
*txa_speed2
[cm][eval exp="sf.auto=2" ][jump target="*auto_speed_after" ]
*txa_speed3
[cm][eval exp="sf.auto=3" ][jump target="*auto_speed_after" ]
*txa_speed4
[cm][eval exp="sf.auto=4" ][jump target="*auto_speed_after" ]
*txa_speed5
[cm][eval exp="sf.auto=5" ][jump target="*auto_speed_after" ]
*txa_speed6
[cm][eval exp="sf.auto=6" ][jump target="*auto_speed_after" ]
*txa_speed7
[cm][eval exp="sf.auto=7" ][jump target="*auto_speed_after" ]
*txa_speed8
[cm][eval exp="sf.auto=8" ][jump target="*auto_speed_after" ]
*txa_speed9
[cm][eval exp="sf.auto=9" ][jump target="*auto_speed_after" ]
*txa_speed10
[cm][eval exp="sf.auto=10" ][jump target="*auto_speed_after" ]
*auto_speed_after
[set_auto_speed][jump target="*select" ]
*bgm_vol0
[cm][eval exp="sf.bgm=0" ][jump target="*bgm_vol_after" ]
*bgm_vol1
[cm][eval exp="sf.bgm=1" ][jump target="*bgm_vol_after" ]
*bgm_vol2
[cm][eval exp="sf.bgm=2" ][jump target="*bgm_vol_after" ]
*bgm_vol3
[cm][eval exp="sf.bgm=3" ][jump target="*bgm_vol_after" ]
*bgm_vol4
[cm][eval exp="sf.bgm=4" ][jump target="*bgm_vol_after" ]
*bgm_vol5
[cm][eval exp="sf.bgm=5" ][jump target="*bgm_vol_after" ]
*bgm_vol6
[cm][eval exp="sf.bgm=6" ][jump target="*bgm_vol_after" ]
*bgm_vol7
[cm][eval exp="sf.bgm=7" ][jump target="*bgm_vol_after" ]
*bgm_vol8
[cm][eval exp="sf.bgm=8" ][jump target="*bgm_vol_after" ]
*bgm_vol9
[cm][eval exp="sf.bgm=9" ][jump target="*bgm_vol_after" ]
*bgm_vol10
[cm][eval exp="sf.bgm=10" ][jump target="*bgm_vol_after" ]
*bgm_vol_after
[set_bgm_vol][wait time=100 ][jump target="*select" ]
*se_vol0
[cm][eval exp="sf.se_v=0" ][jump target="*sound" ]
*se_vol1
[cm][eval exp="sf.se_v=1" ][jump target="*sound" ]
*se_vol2
[cm][eval exp="sf.se_v=2" ][jump target="*sound" ]
*se_vol3
[cm][eval exp="sf.se_v=3" ][jump target="*sound" ]
*se_vol4
[cm][eval exp="sf.se_v=4" ][jump target="*sound" ]
*se_vol5
[cm][eval exp="sf.se_v=5" ][jump target="*sound" ]
*se_vol6
[cm][eval exp="sf.se_v=6" ][jump target="*sound" ]
*se_vol7
[cm][eval exp="sf.se_v=7" ][jump target="*sound" ]
*se_vol8
[cm][eval exp="sf.se_v=8" ][jump target="*sound" ]
*se_vol9
[cm][eval exp="sf.se_v=9" ][jump target="*sound" ]
*se_vol10
[cm][eval exp="sf.se_v=10" ][jump target="*sound" ]
*sound
[set_se_vol][playse storage="squi.ogg" clear="true" ][jump target="*select" ]
;;awake
*awake
[cm][endnolog][chara_re][awakegame]

;;特殊設定
*extra_setting
[cm][chara_mod name="window" time="0" storage="o/win/act_win.png" ]
[reset_text_w][-][eval exp="f.system_act=1" ]
[button target="*name_change" graphic="config/name_change.png" x="645" y="140" ]
[if exp="f.lust>=10" ][button target="*h_word" graphic="config/h_word.png" x="645" y="225" ][endif]
[button target="*sys_config" graphic="config/sys_config.png" x="645" y="310" ]
[button target="*return_menu" graphic="config/decide.png" x="1198" y="535" ]
[cancelskip][s]

*end_talk
[_][cm_t][return_menu]

;;ウィンドウ/ショートカット
*sys_config
[cm][current layer="message0" ]
[chara_mod name="window" time="0" storage="o/win/setting_win.png" ]

[if exp="f.keyconfig==0" ]
[button target="*start_keyconfig" graphic="config/win_on-.png" x="1091" y="181" ]
[button target="*stop_keyconfig" graphic="config/win_off.png" x="1182" y="181" ]
[else]
[button target="*start_keyconfig" graphic="config/win_on.png" x="1091" y="181" ]
[button target="*stop_keyconfig" graphic="config/win_off-.png" x="1181" y="181" ]
[endif]

[if exp="f.win_f=='a'" ][button target="*ex_non" graphic="config/win_a.png" x="988" y="288" ]
[else][button target="*win" graphic="config/win_a-.png" x="988" y="288" exp="f.win_f='a'" ][endif]
[if exp="f.win_f=='b'" ][button target="*ex_non" graphic="config/win_b.png" x="1032" y="288" ]
[else][button target="*win" graphic="config/win_b-.png" x="1032" y="288" exp="f.win_f='b'" ][endif]
[if exp="f.win_f=='c'" ][button target="*ex_non" graphic="config/win_c.png" x="1076" y="288" ]
[else][button target="*win" graphic="config/win_c-.png" x="1076" y="288" exp="f.win_f='c'" ][endif]
[if exp="f.win_f=='d'" ][button target="*ex_non" graphic="config/win_d.png" x="1120" y="288" ]
[else][button target="*win" graphic="config/win_d-.png" x="1120" y="288" exp="f.win_f='d'" ][endif]

[if exp="f.h_win=='a'" ][button target="*ex_non" graphic="config/win_a.png" x="988" y="337" ]
[else][button target="*ex_non" graphic="config/win_a-.png" x="988" y="337" exp="f.h_win='a'" ][endif]
[if exp="f.h_win=='b'" ][button target="*ex_non" graphic="config/win_b.png" x="1032" y="337" ]
[else][button target="*ex_non" graphic="config/win_b-.png" x="1032" y="337" exp="f.h_win='b'" ][endif]
[if exp="f.h_win=='c'" ][button target="*ex_non" graphic="config/win_c.png" x="1076" y="337" ]
[else][button target="*ex_non" graphic="config/win_c-.png" x="1076" y="337" exp="f.h_win='c'" ][endif]
[if exp="f.h_win=='d'" ][button target="*ex_non" graphic="config/win_d.png" x="1120" y="337" ]
[else][button target="*ex_non" graphic="config/win_d-.png" x="1120" y="337" exp="f.h_win='d'" ][endif]

[if exp="f.step==6" ]
[button target="*extra_setting" graphic="config/return.png" x="1098" y="535" ][endif]
[button target="*return_menu" graphic="config/decide.png" x="1198" y="535" ][s]

*ex_non
[jump target="*sys_config" ]
*win
[set_win_frame][jump target="*sys_config" ]

*stop_keyconfig
[stop_keyconfig][eval exp="f.keyconfig=0" ][jump target="*sys_config" ]
*start_keyconfig
[start_keyconfig][eval exp="f.keyconfig=1" ][jump target="*sys_config" ]

*return_menu
[chara_mod name="window" time="0" storage="o/win/act_win.png" ][return_menu]

;;名前呼び方
*name_change
[cm]
[if exp="f.sex>=1" ][config_text][chara_mod name="window" time="0" storage="o/win/name_change.png" ]
[else][jump storage="talk/name.ks" target="*name_change" ][endif]
.[r]「[name]」
[r][r][r]「[if exp="f.name_h==0" ][name][else][name_h][endif]」

[button storage="talk/name.ks" target="*name_change" graphic="config/request.png" x="1128" y="123" ]
[button storage="talk/name.ks" target="*name_change_h" graphic="config/request.png" x="1128" y="244" ]
[button target="*extra_setting" graphic="config/return.png" x="1098" y="535" ]
[button target="*end_talk" graphic="config/decide.png" x="1198" y="535" ]
[s]

;;エロワード
*h_word
[cm][reset_text_w]
[syl][f/p]要…教我說話的方式嗎？[p_][_]
*h_word_
[cm][reset_text_w][chara_mod name="window" time="0" storage="o/win/h_word.png" ]
[if exp="f.p_name[0]>=1" ]
[button target="*p_name_change" graphic="config/h_word_yes.png" x="1028" y="128" ][else]
[button target="*p_name_change" graphic="config/h_word_no.png" x="1028" y="128" ][endif]
[if exp="f.v_name[0]>=1" ]
[button target="*v_name_change" graphic="config/h_word_yes.png" x="1028" y="191" ][else]
[button target="*v_name_change" graphic="config/h_word_no.png" x="1028" y="191" ][endif]

[if exp="f.sex_name[0]>=1" ]
[button target="*sex_name_change" graphic="config/h_word_yes.png" x="1028" y="254" ][else]
[button target="*sex_name_change" graphic="config/h_word_no.png" x="1028" y="254" ][endif]

[if exp="f.x_speak==1" ]
[button target="*h_word_re" graphic="config/request_yes.png" x="1043" y="320" ]
[button target="*h_word_re" graphic="config/request_no-.png" x="1156" y="320" exp="f.x_speak=0" ]
[else]
[button target="*h_word_re" graphic="config/request_yes-.png" x="1043" y="320" exp="f.x_speak=1" ]
[button target="*h_word_re" graphic="config/request_no.png" x="1156" y="320" ]
[endif]

[button target="*h_word_end" graphic="config/decide.png" x="1198" y="535" ]
[s]
 
*h_word_re
[cm][jump target="*h_word_" ]

*h_word_end
[cm_t][syl][if exp="f.lust>=800" ][f/shcq]…好。[r]那以後就這樣了♡[else]
[f/clp]…我知道了。[r]那就這樣叫吧。[endif][p_][return_menu]

;;Hワード
;ホール
*v_name_change
;[cm_t][syl][f/p]…叫…法嗎？[p_][_][eval exp="f.system_act=1" ]
*v_call
[cm][config_text][chara_mod name="window" time="0" storage="o/win/h_word_v.png" ]
.[r][if exp="f.v_name[1]==''" ]【指定】[r][else]「[emb exp="f.v_name[1]" ]」[endif]
[if exp="f.v_name[2]!=''" ][r]「[emb exp="f.v_name[2]" ]」[endif]
[if exp="f.v_name[3]!=''" ][r]「[emb exp="f.v_name[3]" ]」[endif]

[if exp="f.v_name[1]==''" ]
[button target="*v_name1" graphic="config/add_request.png" x="1152" y="120" ]
[elsif exp="f.v_name[2]==''" ]
[button target="*v_name2" graphic="config/add_request.png" x="1152" y="120" ]
[button target="*v_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[elsif exp="f.v_name[3]==''" ]
[button target="*v_name3" graphic="config/add_request.png" x="1152" y="120" ]
[button target="*v_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[button target="*v_name2_d" graphic="config/delete.png" x="1192" y="214" ]
[else]
[button target="*v_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[button target="*v_name2_d" graphic="config/delete.png" x="1192" y="214" ]
[button target="*v_name3_d" graphic="config/delete.png" x="1192" y="256" ]
[endif]

[if exp="f.v_name[1]==''" ][eval exp="f.v_name[0]=0" ]
[button target="*v_name_cm" graphic="config/request_no.png" x="1060" y="311" exp="f.v_name[0]=0" ]
[elsif exp="f.v_name[0]==0" ]
[button target="*v_name_cm" graphic="config/request_yes-.png" x="947" y="311" exp="f.v_name[0]=1" ]
[button target="*v_name_re" graphic="config/request_no.png" x="1060" y="311" ]
[elsif exp="f.v_name[0]>=1" ]
[button target="*v_name_re" graphic="config/request_yes.png" x="947" y="311" ]
[button target="*v_name_cm" graphic="config/request_no-.png" x="1060" y="311" exp="f.v_name[0]=0" ]
[endif]

[if exp="f.v_name[0]==1" ]
[button target="*v_name_re" graphic="config/request_lot-.png" x="872" y="364" exp="f.v_name[0]=2" ]
[button target="*v_name_re" graphic="config/request_little.png" x="968" y="364" ]
[elsif exp="f.v_name[0]==2" ]
[button target="*v_name_re" graphic="config/request_lot.png" x="872" y="364" ]
[button target="*v_name_re" graphic="config/request_little-.png" x="968" y="364" exp="f.v_name[0]=1" ][endif]

[button target="*vp_ok" graphic="config/decide.png" x="1198" y="535" ]
[s]

*v_name_cm
[cm][jump target="*v_call" ]
*v_name_re
[jump target="*v_call" ]

*v_name1
[cm][edit left=780 top=470 width="400" height="42" name="f.v_name[1]" ]
[button target="*v_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*v_name2
[cm][edit left=780 top=470 width="400" height="42" name="f.v_name[2]" ]
[button target="*v_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*v_name3
[cm][edit left=780 top=470 width="400" height="42" name="f.v_name[3]" ]
[button target="*v_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*v_sbm
[commit][call target="*v_check" ][jump target="*v_call" ]

*v_name3_d
[eval exp="f.v_name[3]=''" ][jump target="*v_call" ]
*v_name2_d
[if exp="f.v_name[3]==''" ][eval exp="f.v_name[2]=''" ][else]
[eval exp="f.v_name[2]=f.v_name[3]" ][eval exp="f.v_name[3]=''" ][endif]
[jump target="*v_call" ]
*v_name1_d
[if exp="f.v_name[2]==''" ][eval exp="f.v_name[1]=''" ][else]
[eval exp="f.v_name[1]=f.v_name[2]" ][eval exp="f.v_name[2]=''" ][endif]
[if exp="f.v_name[3]==''" ][eval exp="f.v_name[2]=''" ][else]
[eval exp="f.v_name[2]=f.v_name[3]" ][eval exp="f.v_name[3]=''" ][endif]
[jump target="*v_call" ]

*v_check
[if exp="f.v_name[1]==''" ][eval exp="f.v_name[1]=f.v_name[2]" ][eval exp="f.v_name[2]=''" ][endif]
[if exp="f.v_name[2]==''" ][eval exp="f.v_name[2]=f.v_name[3]" ][eval exp="f.v_name[3]=''" ][endif]
[return]

;マグナム
*p_name_change
;[cm_t][syl][f/p]…叫…法嗎？[p_][_][eval exp="f.system_act=1" ]
*p_call
[cm][config_text][chara_mod name="window" time="0" storage="o/win/h_word_p.png" ]
.[r][if exp="f.p_name[1]==''" ]【指定】[r][else]「[emb exp="f.p_name[1]" ]」[endif]
[if exp="f.p_name[2]!=''" ][r]「[emb exp="f.p_name[2]" ]」[endif]
[if exp="f.p_name[3]!=''" ][r]「[emb exp="f.p_name[3]" ]」[endif]

[if exp="f.p_name[1]==''" ]
[button target="*p_name1" graphic="config/add_request.png" x="1152" y="120" ]
[elsif exp="f.p_name[2]==''" ]
[button target="*p_name2" graphic="config/add_request.png" x="1152" y="120" ]
[button target="*p_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[elsif exp="f.p_name[3]==''" ]
[button target="*p_name3" graphic="config/add_request.png" x="1152" y="120" ]
[button target="*p_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[button target="*p_name2_d" graphic="config/delete.png" x="1192" y="214" ]
[else]
[button target="*p_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[button target="*p_name2_d" graphic="config/delete.png" x="1192" y="214" ]
[button target="*p_name3_d" graphic="config/delete.png" x="1192" y="256" ]
[endif]

[if exp="f.p_name[1]==''" ][eval exp="f.p_name[0]=0" ]
[button target="*p_name_cm" graphic="config/request_no.png" x="1060" y="311" exp="f.p_name[0]=0" ]
[elsif exp="f.p_name[0]==0" ]
[button target="*p_name_cm" graphic="config/request_yes-.png" x="947" y="311" exp="f.p_name[0]=1" ]
[button target="*p_name_re" graphic="config/request_no.png" x="1060" y="311" ]
[elsif exp="f.p_name[0]>=1" ]
[button target="*p_name_re" graphic="config/request_yes.png" x="947" y="311" ]
[button target="*p_name_cm" graphic="config/request_no-.png" x="1060" y="311" exp="f.p_name[0]=0" ]
[endif]

[if exp="f.p_name[0]==1" ]
[button target="*p_name_re" graphic="config/request_lot-.png" x="872" y="364" exp="f.p_name[0]=2" ]
[button target="*p_name_re" graphic="config/request_little.png" x="968" y="364" ]
[elsif exp="f.p_name[0]==2" ]
[button target="*p_name_re" graphic="config/request_lot.png" x="872" y="364" ]
[button target="*p_name_re" graphic="config/request_little-.png" x="968" y="364" exp="f.p_name[0]=1" ][endif]

[button target="*vp_ok" graphic="config/decide.png" x="1198" y="535" ]
[s]

*p_name_cm
[cm][jump target="*p_call" ]
*p_name_re
[jump target="*p_call" ]

*p_name1
[cm][edit left=780 top=470 width="400" height="42" name="f.p_name[1]" ]
[button target="*p_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*p_name2
[cm][edit left=780 top=470 width="400" height="42" name="f.p_name[2]" ]
[button target="*p_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*p_name3
[cm][edit left=780 top=470 width="400" height="42" name="f.p_name[3]" ]
[button target="*p_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*p_sbm
[commit][call target="*p_check" ][jump target="*p_call" ]

*p_name3_d
[eval exp="f.p_name[3]=''" ][jump target="*p_call" ]
*p_name2_d
[if exp="f.p_name[3]==''" ][eval exp="f.p_name[2]=''" ][else]
[eval exp="f.p_name[2]=f.p_name[3]" ][eval exp="f.p_name[3]=''" ][endif]
[jump target="*p_call" ]
*p_name1_d
[if exp="f.p_name[2]==''" ][eval exp="f.p_name[1]=''" ][else]
[eval exp="f.p_name[1]=f.p_name[2]" ][eval exp="f.p_name[2]=''" ][endif]
[if exp="f.p_name[3]==''" ][eval exp="f.p_name[2]=''" ][else]
[eval exp="f.p_name[2]=f.p_name[3]" ][eval exp="f.p_name[3]=''" ][endif]
[jump target="*p_call" ]

*p_check
[if exp="f.p_name[1]==''" ][eval exp="f.p_name[1]=f.p_name[2]" ][eval exp="f.p_name[2]=''" ][endif]
[if exp="f.p_name[2]==''" ][eval exp="f.p_name[2]=f.p_name[3]" ][eval exp="f.p_name[3]=''" ][endif]
[return]

*vp_ok
[cm][jump target="*h_word_" ]

;合体
*sex_name_change
;[cm_t][syl][f/p]…叫…法嗎？[sex_][_][eval exp="f.system_act=1" ]
*sex_call
[cm][config_text][chara_mod name="window" time="0" storage="o/win/h_word_sex.png" ]
.[r][if exp="f.sex_name[1]==''" ]【指定】[r][else]「[emb exp="f.sex_name[1]" ]」[endif]
[if exp="f.sex_name[2]!=''" ][r]「[emb exp="f.sex_name[2]" ]」[endif]
[if exp="f.sex_name[3]!=''" ][r]「[emb exp="f.sex_name[3]" ]」[endif]

[if exp="f.sex_name[1]==''" ]
[button target="*sex_name1" graphic="config/add_request.png" x="1152" y="120" ]
[elsif exp="f.sex_name[2]==''" ]
[button target="*sex_name2" graphic="config/add_request.png" x="1152" y="120" ]
[button target="*sex_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[elsif exp="f.sex_name[3]==''" ]
[button target="*sex_name3" graphic="config/add_request.png" x="1152" y="120" ]
[button target="*sex_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[button target="*sex_name2_d" graphic="config/delete.png" x="1192" y="214" ]
[else]
[button target="*sex_name1_d" graphic="config/delete.png" x="1192" y="172" ]
[button target="*sex_name2_d" graphic="config/delete.png" x="1192" y="214" ]
[button target="*sex_name3_d" graphic="config/delete.png" x="1192" y="256" ]
[endif]

[if exp="f.sex_name[1]==''" ][eval exp="f.sex_name[0]=0" ]
[button target="*sex_name_cm" graphic="config/request_no.png" x="1060" y="311" exp="f.sex_name[0]=0" ]
[elsif exp="f.sex_name[0]==0" ]
[button target="*sex_name_cm" graphic="config/request_yes-.png" x="947" y="311" exp="f.sex_name[0]=1" ]
[button target="*sex_name_re" graphic="config/request_no.png" x="1060" y="311" ]
[elsif exp="f.sex_name[0]>=1" ]
[button target="*sex_name_re" graphic="config/request_yes.png" x="947" y="311" ]
[button target="*sex_name_cm" graphic="config/request_no-.png" x="1060" y="311" exp="f.sex_name[0]=0" ]
[endif]

[if exp="f.sex_name[0]==1" ]
[button target="*sex_name_re" graphic="config/request_lot-.png" x="872" y="364" exp="f.sex_name[0]=2" ]
[button target="*sex_sex_name_rehindo_little" graphic="config/request_little.png" x="968" y="364" ]
[elsif exp="f.sex_name[0]==2" ]
[button target="*sex_name_re" graphic="config/request_lot.png" x="872" y="364" ]
[button target="*sex_name_re" graphic="config/request_little-.png" x="968" y="364" exp="f.sex_name[0]=1" ][endif]

[button target="*vp_ok" graphic="config/decide.png" x="1198" y="535" ]
[s]

*sex_name_cm
[cm][jump target="*sex_call" ]
*sex_name_re
[jump target="*sex_call" ]

*sex_name1
[cm][edit left=780 top=470 width="400" height="42" name="f.sex_name[1]" ]
[button target="*sex_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*sex_name2
[cm][edit left=780 top=470 width="400" height="42" name="f.sex_name[2]" ]
[button target="*sex_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*sex_name3
[cm][edit left=780 top=470 width="400" height="42" name="f.sex_name[3]" ]
[button target="*sex_sbm" x="645" y="534" graphic="menu/n_vp.png" ][cancelskip][s]
*sex_sbm
[commit][call target="*sex_check" ][jump target="*sex_call" ]

*sex_name3_d
[eval exp="f.sex_name[3]=''" ][jump target="*sex_call" ]
*sex_name2_d
[if exp="f.sex_name[3]==''" ][eval exp="f.sex_name[2]=''" ][else]
[eval exp="f.sex_name[2]=f.sex_name[3]" ][eval exp="f.sex_name[3]=''" ][endif]
[jump target="*sex_call" ]
*sex_name1_d
[if exp="f.sex_name[2]==''" ][eval exp="f.sex_name[1]=''" ][else]
[eval exp="f.sex_name[1]=f.sex_name[2]" ][eval exp="f.sex_name[2]=''" ][endif]
[if exp="f.sex_name[3]==''" ][eval exp="f.sex_name[2]=''" ][else]
[eval exp="f.sex_name[2]=f.sex_name[3]" ][eval exp="f.sex_name[3]=''" ][endif]
[jump target="*sex_call" ]

*sex_check
[if exp="f.sex_name[1]==''" ][eval exp="f.sex_name[1]=f.sex_name[2]" ][eval exp="f.sex_name[2]=''" ][endif]
[if exp="f.sex_name[2]==''" ][eval exp="f.sex_name[2]=f.sex_name[3]" ][eval exp="f.sex_name[3]=''" ][endif]
[return]

