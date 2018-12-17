;;タブメニュー
*menu_button
[if exp="f.ch_win==1" ]
[button target="*shop_dress" graphic="clothe/button-c1.png" x="815" y="33" ][else]
[button target="*shop_dress" graphic="clothe/button-c1-.png" x="815" y="33" ][endif]
[if exp="f.ch_win==2 && f.step==6" ]
[button target="*shop_dress2" graphic="clothe/button-c2.png" x="860" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_dress2" graphic="clothe/button-c2-.png" x="860" y="33" ][endif]
;[if exp="f.ch_win==3" ]
;[button target="*shop_dress3" graphic="clothe/button-c3.png" x="910" y="70" ][else]
;[button target="*shop_dress3" graphic="clothe/button-c3-.png" x="910" y="70" ][endif]
[if exp="f.ch_win==4" ]
[button target="*shop_hair" graphic="clothe/button-hr.png" x="904" y="33" ][else]
[button target="*shop_hair" graphic="clothe/button-hr-.png" x="904" y="33" ][endif]
[if exp="f.ch_win==5" ]
[button target="*shop_pin" graphic="clothe/button-pin.png" x="958" y="33" ][else]
[button target="*shop_pin" graphic="clothe/button-pin-.png" x="958" y="33" ][endif]
[if exp="f.ch_win==6 && f.step==6" ]
[button target="*shop_head" graphic="clothe/button-hd.png" x="1012" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_head" graphic="clothe/button-hd-.png" x="1012" y="33" ][endif]
[if exp="f.ch_win==7" ]
[button target="*shop_leg" graphic="clothe/button-l.png" x="1044" y="33" ][else]
[button target="*shop_leg" graphic="clothe/button-l-.png" x="1044" y="33" ][endif]
[if exp="f.ch_win==8 && f.step==6" ]
[button target="*shop_glasses" graphic="clothe/button-gl.png" x="1098" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_glasses" graphic="clothe/button-gl-.png" x="1098" y="33" ][endif]
[if exp="f.ch_win==9 && f.step==6" ]
[button target="*shop_under" graphic="clothe/button-u.png" x="1151" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_under" graphic="clothe/button-u-.png" x="1151" y="33" ][endif]
;[if exp="f.ch_win==10 && f.step==6" ]
;[button target="*shop_arm" graphic="clothe/button-arm.png" x="1205" y="33" ]
;[elsif exp="f.step==6" ][button target="*shop_arm" graphic="clothe/button-arm-.png" x="1205" y="33" ][endif]
[if exp="f.ch_win==11 && f.step==6" ]
[button target="*shop_other" graphic="clothe/button-o.png" x="1238" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_other" graphic="clothe/button-o-.png" x="1238" y="33" ][endif]
[button target="*return_menu" graphic="menu/back.png" x="1188" y="563" ]
[if exp="f.step>=6 && f.shop_t==0" ]
[button target="*talk" graphic="clothe/shop-talk.png" x="1125" y="75" ][endif]
[return]

;;入店
*shop
[cm][stop_bgm][black][dress_comp_check]
[random_3][eval exp="f.lady=f.r" ][bg_shop][eval exp="f.shop_c=0" ][bgm_BR]
[_]（來到了服裝店。[p_]
[set_lady][chara_show name="sub" time="100" wait="true" ][eval exp="f.shop_t=0" ]
[aurel]啊啦啊啦、歡迎光臨。[r]請隨意挑選。[p_]
[_]（要買些什麼嗎？[p_]
[anim name="sub" time="300" left="-300" ]
[chara_mod name="window" time="1" storage="o/win/shop-win.png" ]
[chara_show name="window" time="1" wait="true" left="613" top="22" ]

;;服１
*shop_dress
[cm][eval exp="f.ch_win=1" ][call target="*menu_button" ]
;落ち着いた
[if exp="f.Dc_b[10]==1" ][button target="*shop_dress" graphic="clothe/c_tite-.png" x="680" y="165" ]
[elsif exp="f.love>=1000" ][button target="*c_b_all" graphic="clothe/c_tite.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[else][button target="*shop_dress" graphic="clothe/c_tite.png" x="680" y="165" ][endif]
[button target="*bought" graphic="clothe/bc_blue2-.png" x="835" y="165" ]
[if exp="f.Dc_b[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="890" y="165" ]
[else][button target="*c_b2" graphic="clothe/bc_black.png" x="890" y="165" ][endif]
[if exp="f.Dc_b[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="945" y="165" ]
[else][button target="*c_b3" graphic="clothe/bc_purple.png" x="945" y="165" ][endif]
[if exp="f.Dc_b[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1000" y="165" ]
[else][button target="*c_b4" graphic="clothe/bc_red.png" x="1000" y="165" ][endif]
[if exp="f.Dc_b[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="165" ]
[else][button target="*c_b5" graphic="clothe/bc_green.png" x="1055" y="165" ][endif]
[if exp="f.Dc_b[6]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="1110" y="165" ]
[else][button target="*c_b6" graphic="clothe/bc_brown.png" x="1110" y="165" ][endif]
;ひらひら
[if exp="f.Dc_c[10]==1" ][button target="*shop_dress" graphic="clothe/c_hira-.png" x="680" y="210" ]
[elsif exp="f.love>=1000 && f.step>=4" ][button target="*c_c_all" graphic="clothe/c_hira.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.step>=4" ][button target="*shop_dress" graphic="clothe/c_hira.png" x="680" y="210" ][endif]
;[if exp="f.step>=4" ][button target="*shop_dress" graphic="clothe/c_hira.png" x="680" y="210" ][endif]
[if exp="f.Dc_c[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="835" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c1" graphic="clothe/bc_blue.png" x="835" y="210" ][endif]
[if exp="f.Dc_c[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="890" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c2" graphic="clothe/bc_black.png" x="890" y="210" ][endif]
[if exp="f.Dc_c[3]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="945" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c3" graphic="clothe/bc_green.png" x="945" y="210" ][endif]
[if exp="f.Dc_c[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1000" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c4" graphic="clothe/bc_red.png" x="1000" y="210" ][endif]
[if exp="f.Dc_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1055" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c5" graphic="clothe/bc_purple.png" x="1055" y="210" ][endif]
[if exp="f.Dc_c[6]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="1110" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c6" graphic="clothe/bc_brown.png" x="1110" y="210" ][endif]
[if exp="f.Dc_c[7]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1165" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c7" graphic="clothe/bc_pink.png" x="1165" y="210" ][endif]
;ワンピース
[if exp="f.Dc_e[10]==1" ][button target="*shop_dress" graphic="clothe/c_onep-.png" x="680" y="255" ]
[elsif exp="f.love>=1000 && f.step>=5" ][button target="*c_e_all" graphic="clothe/c_onep.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.step>=5" ][button target="*shop_dress" graphic="clothe/c_onep.png" x="680" y="255" ][endif]
;[if exp="f.step>=5" ][button target="*shop_dress" graphic="clothe/c_onep.png" x="680" y="255" ][endif]
[if exp="f.Dc_e[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="835" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e1" graphic="clothe/bc_blue.png" x="835" y="255" ][endif]
[if exp="f.Dc_e[2]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="890" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e2" graphic="clothe/bc_yellow.png" x="890" y="255" ][endif]
[if exp="f.Dc_e[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="945" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e3" graphic="clothe/bc_red.png" x="945" y="255" ][endif]
[if exp="f.Dc_e[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1000" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e4" graphic="clothe/bc_purple.png" x="1000" y="255" ][endif]
[if exp="f.Dc_e[5]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1055" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e5" graphic="clothe/bc_white.png" x="1055" y="255" ][endif]
[if exp="f.Dc_e[6]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1110" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e6" graphic="clothe/bc_black.png" x="1110" y="255" ][endif]
;ナース
[if exp="f.Dc_f[10]==1" ][button target="*shop_dress" graphic="clothe/c_nurse-.png" x="680" y="300" ]
[elsif exp="f.step>=6 && f.love>=300" ][button target="*shop_dress" graphic="clothe/c_nurse.png" x="680" y="300" ][endif]
[if exp="f.Dc_f[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="300" ]
[elsif exp="f.step>=6 && f.love>=300" ][button target="*c_f1" graphic="clothe/bc_white.png" x="835" y="300" ][endif]
[if exp="f.Dc_f[2]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="890" y="300" ]
[elsif exp="f.step>=6 && f.love>=300" ][button target="*c_f2" graphic="clothe/bc_pink.png" x="890" y="300" ][endif]
[if exp="f.Dc_f[3]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="945" y="300" ]
[elsif exp="f.Dc_f[1]==1" ][button target="*c_f3" graphic="clothe/bc_black.png" x="945" y="300" ][endif]
;和服
[if exp="f.Dc_g[10]==1" ][button target="*shop_dress" graphic="clothe/c_wahuku-.png" x="680" y="345" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*c_g_all" graphic="clothe/c_wahuku.png" enterimg="clothe/buy_all.png" x="680" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*shop_dress" graphic="clothe/c_wahuku.png" x="680" y="345" ][endif]
;[if exp="f.step>=6 && f.love>=400" ][button target="*shop_dress" graphic="clothe/c_wahuku.png" x="680" y="345" ][endif]
[if exp="f.Dc_g[1]==1" ][button target="*bought" graphic="clothe/bc_red2-.png" x="835" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g1" graphic="clothe/bc_red2.png" x="835" y="345" ][endif]
[if exp="f.Dc_g[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g2" graphic="clothe/bc_blue.png" x="890" y="345" ][endif]
[if exp="f.Dc_g[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="945" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g3" graphic="clothe/bc_purple.png" x="945" y="345" ][endif]
[if exp="f.Dc_g[4]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1000" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g4" graphic="clothe/bc_pink.png" x="1000" y="345" ][endif]
[if exp="f.Dc_g[5]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1055" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g5" graphic="clothe/bc_black.png" x="1055" y="345" ][endif]
[if exp="f.Dc_g[6]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1110" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g6" graphic="clothe/bc_white.png" x="1110" y="345" ][endif]
;セーラー
[if exp="f.Dc_h[10]==1" ][button target="*shop_dress" graphic="clothe/c_sera-.png" x="680" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*shop_dress" graphic="clothe/c_sera.png" x="680" y="390" ][endif]
[if exp="f.Dc_h[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*c_h1" graphic="clothe/bc_white.png" x="835" y="390" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="890" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*c_h2" graphic="clothe/bc_black.png" x="890" y="390" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*bought" graphic="clothe/c_long-w-.png" x="945" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*c_h3" graphic="clothe/c_long-w.png" x="945" y="390" ][endif]
[if exp="f.Dc_h[4]==1" ][button target="*bought" graphic="clothe/c_long-b-.png" x="1067" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*c_h4" graphic="clothe/c_long-b.png" x="1067" y="390" ][endif]
;エプロンドレス
[if exp="f.Dc_i[10]==1" ][button target="*shop_dress" graphic="clothe/c_epdress-.png" x="680" y="435" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*c_i_all" graphic="clothe/c_epdress.png" enterimg="clothe/buy_all.png" x="680" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*shop_dress" graphic="clothe/c_epdress.png" x="680" y="435" ][endif]
;[if exp="f.step>=6 && f.love>=600" ][button target="*shop_dress" graphic="clothe/c_epdress.png" x="680" y="435" ][endif]
[if exp="f.Dc_i[1]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="835" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i1" graphic="clothe/bc_black.png" x="835" y="435" ][endif]
[if exp="f.Dc_i[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i2" graphic="clothe/bc_blue.png" x="890" y="435" ][endif]
[if exp="f.Dc_i[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="945" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i3" graphic="clothe/bc_purple.png" x="945" y="435" ][endif]
[if exp="f.Dc_i[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i4" graphic="clothe/bc_green.png" x="1000" y="435" ][endif]
[if exp="f.Dc_i[5]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1055" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i5" graphic="clothe/bc_pink.png" x="1055" y="435" ][endif]
[if exp="f.Dc_i[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i6" graphic="clothe/bc_orange.png" x="1110" y="435" ][endif]
;ブレザー
[if exp="f.Dc_j[10]==1" ][button target="*shop_dress" graphic="clothe/c_uni-cold-.png" x="680" y="480" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*c_j_all" graphic="clothe/c_uni-cold.png" enterimg="clothe/buy_all.png" x="680" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*shop_dress" graphic="clothe/c_uni-cold.png" x="680" y="480" ][endif]
;[if exp="f.step>=6 && f.love>=700" ][button target="*bought" graphic="clothe/c_uni-cold.png" x="680" y="480" ][endif]
[if exp="f.Dc_j[1]==1" ][button target="*bought" graphic="clothe/bc_blue2-.png" x="835" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j1" graphic="clothe/bc_blue2.png" x="835" y="480" ][endif]
[if exp="f.Dc_j[2]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="890" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j2" graphic="clothe/bc_brown.png" x="890" y="480" ][endif]
[if exp="f.Dc_j[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="945" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j3" graphic="clothe/bc_purple.png" x="945" y="480" ][endif]
[if exp="f.Dc_j[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j4" graphic="clothe/bc_green.png" x="1000" y="480" ][endif]
[if exp="f.Dc_j[5]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1055" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j5" graphic="clothe/bc_black.png" x="1055" y="480" ][endif]
;シャツネクタイ
[if exp="f.Dc_j[10]==1" ][button target="*shop_dress" graphic="clothe/c_uni-warm-.png" x="680" y="525" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*c_k_all" graphic="clothe/c_uni-warm.png" enterimg="clothe/buy_all.png" x="680" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*shop_dress" graphic="clothe/c_uni-warm.png" x="680" y="525" ][endif]
;[if exp="f.step>=6 && f.love>=750" ][button target="*bought" graphic="clothe/c_uni-warm.png" x="680" y="525" ][endif]
[if exp="f.Dc_k[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="835" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k1" graphic="clothe/bc_blue.png" x="835" y="525" ][endif]
[if exp="f.Dc_k[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="890" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k2" graphic="clothe/bc_red.png" x="890" y="525" ][endif]
[if exp="f.Dc_k[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="945" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k3" graphic="clothe/bc_purple.png" x="945" y="525" ][endif]
[if exp="f.Dc_k[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k4" graphic="clothe/bc_green.png" x="1000" y="525" ][endif]
[if exp="f.Dc_k[5]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="1055" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k5" graphic="clothe/bc_brown.png" x="1055" y="525" ][endif]
[if exp="f.Dc_k[6]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1110" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k6" graphic="clothe/bc_pink.png" x="1110" y="525" ][endif]
[cancelskip][s]
;;服２
*shop_dress2
[cm][eval exp="f.ch_win=2" ][chara_mod name="window" time="100" storage="o/win/shop-win.png" ][call target="*menu_button" ]
;清楚な服
[if exp="f.Dc_l[10]==1" ][button target="*shop_dress2" graphic="clothe/c_seiso-.png" x="680" y="165" ]
[elsif exp="f.love>=1000" ][button target="*c_l_all" graphic="clothe/c_seiso.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[elsif exp="f.love>=800" ][button target="*shop_dress2" graphic="clothe/c_seiso.png" x="680" y="165" ][endif]
;[if exp="f.love>=800" ][button target="*shop_dress2" graphic="clothe/c_seiso.png" x="680" y="165" ][endif]
[if exp="f.Dc_l[1]==1" ][button target="*bought" graphic="clothe/bc_blue2-.png" x="835" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l1" graphic="clothe/bc_blue2.png" x="835" y="165" ][endif]
[if exp="f.Dc_l[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="890" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l2" graphic="clothe/bc_black.png" x="890" y="165" ][endif]
[if exp="f.Dc_l[3]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="945" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l3" graphic="clothe/bc_brown.png" x="945" y="165" ][endif]
[if exp="f.Dc_l[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1000" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l4" graphic="clothe/bc_purple.png" x="1000" y="165" ][endif]
[if exp="f.Dc_l[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l5" graphic="clothe/bc_green.png" x="1055" y="165" ][endif]
;カジュアル
[if exp="f.Dc_m[10]==1" ][button target="*shop_dress2" graphic="clothe/c_hana-.png" x="680" y="210" ]
[elsif exp="f.love>=1000" ][button target="*c_m_all" graphic="clothe/c_hana.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.love>=900" ][button target="*shop_dress2" graphic="clothe/c_hana.png" x="680" y="210" ][endif]
;[if exp="f.love>=900" ][button target="*shop_dress2" graphic="clothe/c_hana.png" x="680" y="210" ][endif]
[if exp="f.Dc_m[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="835" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m1" graphic="clothe/bc_blue.png" x="835" y="210" ][endif]
[if exp="f.Dc_m[2]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="890" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m2" graphic="clothe/bc_brown.png" x="890" y="210" ][endif]
[if exp="f.Dc_m[3]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="945" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m3" graphic="clothe/bc_green.png" x="945" y="210" ][endif]
[if exp="f.Dc_m[4]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1000" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m4" graphic="clothe/bc_orange.png" x="1000" y="210" ][endif]
[if exp="f.Dc_m[5]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1055" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m5" graphic="clothe/bc_black.png" x="1055" y="210" ][endif]
;タイトドレス
[if exp="f.Dc_n[10]==1" ][button target="*shop_dress2" graphic="clothe/c_yi-.png" x="680" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n_all" graphic="clothe/c_yi.png" enterimg="clothe/buy_all.png" x="680" y="255" ][endif]
;[if exp="f.love>=1000" ][button target="*shop_dress2" graphic="clothe/c_yi.png" x="680" y="255" ][endif]
[if exp="f.Dc_n[1]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="835" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n1" graphic="clothe/bc_black.png" x="835" y="255" ][endif]
[if exp="f.Dc_n[2]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="890" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n2" graphic="clothe/bc_white.png" x="890" y="255" ][endif]
[if exp="f.Dc_n[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="945" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n3" graphic="clothe/bc_red.png" x="945" y="255" ][endif]
[if exp="f.Dc_n[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1000" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n4" graphic="clothe/bc_purple.png" x="1000" y="255" ][endif]
[if exp="f.Dc_n[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n5" graphic="clothe/bc_green.png" x="1055" y="255" ][endif]
[if exp="f.Dc_n[6]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="1110" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n6" graphic="clothe/bc_blue.png" x="1110" y="255" ][endif]
[if exp="f.Dc_n[7]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1165" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n7" graphic="clothe/bc_pink.png" x="1165" y="255" ][endif]
;ベルトパンク
[if exp="f.Dc_o[10]==1" ][button target="*shop_dress2" graphic="clothe/c_ali-.png" x="680" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o_all" graphic="clothe/c_ali.png" enterimg="clothe/buy_all.png" x="680" y="300" ][endif]
;[if exp="f.love>=1100" ][button target="*shop_dress2" graphic="clothe/c_ali.png" x="680" y="300" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="835" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o1" graphic="clothe/bc_black.png" x="835" y="300" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="890" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o2" graphic="clothe/bc_brown.png" x="890" y="300" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="945" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o3" graphic="clothe/bc_blue.png" x="945" y="300" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1000" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o4" graphic="clothe/bc_purple.png" x="1000" y="300" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1055" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o5" graphic="clothe/bc_red.png" x="1055" y="300" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1110" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o6" graphic="clothe/bc_green.png" x="1110" y="300" ][endif]
;リボン付き
[if exp="f.Dc_p[10]==1" ][button target="*shop_dress2" graphic="clothe/c_pea-.png" x="680" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p_all" graphic="clothe/c_pea.png" enterimg="clothe/buy_all.png" x="680" y="345" ][endif]
;[if exp="f.love>=1200" ][button target="*shop_dress2" graphic="clothe/c_pea.png" x="680" y="345" ][endif]
[if exp="f.Dc_p[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="835" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p1" graphic="clothe/bc_blue.png" x="835" y="345" ][endif]
[if exp="f.Dc_p[2]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="890" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p2" graphic="clothe/bc_green.png" x="890" y="345" ][endif]
[if exp="f.Dc_p[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="945" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p3" graphic="clothe/bc_purple.png" x="945" y="345" ][endif]
[if exp="f.Dc_p[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1000" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p4" graphic="clothe/bc_red.png" x="1000" y="345" ][endif]
[if exp="f.Dc_p[5]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1055" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p5" graphic="clothe/bc_black.png" x="1055" y="345" ][endif]
[if exp="f.Dc_p[6]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1110" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p6" graphic="clothe/bc_pink.png" x="1110" y="345" ][endif]
[cancelskip][s]

*shop_dress3
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=3" ][call target="*menu_button" ][cancelskip][s]
;;リボン
*shop_hair
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=4" ][call target="*menu_button" ]
;細いリボン
[if exp="f.Dr_a[10]==1" ][button target="*shop_hair" graphic="clothe/hb_ribbon_a-.png" x="680" y="165" ]
[elsif exp="f.love>=1000" ][button target="*r_a_all" graphic="clothe/hb_ribbon_a.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[else][button target="*shop_hair" graphic="clothe/hb_ribbon_a.png" x="680" y="165" ][endif]
[button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="165" ]
[if exp="f.Dr_a[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="165" ]
[else][button target="*r_a2" graphic="clothe/bc_red.png" x="880" y="165" ][endif]
[if exp="f.Dr_a[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="165" ]
[else][button target="*r_a3" graphic="clothe/bc_yellow.png" x="930" y="165" ][endif]
[if exp="f.Dr_a[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="165" ]
[else][button target="*r_a4" graphic="clothe/bc_green.png" x="980" y="165" ][endif]
[if exp="f.Dr_a[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="165" ]
[else][button target="*r_a5" graphic="clothe/bc_purple.png" x="1030" y="165" ][endif]
[if exp="f.Dr_a[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="165" ]
[else][button target="*r_a6" graphic="clothe/bc_orange.png" x="1080" y="165" ][endif]
[if exp="f.Dr_a[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="165" ]
[else][button target="*r_a7" graphic="clothe/bc_white.png" x="1130" y="165" ][endif]
[if exp="f.Dr_a[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="165" ]
[else][button target="*r_a8" graphic="clothe/bc_black.png" x="1180" y="165" ][endif]
[if exp="f.Dr_a[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="165" ]
[else][button target="*r_a9" graphic="clothe/bc_pink.png" x="1230" y="165" ][endif]
;太いリボン
[if exp="f.Dr_b[10]==1" ][button target="*shop_hair" graphic="clothe/hb_ribbon_b-.png" x="680" y="210" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*r_b_all" graphic="clothe/hb_ribbon_b.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.step>=6" ][button target="*shop_hair" graphic="clothe/hb_ribbon_b.png" x="680" y="210" ][endif]
;[if exp="f.step>=6" ][button target="*shop_hair" graphic="clothe/hb_ribbon_b.png" x="680" y="210" ][endif]
[if exp="f.Dr_b[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dr_b[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dr_b[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dr_b[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dr_b[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dr_b[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dr_b[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dr_b[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dr_b[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]
;シュシュ
[if exp="f.Dr_c[10]==1" ][button target="*shop_hair" graphic="clothe/hb_ss-.png" x="680" y="255" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*r_c_all" graphic="clothe/hb_ss.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*shop_hair" graphic="clothe/hb_ss.png" x="680" y="255" ][endif]
;[if exp="f.step>=6 && f.love>=400" ][button target="*shop_hair" graphic="clothe/hb_ss.png" x="680" y="255" ][endif]
[if exp="f.Dr_c[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c1" graphic="clothe/bc_blue.png" x="830" y="255" ][endif]
[if exp="f.Dr_c[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c2" graphic="clothe/bc_red.png" x="880" y="255" ][endif]
[if exp="f.Dr_c[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c3" graphic="clothe/bc_yellow.png" x="930" y="255" ][endif]
[if exp="f.Dr_c[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c4" graphic="clothe/bc_green.png" x="980" y="255" ][endif]
[if exp="f.Dr_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c5" graphic="clothe/bc_purple.png" x="1030" y="255" ][endif]
[if exp="f.Dr_c[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c6" graphic="clothe/bc_orange.png" x="1080" y="255" ][endif]
[if exp="f.Dr_c[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c7" graphic="clothe/bc_white.png" x="1130" y="255" ][endif]
[if exp="f.Dr_c[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c8" graphic="clothe/bc_black.png" x="1180" y="255" ][endif]
[if exp="f.Dr_c[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]
;ビーズ
[if exp="f.Dr_d[10]==1" ][button target="*shop_hair" graphic="clothe/hb_bz-.png" x="680" y="300" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*r_d_all" graphic="clothe/hb_bz.png" enterimg="clothe/buy_all.png" x="680" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*shop_hair" graphic="clothe/hb_bz.png" x="680" y="300" ][endif]
;[if exp="f.step>=6 && f.love>=500" ][button target="*shop_hair" graphic="clothe/hb_bz.png" x="680" y="300" ][endif]
[if exp="f.Dr_d[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d1" graphic="clothe/bc_blue.png" x="830" y="300" ][endif]
[if exp="f.Dr_d[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d2" graphic="clothe/bc_red.png" x="880" y="300" ][endif]
[if exp="f.Dr_d[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d3" graphic="clothe/bc_yellow.png" x="930" y="300" ][endif]
[if exp="f.Dr_d[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d4" graphic="clothe/bc_green.png" x="980" y="300" ][endif]
[if exp="f.Dr_d[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d5" graphic="clothe/bc_purple.png" x="1030" y="300" ][endif]
[if exp="f.Dr_d[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d6" graphic="clothe/bc_orange.png" x="1080" y="300" ][endif]
[if exp="f.Dr_d[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d7" graphic="clothe/bc_white.png" x="1130" y="300" ][endif]
[if exp="f.Dr_d[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d8" graphic="clothe/bc_black.png" x="1180" y="300" ][endif]
[if exp="f.Dr_d[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d9" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]
;かんざし
[if exp="f.Dr_e[1]==1" ][button target="*bought" graphic="clothe/hb_kanzashi-g-.png" x="680" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_e1" graphic="clothe/hb_kanzashi-g.png" x="680" y="345" ][endif]
[if exp="f.Dr_e[2]==1" ][button target="*bought" graphic="clothe/hb_kanzashi-s-.png" x="790" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_e2" graphic="clothe/hb_kanzashi-s.png" x="790" y="345" ][endif]
[cancelskip][s]

;;ヘアピン
*shop_pin
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=5" ][call target="*menu_button" ]

[if exp="f.Dp_a[10]==1" ][button target="*shop_pin" graphic="clothe/hp_tin-.png" x="680" y="165" ]
[elsif exp="f.love>=1000" ][button target="*p_a_all" graphic="clothe/hp_tin.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[else][button target="*shop_pin" graphic="clothe/hp_tin.png" x="680" y="165" ][endif]
;[button target="*shop_pin" graphic="clothe/hp_tin.png" x="680" y="165" ]
[if exp="f.Dp_a[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="165" ]
[else][button target="*p_a1" graphic="clothe/bc_blue.png" x="830" y="165" ][endif]
[if exp="f.Dp_a[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="165" ]
[else][button target="*p_a2" graphic="clothe/bc_red.png" x="880" y="165" ][endif]
[if exp="f.Dp_a[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="165" ]
[else][button target="*p_a3" graphic="clothe/bc_yellow.png" x="930" y="165" ][endif]
[if exp="f.Dp_a[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="165" ]
[else][button target="*p_a4" graphic="clothe/bc_green.png" x="980" y="165" ][endif]
[if exp="f.Dp_a[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="165" ]
[else][button target="*p_a5" graphic="clothe/bc_purple.png" x="1030" y="165" ][endif]
[if exp="f.Dp_a[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="165" ]
[else][button target="*p_a6" graphic="clothe/bc_orange.png" x="1080" y="165" ][endif]
[if exp="f.Dp_a[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="165" ]
[else][button target="*p_a7" graphic="clothe/bc_white.png" x="1130" y="165" ][endif]
[if exp="f.Dp_a[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="165" ]
[else][button target="*p_a8" graphic="clothe/bc_black.png" x="1180" y="165" ][endif]
[if exp="f.Dp_a[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="165" ]
[else][button target="*p_a9" graphic="clothe/bc_pink.png" x="1230" y="165" ][endif]

[if exp="f.Dp_b[10]==1" ][button target="*shop_pin" graphic="clothe/hp_egg-.png" x="680" y="210" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*p_b_all" graphic="clothe/hp_egg.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.step>=6" ][button target="*shop_pin" graphic="clothe/hp_egg.png" x="680" y="210" ][endif]
;[if exp="f.step>=6" ][button target="*shop_pin" graphic="clothe/hp_egg.png" x="680" y="210" ][endif]
[if exp="f.Dp_b[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dp_b[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dp_b[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dp_b[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dp_b[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dp_b[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dp_b[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dp_b[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dp_b[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

[if exp="f.Dp_c[10]==1" ][button target="*shop_pin" graphic="clothe/hp_flower-.png" x="680" y="255" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*p_c_all" graphic="clothe/hp_flower.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*shop_pin" graphic="clothe/hp_flower.png" x="680" y="255" ][endif]
;[if exp="f.step>=6 && f.love>=400" ][button target="*shop_pin" graphic="clothe/hp_flower.png" x="680" y="255" ][endif]
[if exp="f.Dp_c[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c1" graphic="clothe/bc_blue.png" x="830" y="255" ][endif]
[if exp="f.Dp_c[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c2" graphic="clothe/bc_red.png" x="880" y="255" ][endif]
[if exp="f.Dp_c[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c3" graphic="clothe/bc_yellow.png" x="930" y="255" ][endif]
[if exp="f.Dp_c[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c4" graphic="clothe/bc_green.png" x="980" y="255" ][endif]
[if exp="f.Dp_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c5" graphic="clothe/bc_purple.png" x="1030" y="255" ][endif]
[if exp="f.Dp_c[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c6" graphic="clothe/bc_orange.png" x="1080" y="255" ][endif]
[if exp="f.Dp_c[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c7" graphic="clothe/bc_white.png" x="1130" y="255" ][endif]
[if exp="f.Dp_c[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c8" graphic="clothe/bc_black.png" x="1180" y="255" ][endif]
[if exp="f.Dp_c[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]

[if exp="f.Dp_d[1]==1" ][button target="*bought" graphic="clothe/hp_hurt-.png" x="830" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*p_d1" graphic="clothe/hp_hurt.png" x="830" y="300" ][endif]
[if exp="f.Dp_d[2]==1" ][button target="*bought" graphic="clothe/hp_star-.png" x="880" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*p_d2" graphic="clothe/hp_star.png" x="880" y="300" ][endif]
[if exp="f.Dp_d[3]==1" ][button target="*bought" graphic="clothe/hp_clover-.png" x="930" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*p_d3" graphic="clothe/hp_clover.png" x="930" y="300" ][endif]
[cancelskip][s]

;;頭
*shop_head
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=6" ][call target="*menu_button" ]
;耳、角、麦わら、メイドヘッド
[if exp="f.Dh_a[1]==1" ][button target="*bought" graphic="clothe/h_ear-.png" x="680" y="165" ]
[elsif exp="f.love>=300" ][button target="*h_a1" graphic="clothe/h_ear.png" x="680" y="165" ][endif]
[if exp="f.Dh_a[2]==1" ][button target="*bought" graphic="clothe/h_horn-.png" x="850" y="165" ]
[elsif exp="f.love>=350" ][button target="*h_a2" graphic="clothe/h_horn.png" x="850" y="165" ][endif]
[if exp="f.Dh_b[1]==1" ][button target="*bought" graphic="clothe/h_mugi-.png" x="1000" y="165" ]
[elsif exp="f.love>=400" ][button target="*h_b1" graphic="clothe/h_mugi.png" x="1000" y="165" ][endif]
[if exp="f.Dh_b[2]==1" ][button target="*bought" graphic="clothe/h_head-d-.png" x="1120" y="165" ]
[elsif exp="f.love>=600 && f.Dc_i[0]=='got'" ][button target="*h_b2" graphic="clothe/h_head-d.png" x="1120" y="165" ][endif]
;カチューシャ
[if exp="f.Dh_d[10]==1" ][button target="*shop_head" graphic="clothe/h_band-.png" x="680" y="210" ]
[elsif exp="f.love>=1000" ][button target="*h_d_all" graphic="clothe/h_band.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.love>=500" ][button target="*shop_head" graphic="clothe/h_band.png" x="680" y="210" ][endif]
;[if exp="f.love>=500" ][button target="*shop_head" graphic="clothe/h_band.png" x="680" y="210" ][endif]
[if exp="f.Dh_d[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dh_d[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dh_d[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dh_d[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dh_d[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dh_d[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dh_d[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dh_d[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dh_d[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]
;キャスケット
[if exp="f.Dh_e[10]==1" ][button target="*shop_head" graphic="clothe/h_cask-.png" x="680" y="255" ]
[elsif exp="f.love>=1000" ][button target="*h_e_all" graphic="clothe/h_cask.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.love>=600" ][button target="*shop_head" graphic="clothe/h_cask.png" x="680" y="255" ][endif]
;[if exp="f.love>=600" ][button target="*shop_head" graphic="clothe/h_cask.png" x="680" y="255" ][endif]
[if exp="f.Dh_e[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e1" graphic="clothe/bc_white.png" x="835" y="255" ][endif]
[if exp="f.Dh_e[2]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="890" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e2" graphic="clothe/bc_brown.png" x="890" y="255" ][endif]
[if exp="f.Dh_e[3]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="945" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e3" graphic="clothe/bc_black.png" x="945" y="255" ][endif]
[if exp="f.Dh_e[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e4" graphic="clothe/bc_green.png" x="1000" y="255" ][endif]
[if exp="f.Dh_e[5]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1055" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e5" graphic="clothe/bc_red.png" x="1055" y="255" ][endif]
;シルクハット
[if exp="f.Dh_f[10]==1" ][button target="*shop_head" graphic="clothe/h_s-hat-.png" x="680" y="300" ]
[elsif exp="f.love>=1000" ][button target="*h_f_all" graphic="clothe/h_s-hat.png" enterimg="clothe/buy_all.png" x="680" y="300" ]
[elsif exp="f.love>=700" ][button target="*shop_head" graphic="clothe/h_s-hat.png" x="680" y="300" ][endif]
;[if exp="f.love>=700" ][button target="*shop_head" graphic="clothe/h_s-hat.png" x="680" y="300" ][endif]
[if exp="f.Dh_f[1]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="835" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f1" graphic="clothe/bc_black.png" x="835" y="300" ][endif]
[if exp="f.Dh_f[2]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="890" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f2" graphic="clothe/bc_white.png" x="890" y="300" ][endif]
[if exp="f.Dh_f[3]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="945" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f3" graphic="clothe/bc_brown.png" x="945" y="300" ][endif]
[if exp="f.Dh_f[4]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="1000" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f4" graphic="clothe/bc_blue.png" x="1000" y="300" ][endif]
[if exp="f.Dh_f[5]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1055" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f5" graphic="clothe/bc_red.png" x="1055" y="300" ][endif]
[if exp="f.Dh_f[6]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1110" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f6" graphic="clothe/bc_purple.png" x="1110" y="300" ][endif]
[if exp="f.Dh_f[7]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1165" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f7" graphic="clothe/bc_green.png" x="1165" y="300" ][endif]
[cancelskip][s]
;;靴下
*shop_leg
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=7" ][call target="*menu_button" ]
;短い
[if exp="f.Ds_a[10]==1" ][button target="*shop_leg" graphic="clothe/s_short-.png" x="680" y="165" ]
[elsif exp="f.love>=1000" ][button target="*s_a_all" graphic="clothe/s_short.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[else][button target="*shop_leg" graphic="clothe/s_short.png" x="680" y="165" ][endif]
;[button target="*shop_leg" graphic="clothe/s_short.png" x="680" y="165" ]
[button target="*bought" graphic="clothe/bc_white-.png" x="830" y="165" ]
[if exp="f.Ds_a[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="880" y="165" ]
[else][button target="*s_a2" graphic="clothe/bc_black.png" x="880" y="165" ][endif]
[if exp="f.Ds_a[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="165" ]
[else][button target="*s_a3" graphic="clothe/bc_blue.png" x="930" y="165" ][endif]
[if exp="f.Ds_a[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="165" ]
[else][button target="*s_a4" graphic="clothe/bc_red.png" x="980" y="165" ][endif]
[if exp="f.Ds_a[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="165" ]
[else][button target="*s_a5" graphic="clothe/bc_yellow.png" x="1030" y="165" ][endif]
[if exp="f.Ds_a[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="165" ]
[else][button target="*s_a6" graphic="clothe/bc_green.png" x="1080" y="165" ][endif]
[if exp="f.Ds_a[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="165" ]
[else][button target="*s_a7" graphic="clothe/bc_purple.png" x="1130" y="165" ][endif]
[if exp="f.Ds_a[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="165" ]
[else][button target="*s_a8" graphic="clothe/bc_orange.png" x="1180" y="165" ][endif]
[if exp="f.Ds_a[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="165" ]
[else][button target="*s_a9" graphic="clothe/bc_pink.png" x="1230" y="165" ][endif]

;長い
[if exp="f.Ds_b[10]==1" ][button target="*shop_leg" graphic="clothe/s_long-.png" x="680" y="210" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*s_b_all" graphic="clothe/s_long.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.step>=6" ][button target="*shop_leg" graphic="clothe/s_long.png" x="680" y="210" ][endif]
;[if exp="f.step>=6" ][button target="*shop_leg" graphic="clothe/s_long.png" x="680" y="210" ][endif]
[if exp="f.Ds_b[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="830" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b1" graphic="clothe/bc_white.png" x="830" y="210" ][endif]
[if exp="f.Ds_b[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="880" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b2" graphic="clothe/bc_black.png" x="880" y="210" ][endif]
[if exp="f.Ds_b[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b3" graphic="clothe/bc_blue.png" x="930" y="210" ][endif]
[if exp="f.Ds_b[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b4" graphic="clothe/bc_red.png" x="980" y="210" ][endif]
[if exp="f.Ds_b[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b5" graphic="clothe/bc_yellow.png" x="1030" y="210" ][endif]
[if exp="f.Ds_b[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b6" graphic="clothe/bc_green.png" x="1080" y="210" ][endif]
[if exp="f.Ds_b[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b7" graphic="clothe/bc_purple.png" x="1130" y="210" ][endif]
[if exp="f.Ds_b[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b8" graphic="clothe/bc_orange.png" x="1180" y="210" ][endif]
[if exp="f.Ds_b[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

;短いしましま白
[if exp="f.Ds_c[10]==1" ][button target="*shop_leg" graphic="clothe/s_stripe-w-.png" x="680" y="255" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*s_c_all" graphic="clothe/s_stripe-w.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.love>=300 && f.step>=6" ][button target="*shop_leg" graphic="clothe/s_stripe-w.png" x="680" y="255" ][endif]
;[if exp="f.step>=6 && f.love>=300" ][button target="*shop_leg" graphic="clothe/s_stripe-w.png" x="680" y="255" ][endif]
[if exp="f.Ds_c[1]==1" ][button target="*bought" graphic="clothe/bc_gray-.png" x="830" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c1" graphic="clothe/bc_gray.png" x="830" y="255" ][endif]
[if exp="f.Ds_c[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="880" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c2" graphic="clothe/bc_black.png" x="880" y="255" ][endif]
[if exp="f.Ds_c[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c3" graphic="clothe/bc_blue.png" x="930" y="255" ][endif]
[if exp="f.Ds_c[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c4" graphic="clothe/bc_red.png" x="980" y="255" ][endif]
[if exp="f.Ds_c[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c5" graphic="clothe/bc_yellow.png" x="1030" y="255" ][endif]
[if exp="f.Ds_c[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c6" graphic="clothe/bc_green.png" x="1080" y="255" ][endif]
[if exp="f.Ds_c[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c7" graphic="clothe/bc_purple.png" x="1130" y="255" ][endif]
[if exp="f.Ds_c[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c8" graphic="clothe/bc_orange.png" x="1180" y="255" ][endif]
[if exp="f.Ds_c[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]

;長いしましま白
[if exp="f.Ds_d[10]==1" ][button target="*shop_leg" graphic="clothe/s_stripe-lw-.png" x="680" y="300" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*s_d_all" graphic="clothe/s_stripe-lw.png" enterimg="clothe/buy_all.png" x="680" y="300" ]
[elsif exp="f.love>=400 && f.step>=6" ][button target="*shop_leg" graphic="clothe/s_stripe-lw.png" x="680" y="300" ][endif]
;[if exp="f.step>=6 && f.love>=400" ][button target="*shop_leg" graphic="clothe/s_stripe-lw.png" x="680" y="300" ][endif]
[if exp="f.Ds_d[1]==1" ][button target="*bought" graphic="clothe/bc_gray-.png" x="830" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d1" graphic="clothe/bc_gray.png" x="830" y="300" ][endif]
[if exp="f.Ds_d[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="880" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d2" graphic="clothe/bc_black.png" x="880" y="300" ][endif]
[if exp="f.Ds_d[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d3" graphic="clothe/bc_blue.png" x="930" y="300" ][endif]
[if exp="f.Ds_d[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d4" graphic="clothe/bc_red.png" x="980" y="300" ][endif]
[if exp="f.Ds_d[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d5" graphic="clothe/bc_yellow.png" x="1030" y="300" ][endif]
[if exp="f.Ds_d[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d6" graphic="clothe/bc_green.png" x="1080" y="300" ][endif]
[if exp="f.Ds_d[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d7" graphic="clothe/bc_purple.png" x="1130" y="300" ][endif]
[if exp="f.Ds_d[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d8" graphic="clothe/bc_orange.png" x="1180" y="300" ][endif]
[if exp="f.Ds_d[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d9" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]

;短いしましま黒
[if exp="f.Ds_e[10]==1" ][button target="*shop_leg" graphic="clothe/s_stripe-b-.png" x="680" y="345" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*s_e_all" graphic="clothe/s_stripe-b.png" enterimg="clothe/buy_all.png" x="680" y="345" ]
[elsif exp="f.love>=500 && f.step>=6" ][button target="*shop_leg" graphic="clothe/s_stripe-b.png" x="680" y="345" ][endif]
;[if exp="f.step>=6 && f.love>=500" ][button target="*shop_leg" graphic="clothe/s_stripe-b.png" x="680" y="345" ][endif]
[if exp="f.Ds_e[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="830" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e1" graphic="clothe/bc_white.png" x="830" y="345" ][endif]
[if exp="f.Ds_e[2]==1" ][button target="*bought" graphic="clothe/bc_gray-.png" x="880" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e2" graphic="clothe/bc_gray.png" x="880" y="345" ][endif]
[if exp="f.Ds_e[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e3" graphic="clothe/bc_blue.png" x="930" y="345" ][endif]
[if exp="f.Ds_e[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e4" graphic="clothe/bc_red.png" x="980" y="345" ][endif]
[if exp="f.Ds_e[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e5" graphic="clothe/bc_yellow.png" x="1030" y="345" ][endif]
[if exp="f.Ds_e[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e6" graphic="clothe/bc_green.png" x="1080" y="345" ][endif]
[if exp="f.Ds_e[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e7" graphic="clothe/bc_purple.png" x="1130" y="345" ][endif]
[if exp="f.Ds_e[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e8" graphic="clothe/bc_orange.png" x="1180" y="345" ][endif]
[if exp="f.Ds_e[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e9" graphic="clothe/bc_pink.png" x="1230" y="345" ][endif]

;長いしましま黒
[if exp="f.Ds_f[10]==1" ][button target="*shop_leg" graphic="clothe/s_stripe-lb-.png" x="680" y="390" ]
[elsif exp="f.love>=1000 && f.step>=6" ][button target="*s_f_all" graphic="clothe/s_stripe-lb.png" enterimg="clothe/buy_all.png" x="680" y="390" ]
[elsif exp="f.love>=600 && f.step>=6" ][button target="*shop_leg" graphic="clothe/s_stripe-lb.png" x="680" y="390" ][endif]
;[if exp="f.step>=6 && f.love>=600" ][button target="*shop_leg" graphic="clothe/s_stripe-lb.png" x="680" y="390" ][endif]
[if exp="f.Ds_f[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="830" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f1" graphic="clothe/bc_white.png" x="830" y="390" ][endif]
[if exp="f.Ds_f[2]==1" ][button target="*bought" graphic="clothe/bc_gray-.png" x="880" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f2" graphic="clothe/bc_gray.png" x="880" y="390" ][endif]
[if exp="f.Ds_f[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f3" graphic="clothe/bc_blue.png" x="930" y="390" ][endif]
[if exp="f.Ds_f[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f4" graphic="clothe/bc_red.png" x="980" y="390" ][endif]
[if exp="f.Ds_f[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f5" graphic="clothe/bc_yellow.png" x="1030" y="390" ][endif]
[if exp="f.Ds_f[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f6" graphic="clothe/bc_green.png" x="1080" y="390" ][endif]
[if exp="f.Ds_f[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f7" graphic="clothe/bc_purple.png" x="1130" y="390" ][endif]
[if exp="f.Ds_f[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f8" graphic="clothe/bc_orange.png" x="1180" y="390" ][endif]
[if exp="f.Ds_f[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f9" graphic="clothe/bc_pink.png" x="1230" y="390" ][endif]
[cancelskip][s]

;;メガネ
*shop_glasses
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=8" ][call target="*menu_button" ]

;楕円
[if exp="f.Dg_a[10]==1" ][button target="*shop_glasses" graphic="clothe/gl-c-.png" x="680" y="165" ]
[elsif exp="f.love>=1000" ][button target="*g_a_all" graphic="clothe/gl-c.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[else][button target="*shop_glasses" graphic="clothe/gl-c.png" x="680" y="165" ][endif]
;[button target="*shop_glasses" graphic="clothe/gl-c.png" x="680" y="165" ]
[if exp="f.Dg_a[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="165" ]
[else][button target="*g_a1" graphic="clothe/bc_blue.png" x="830" y="165" ][endif]
[if exp="f.Dg_a[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="165" ]
[else][button target="*g_a2" graphic="clothe/bc_red.png" x="880" y="165" ][endif]
[if exp="f.Dg_a[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="165" ]
[else][button target="*g_a3" graphic="clothe/bc_yellow.png" x="930" y="165" ][endif]
[if exp="f.Dg_a[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="165" ]
[else][button target="*g_a4" graphic="clothe/bc_green.png" x="980" y="165" ][endif]
[if exp="f.Dg_a[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="165" ]
[else][button target="*g_a5" graphic="clothe/bc_purple.png" x="1030" y="165" ][endif]
[if exp="f.Dg_a[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="165" ]
[else][button target="*g_a6" graphic="clothe/bc_orange.png" x="1080" y="165" ][endif]
[if exp="f.Dg_a[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="165" ]
[else][button target="*g_a7" graphic="clothe/bc_white.png" x="1130" y="165" ][endif]
[if exp="f.Dg_a[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="165" ]
[else][button target="*g_a8" graphic="clothe/bc_black.png" x="1180" y="165" ][endif]
[if exp="f.Dg_a[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="165" ]
[else][button target="*g_a9" graphic="clothe/bc_pink.png" x="1230" y="165" ][endif]

;スクエア
[if exp="f.Dg_b[10]==1" ][button target="*shop_glasses" graphic="clothe/gl-s-.png" x="680" y="210" ]
[elsif exp="f.love>=1000 && f.Dg_a[0]=='got'" ][button target="*g_b_all" graphic="clothe/gl-s.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*shop_glasses" graphic="clothe/gl-s.png" x="680" y="210" ][endif]
;[if exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*shop_glasses" graphic="clothe/gl-s.png" x="680" y="210" ][endif]
[if exp="f.Dg_b[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dg_b[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dg_b[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dg_b[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dg_b[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dg_b[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dg_b[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dg_b[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dg_b[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

;スクエア
[if exp="f.Dg_c[10]==1" ][button target="*shop_glasses" graphic="clothe/gl-h-.png" x="680" y="255" ]
[elsif exp="f.love>=1000 && f.Dg_b[0]=='got'" ][button target="*g_c_all" graphic="clothe/gl-h.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*shop_glasses" graphic="clothe/gl-h.png" x="680" y="255" ][endif]
;[if exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*shop_glasses" graphic="clothe/gl-h.png" x="680" y="255" ][endif]
[if exp="f.Dg_c[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c1" graphic="clothe/bc_blue.png" x="830" y="255" ][endif]
[if exp="f.Dg_c[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c2" graphic="clothe/bc_red.png" x="880" y="255" ][endif]
[if exp="f.Dg_c[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c3" graphic="clothe/bc_yellow.png" x="930" y="255" ][endif]
[if exp="f.Dg_c[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c4" graphic="clothe/bc_green.png" x="980" y="255" ][endif]
[if exp="f.Dg_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c5" graphic="clothe/bc_purple.png" x="1030" y="255" ][endif]
[if exp="f.Dg_c[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c6" graphic="clothe/bc_orange.png" x="1080" y="255" ][endif]
[if exp="f.Dg_c[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c7" graphic="clothe/bc_white.png" x="1130" y="255" ][endif]
[if exp="f.Dg_c[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c8" graphic="clothe/bc_black.png" x="1180" y="255" ][endif]
[if exp="f.Dg_c[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="255" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]
[cancelskip][s]

;;下着
*shop_under
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=9" ][call target="*menu_button" ]
;シンプル
[if exp="f.Du_a[10]==1" ][button target="*shop_under" graphic="clothe/u_s-.png" x="680" y="165" ]
[elsif exp="f.love>=1000" ][button target="*u_a_all" graphic="clothe/u_s.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[else][button target="*shop_under" graphic="clothe/u_s.png" x="680" y="165" ][endif]
;[button target="*shop_under" graphic="clothe/u_s.png" x="680" y="165" ]
[button target="*bought" graphic="clothe/bc_white-.png" x="835" y="165" ]
[if exp="f.Du_a[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="165" ]
[else][button target="*u_a2" graphic="clothe/bc_blue.png" x="890" y="165" ][endif]
[if exp="f.Du_a[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="165" ]
[else][button target="*u_a3" graphic="clothe/bc_pink.png" x="945" y="165" ][endif]
[if exp="f.Du_a[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="165" ]
[else][button target="*u_a4" graphic="clothe/bc_yellow.png" x="1000" y="165" ][endif]
[if exp="f.Du_a[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="165" ]
[else][button target="*u_a5" graphic="clothe/bc_green.png" x="1055" y="165" ][endif]
[if exp="f.Du_a[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="165" ]
[else][button target="*u_a6" graphic="clothe/bc_orange.png" x="1110" y="165" ][endif]
[if exp="f.Du_a[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="165" ]
[else][button target="*u_a7" graphic="clothe/bc_black.png" x="1165" y="165" ][endif]

;水玉
[if exp="f.Du_c[10]==1" ][button target="*shop_under" graphic="clothe/u_marble-.png" x="680" y="210" ]
[elsif exp="f.sex>=1 && f.love>=1000" ][button target="*u_c_all" graphic="clothe/u_marble.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.sex>=1" ][button target="*shop_under" graphic="clothe/u_marble.png" x="680" y="210" ][endif]
;[if exp="f.sex>=1" ][button target="*shop_under" graphic="clothe/u_marble.png" x="680" y="210" ][endif]
[if exp="f.Du_c[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="210" ]
[elsif exp="f.sex>=1" ][button target="*u_c1" graphic="clothe/bc_white.png" x="835" y="210" ][endif]
[if exp="f.Du_c[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="210" ]
[elsif exp="f.sex>=1" ][button target="*u_c2" graphic="clothe/bc_blue.png" x="890" y="210" ][endif]
[if exp="f.Du_c[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="210" ]
[elsif exp="f.sex>=1" ][button target="*u_c3" graphic="clothe/bc_pink.png" x="945" y="210" ][endif]
[if exp="f.Du_c[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="210" ]
[elsif exp="f.sex>=1" ][button target="*u_c4" graphic="clothe/bc_yellow.png" x="1000" y="210" ][endif]
[if exp="f.Du_c[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="210" ]
[elsif exp="f.sex>=1" ][button target="*u_c5" graphic="clothe/bc_green.png" x="1055" y="210" ][endif]
[if exp="f.Du_c[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="210" ]
[elsif exp="f.sex>=1" ][button target="*u_c6" graphic="clothe/bc_orange.png" x="1110" y="210" ][endif]
[if exp="f.Du_c[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="210" ]
[elsif exp="f.sex>=1" ][button target="*u_c7" graphic="clothe/bc_black.png" x="1165" y="210" ][endif]

;レース
[if exp="f.Du_b[10]==1" ][button target="*shop_under" graphic="clothe/u_r-.png" x="680" y="255" ]
[elsif exp="f.sex>=1 && f.love>=1000" ][button target="*u_b_all" graphic="clothe/u_r.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*shop_under" graphic="clothe/u_r.png" x="680" y="255" ][endif]
;[if exp="f.sex>=1 && f.love>=600" ][button target="*shop_under" graphic="clothe/u_r.png" x="680" y="255" ][endif]
[if exp="f.Du_b[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="255" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b1" graphic="clothe/bc_white.png" x="835" y="255" ][endif]
[if exp="f.Du_b[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="255" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b2" graphic="clothe/bc_blue.png" x="890" y="255" ][endif]
[if exp="f.Du_b[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="255" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b3" graphic="clothe/bc_pink.png" x="945" y="255" ][endif]
[if exp="f.Du_b[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="255" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b4" graphic="clothe/bc_yellow.png" x="1000" y="255" ][endif]
[if exp="f.Du_b[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="255" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b5" graphic="clothe/bc_green.png" x="1055" y="255" ][endif]
[if exp="f.Du_b[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="255" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b6" graphic="clothe/bc_orange.png" x="1110" y="255" ][endif]
[if exp="f.Du_b[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="255" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b7" graphic="clothe/bc_black.png" x="1165" y="255" ][endif]
[cancelskip][s]

;;腕
*shop_arm
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=10" ][call target="*menu_button" ][cancelskip][s]
;;他
*shop_other
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=11" ][call target="*menu_button" ]

;マフラー
[if exp="f.Dne_a[10]==1" ][button target="*shop_other" graphic="clothe/n_maf-.png" x="680" y="165" ]
[elsif exp="f.love>=1000" ][button target="*ne_a_all" graphic="clothe/n_maf.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[elsif exp="f.love>=400" ][button target="*shop_other" graphic="clothe/n_maf.png" x="680" y="165" ][endif]
;[if exp="f.love>=400" ][button target="*shop_other" graphic="clothe/n_maf.png" x="680" y="165" ][endif]
[if exp="f.Dne_a[1]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="835" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a1" graphic="clothe/bc_brown.png" x="835" y="165" ][endif]
[if exp="f.Dne_a[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a2" graphic="clothe/bc_blue.png" x="890" y="165" ][endif]
[if exp="f.Dne_a[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="945" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a3" graphic="clothe/bc_red.png" x="945" y="165" ][endif]
[if exp="f.Dne_a[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a4" graphic="clothe/bc_green.png" x="1000" y="165" ][endif]
[if exp="f.Dne_a[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1055" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a5" graphic="clothe/bc_purple.png" x="1055" y="165" ][endif]
[if exp="f.Dne_a[6]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1110" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a6" graphic="clothe/bc_pink.png" x="1110" y="165" ][endif]
[if exp="f.Dne_a[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1165" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a7" graphic="clothe/bc_white.png" x="1165" y="165" ][endif]
[if exp="f.Dne_a[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1220" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a8" graphic="clothe/bc_black.png" x="1220" y="165" ][endif]

;チェックマフラー
[if exp="f.Dne_c[10]==1" ][button target="*shop_other" graphic="clothe/n_maf-c-.png" x="680" y="210" ]
[elsif exp="f.love>=1000" ][button target="*ne_c_all" graphic="clothe/n_maf-c.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[elsif exp="f.love>=500" ][button target="*shop_other" graphic="clothe/n_maf-c.png" x="680" y="210" ][endif]
;[if exp="f.love>=500" ][button target="*shop_other" graphic="clothe/n_maf-c.png" x="680" y="210" ][endif]
[if exp="f.Dne_c[1]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="835" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c1" graphic="clothe/bc_brown.png" x="835" y="210" ][endif]
[if exp="f.Dne_c[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c2" graphic="clothe/bc_blue.png" x="890" y="210" ][endif]
[if exp="f.Dne_c[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="945" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c3" graphic="clothe/bc_red.png" x="945" y="210" ][endif]
[if exp="f.Dne_c[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c4" graphic="clothe/bc_green.png" x="1000" y="210" ][endif]
[if exp="f.Dne_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1055" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c5" graphic="clothe/bc_purple.png" x="1055" y="210" ][endif]
[if exp="f.Dne_c[6]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1110" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c6" graphic="clothe/bc_pink.png" x="1110" y="210" ][endif]
[if exp="f.Dne_c[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1165" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c7" graphic="clothe/bc_white.png" x="1165" y="210" ][endif]
[if exp="f.Dne_c[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1220" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c8" graphic="clothe/bc_black.png" x="1220" y="210" ][endif]

;エプロン
[if exp="f.Dne_b[10]==1" ][button target="*shop_other" graphic="clothe/n_ep-.png" x="680" y="255" ]
[elsif exp="f.love>=1000" ][button target="*ne_b_all" graphic="clothe/n_ep.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.love>=400" ][button target="*shop_other" graphic="clothe/n_ep.png" x="680" y="255" ][endif]
;[if exp="f.love>=400" ][button target="*shop_other" graphic="clothe/n_ep.png" x="680" y="255" ][endif]
[if exp="f.Dne_b[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="255" ]
[elsif exp="f.love>=400" ][button target="*ne_b1" graphic="clothe/bc_white.png" x="835" y="255" ][endif]
[if exp="f.Dne_b[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="255" ]
[elsif exp="f.love>=400" ][button target="*ne_b2" graphic="clothe/bc_blue.png" x="890" y="255" ][endif]
[if exp="f.Dne_b[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="255" ]
[elsif exp="f.love>=400" ][button target="*ne_b3" graphic="clothe/bc_pink.png" x="945" y="255" ][endif]
[if exp="f.Dne_b[4]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1000" y="255" ]
[elsif exp="f.love>=400" ][button target="*ne_b4" graphic="clothe/bc_black.png" x="1000" y="255" ][endif]
[cancelskip][s]


;;服-セリフ
*c_b_all
[cm][eval exp="f.Dc_b[1]=1,f.Dc_b[2]=1,f.Dc_b[3]=1,f.Dc_b[4]=1,f.Dc_b[5]=1,f.Dc_b[6]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_b" ]
*c_b2
[cm][eval exp="f.Dc_b[2]=1" ]（黒色的[jump target="*c_b" ]
*c_b3
[cm][eval exp="f.Dc_b[3]=1" ]（紫色的[jump target="*c_b" ]
*c_b4
[cm][eval exp="f.Dc_b[4]=1" ]（赤色的[jump target="*c_b" ]
*c_b5
[cm][eval exp="f.Dc_b[5]=1" ]（緑色的[jump target="*c_b" ]
*c_b6
[cm][eval exp="f.Dc_b[6]=1" ]（茶色的[jump target="*c_b" ]
*c_b
淑雅的衣服已購買[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.bought_skip==1" ][else]
	[jump target="*color" ]
[endif][after_shop]

*c_c_all
[cm][eval exp="f.Dc_c[1]=1,f.Dc_c[2]=1,f.Dc_c[3]=1,f.Dc_c[4]=1,f.Dc_c[5]=1,f.Dc_c[6]=1,f.Dc_c[7]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_c" ]
*c_c1
[cm][eval exp="f.Dc_c[1]=1" ]（青色的[jump target="*c_c" ]
*c_c2
[cm][eval exp="f.Dc_c[2]=1" ]（黑色的[jump target="*c_c" ]
*c_c3
[cm][eval exp="f.Dc_c[3]=1" ]（绿色的[jump target="*c_c" ]
*c_c4
[cm][eval exp="f.Dc_c[4]=1" ]（赤色的[jump target="*c_c" ]
*c_c5
[cm][eval exp="f.Dc_c[5]=1" ]（紫色的[jump target="*c_c" ]
*c_c6
[cm][eval exp="f.Dc_c[6]=1" ]（茶色的[jump target="*c_c" ]
*c_c7
[cm][eval exp="f.Dc_c[7]=1" ]（桃色的[jump target="*c_c" ]
*c_c
輕飄的衣服已購買[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_c[0]!='got'" ][eval exp="f.Dc_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]輕飄的衣服、絲帶也很多、…真可愛。[lr_]
	謝謝你。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[jump target="*color" ]
[endif][after_shop]

*c_e_all
[cm][eval exp="f.Dc_e[1]=1,f.Dc_e[2]=1,f.Dc_e[3]=1,f.Dc_e[4]=1,f.Dc_e[5]=1,f.Dc_e[6]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_e" ]
*c_e1
[cm][eval exp="f.Dc_e[1]=1" ]（青色的[jump target="*c_e" ]
*c_e2
[cm][eval exp="f.Dc_e[2]=1" ]（黄色的[jump target="*c_e" ]
*c_e3
[cm][eval exp="f.Dc_e[3]=1" ]（赤色的[jump target="*c_e" ]
*c_e4
[cm][eval exp="f.Dc_e[4]=1" ]（紫色的[jump target="*c_e" ]
*c_e5
[cm][eval exp="f.Dc_e[5]=1" ]（白色的[jump target="*c_e" ]
*c_e6
[cm][eval exp="f.Dc_e[6]=1" ]（黑色的[jump target="*c_e" ]
*c_e
連衣裙已購買[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_e[0]!='got'" ][eval exp="f.Dc_e[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]這是…好可愛的連衣裙呢。[lr_]
	[f/re]穿上去很涼爽也很方便運動。[p_]
	[f/ss]你能買給我嗎？[r]謝謝你。[p_]
	[f/s]好想穿著這個和[name]一起出門呢。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[jump target="*color" ]
[endif][after_shop]

*color
[if exp="f.step<=4" ]
	[shop_f/]
	[f/re]這個…和以前買過的衣服布料的顏色不一樣呢。[p_]
	[f/re]顏色不同感覺也不一樣了呢。[lr_]
	[f/re]這件衣服、我也可以穿嗎？[p_]
	[f/s]…謝謝你。[p_]
[else]
	[shop_f/]
	[f/re]這個…和以前買過的衣服布料的顏色不一樣呢。[lr_]
	[f/s]謝謝你。[p_]
	[f/re]顏色不同感覺也不一樣了呢。[lr_]
	[f/ss]好想快點穿上試試。[p_]
[endif][after_shop]

*c_f_all
[cm][eval exp="f.Dc_f[1]=1,f.Dc_f[2]=1,f.Dc_f[3]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][call target="*c_f" ]
[after_shop]
*c_f1
[cm][eval exp="f.Dc_f[1]=1" ]（白色的[call target="*c_f" ]
	[f/s]這是配醫生的護士穿的白色護士服啊。[p_]
	[f/ss]謝謝你。[r]
	[name]我會更努力的。[p_][after_shop]
*c_f2
[cm][eval exp="f.Dc_f[2]=1" ]（桃色的[call target="*c_f" ]
	[f/s]好可愛啊。桃色的護士服。[p_]
	[f/ss]謝謝你。[r]
	[name]我會更努力的。[p_][after_shop]
*c_f3
[cm][eval exp="f.Dc_f[3]=1" ]（黑色的[call target="*c_f" ]
	[f/]純黑…也有這種顏色呢[p_]
	[f/ss]謝謝你。[r]
	[name]我會更努力的。[p_][after_shop]
*c_f
護士服已購買[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_f[0]!='got'" ][eval exp="f.Dc_f[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]這個…是護士的衣服啊。[lr_]
	[f/s]是穿著這個衣服來為[name]的工作幫忙的嗎？[p_]
	[f/ss]謝謝你。[r]
[elsif exp="f.bought_skip==1" ][after_shop][else]
	[shop_f/]
	[f/re]這個…和之前的護士服顏色不一樣啊。[lr_]
	[f/re]這是所谓的预备吧。[p_]
[endif][return]

*c_g_all
[cm][eval exp="f.Dc_g[1]=1,f.Dc_g[2]=1,f.Dc_g[3]=1,f.Dc_g[4]=1,f.Dc_g[5]=1,f.Dc_g[6]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_g" ]
*c_g1
[cm][eval exp="f.Dc_g[1]=1" ]（紅色的[jump target="*c_g" ]
*c_g2
[cm][eval exp="f.Dc_g[2]=1" ]（青色的[jump target="*c_g" ]
*c_g3
[cm][eval exp="f.Dc_g[3]=1" ]（紫色的[jump target="*c_g" ]
*c_g4
[cm][eval exp="f.Dc_g[4]=1" ]（桃色的[jump target="*c_g" ]
*c_g5
[cm][eval exp="f.Dc_g[5]=1" ]（黑色的[jump target="*c_g" ]
*c_g6
[cm][eval exp="f.Dc_g[6]=1" ]（白色的[jump target="*c_g" ]
*c_g
和服已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_g[0]!='got'" ][eval exp="f.Dc_g[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]真是漂亮的面料啊。[lr_]
	[f/]這個、是…衣服吧？[p_]
	[f/re]是外國文化的服裝呢。[r]
	要怎麽穿呢？[p_]
	[f/re]…問店員嗎？[lr_]
	[f/s]那好吧。我去請她教我穿法。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個、和之前的那個顏色不一樣…。[p_]
	[f/s]一樣是和服呢。[r]
	你還打算再買嗎？[p_]
	[f/re]穿起來有些麻煩啊、但是真的非常漂亮啊。[p_]
	[f/ss]謝謝你。[p_]
[endif][after_shop]

*c_h_all
[cm][eval exp="f.Dc_h[1]=1,f.Dc_h[2]=1,f.Dc_h[3]=1,f.Dc_h[4]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_h" ]
*c_h1
[cm][eval exp="f.Dc_h[1]=1" ]（[call target="*c_h" ]
	[f/re]袖子裏面也是白色的、[r]
	穿起來非常涼快。[p_]
	[f/ss]谢谢你、[name][p_][after_shop]
*c_h2
[cm][eval exp="f.Dc_h[2]=1" ]（黑色的[call target="*c_h" ]
	[f/re]感覺黑色的和白色的完全不一樣。[lr_]
	[f/re]給我的感覺非常強烈。[p_]
	[f/ss]谢谢你、[name][p_][after_shop]
*c_h3
[cm][eval exp="f.Dc_h[3]=1" ]（[call target="*c_h" ]
	[f/re]這袖子和裙子都很長、感覺把空氣都包在裏面了。[p_]
	[f/ss]谢谢你、[name][p_][after_shop]
*c_h4
[cm][eval exp="f.Dc_h[4]=1" ]（黑色的[call target="*c_h" ]
	[f/re]感覺黑色的和白色的完全不一樣。[lr_]
	[f/re]袖子也很長、感覺把空氣都包在裏面了。[p_]
	[f/ss]谢谢你、[name][p_][after_shop]
*c_h
水手服已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_h[0]!='got'" ][eval exp="f.Dc_h[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個…是水兵的衣服嗎？[r]
	第一次見到呢。[p_]
	[f/re]但這個、是裙子啊。[lr_]
	[f/s]也有女性的水兵嗎？[p_]
	[f/s]但是穿起來方便活動、[r]
	也很涼爽呢。[p_]
[elsif exp="f.bought_skip==1" ][after_shop][else]
	[shop_f/][syl][f/re]這個…和之前的水手服有些不一樣。[p_]
[endif][return]

*c_i_all
[cm][eval exp="f.Dc_i[1]=1,f.Dc_i[2]=1,f.Dc_i[3]=1,f.Dc_i[4]=1,f.Dc_i[5]=1,f.Dc_i[6]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_i" ]
*c_i1
[cm][eval exp="f.Dc_i[1]=1" ]（黑色的[jump target="*c_i" ]
*c_i2
[cm][eval exp="f.Dc_i[2]=1" ]（青色的[jump target="*c_i" ]
*c_i3
[cm][eval exp="f.Dc_i[3]=1" ]（紫色的[jump target="*c_i" ]
*c_i4
[cm][eval exp="f.Dc_i[4]=1" ]（绿色的[jump target="*c_i" ]
*c_i5
[cm][eval exp="f.Dc_i[5]=1" ]（桃色的[jump target="*c_i" ]
*c_i6
[cm][eval exp="f.Dc_i[6]=1" ]（橙色的[jump target="*c_i" ]
*c_i
女僕服已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_i[0]!='got'" ][eval exp="f.Dc_i[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]這個…是女僕穿的洋裝吧。[lr_]
	[f/re]不過、這樣飄飄然的非常可愛。[p_]
	[f/re]在做家務的時候穿着這個更像回事了呢。[lr_]
	[f/ss]謝謝你。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]這個…和上次買的女僕裝相比顏色不一樣了呢。[p_]
	[f/re]顏色明亮的話就會感覺非常可愛呢。[lr_]
	[f/re]與其說是工作用倒不如說是時髦的感覺…。[p_]
	[f/ss]謝謝你。[name]。[p_]
[endif][after_shop]

*c_j_all
[cm][eval exp="f.Dc_j[1]=1,f.Dc_j[2]=1,f.Dc_j[3]=1,f.Dc_j[4]=1,f.Dc_j[5]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_j" ]
*c_j1
[cm][eval exp="f.Dc_j[1]=1" ]（紺色的[jump target="*c_j" ]
*c_j2
[cm][eval exp="f.Dc_j[2]=1" ]（茶色的[jump target="*c_j" ]
*c_j3
[cm][eval exp="f.Dc_j[3]=1" ]（紫色的[jump target="*c_j" ]
*c_j4
[cm][eval exp="f.Dc_j[4]=1" ]（绿色的[jump target="*c_j" ]
*c_j5
[cm][eval exp="f.Dc_j[5]=1" ]（黑色的[jump target="*c_j" ]
*c_j
西裝夾克已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_j[0]!='got'" ][eval exp="f.Dc_j[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個…是感覺很精細的洋服呢。[lr_]
	[f/re]這裙子、像紳士一樣。[p_]
	[f/s]穿着感覺背後很舒展呢。[lr_]
	[f/re]是不是能稍稍感受到紳士的感覺？[p_]
	[f/ss]謝謝你。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個…和上次給我買的西裝夾克顏色有不同。[p_]
	[f/s]風格有點不同、不過端正的感覺是沒有變化的。[lr_]
	[f/ss]謝謝你。[name]。[p_]
[endif][after_shop]

*c_k_all
[cm][eval exp="f.Dc_k[1]=1,f.Dc_k[2]=1,f.Dc_k[3]=1,f.Dc_k[4]=1,f.Dc_k[5]=1,f.Dc_k[6]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_k" ]
*c_k1
[cm][eval exp="f.Dc_k[1]=1" ]（青色的[jump target="*c_k" ]
*c_k2
[cm][eval exp="f.Dc_k[2]=1" ]（赤色的[jump target="*c_k" ]
*c_k3
[cm][eval exp="f.Dc_k[3]=1" ]（紫色的[jump target="*c_k" ]
*c_k4
[cm][eval exp="f.Dc_k[4]=1" ]（绿色的[jump target="*c_k" ]
*c_k5
[cm][eval exp="f.Dc_k[5]=1" ]（茶色的[jump target="*c_k" ]
*c_k6
[cm][eval exp="f.Dc_k[6]=1" ]（桃色的[jump target="*c_k" ]
*c_k
襯衫領帶已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_k[0]!='got'" ][eval exp="f.Dc_k[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個是…襯衫和领带的組合嗎？[lr_]
	[f/s]因為裝飾少活動很方便呢。[p_]
	[f/re]短袖會很涼爽、天氣暖和的時候穿著的話似乎會很不錯。[p_]
	[f/ss]謝謝你。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個…和上次買的襯衫領帶的顏色不同呢。[p_]
	[f/s]因為衣服上沒有花紋所以對顏色的印象就直接變成對衣服的印象了呢。[lr_]
	[f/ss]謝謝你。[name]。[p_]
[endif][after_shop]

*c_l_all
[cm][eval exp="f.Dc_l[1]=1,f.Dc_l[2]=1,f.Dc_l[3]=1,f.Dc_l[4]=1,f.Dc_l[5]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_l" ]
*c_l1
[cm][eval exp="f.Dc_l[1]=1" ]（紺色的[jump target="*c_l" ]
*c_l2
[cm][eval exp="f.Dc_l[2]=1" ]（黑色的[jump target="*c_l" ]
*c_l3
[cm][eval exp="f.Dc_l[3]=1" ]（茶色的[jump target="*c_l" ]
*c_l4
[cm][eval exp="f.Dc_l[4]=1" ]（紫色的[jump target="*c_l" ]
*c_l5
[cm][eval exp="f.Dc_l[5]=1" ]（绿色的[jump target="*c_l" ]
*c_l
莊重禮服已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_l[0]!='got'" ][eval exp="f.Dc_l[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]這件是…雖然看著穩重、但還是有點華麗的衣服呢[lr_]
	[f/re]輕飄飄的看著好可愛…。[p_]
	[f/re]能把它買下來嗎？[lr_]
	[f/ss]谢谢你、[name]♡[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]這個…和上次買了的衣服的顏色不一樣。[p_]
	[f/re]顏色不同、這也是沉著而整潔的感覺。[lr_]
	[f/ss]謝謝你。[name]。[p_]
[endif][after_shop]

*c_m_all
[cm][eval exp="f.Dc_m[1]=1,f.Dc_m[2]=1,f.Dc_m[3]=1,f.Dc_m[4]=1,f.Dc_m[5]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_m" ]
*c_m1
[cm][eval exp="f.Dc_m[1]=1" ]（青色的[jump target="*c_m" ]
*c_m2
[cm][eval exp="f.Dc_m[2]=1" ]（茶色的[jump target="*c_m" ]
*c_m3
[cm][eval exp="f.Dc_m[3]=1" ]（绿色的[jump target="*c_m" ]
*c_m4
[cm][eval exp="f.Dc_m[4]=1" ]（橙色的[jump target="*c_m" ]
*c_m5
[cm][eval exp="f.Dc_m[5]=1" ]（黑色的[jump target="*c_m" ]
*c_m
休閒的衣服已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_m[0]!='got'" ][eval exp="f.Dc_m[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個是…夾克和褲子。[lr_]
	[f/re]我適合嗎？[p_]
	[f/ss]不、[name]選擇的衣服、所以一定很合適的。[p_]
	[f/s]谢谢你、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個…前給我買的衣服和衣料的顏色不一樣。[lr_]
	[f/re]由於顏色的搭配印象變化、穿的時候難選擇。[p_]
	[f/s]但是、喜歡這樣。[lr_]
	[f/ss]谢谢你、[name]。[p_]
[endif][after_shop]

*c_n_all
[cm][eval exp="f.Dc_n[1]=1,f.Dc_n[2]=1,f.Dc_n[3]=1,f.Dc_n[4]=1,f.Dc_n[5]=1,f.Dc_n[6]=1,f.Dc_n[7]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_n" ]
*c_n1
[cm][eval exp="f.Dc_n[1]=1" ]（黑色的[jump target="*c_n" ]
*c_n2
[cm][eval exp="f.Dc_n[2]=1" ]（白色的[jump target="*c_n" ]
*c_n3
[cm][eval exp="f.Dc_n[3]=1" ]（赤色的[jump target="*c_n" ]
*c_n4
[cm][eval exp="f.Dc_n[4]=1" ]（紫色的[jump target="*c_n" ]
*c_n5
[cm][eval exp="f.Dc_n[5]=1" ]（绿色的[jump target="*c_n" ]
*c_n6
[cm][eval exp="f.Dc_n[6]=1" ]（青色的[jump target="*c_n" ]
*c_n7
[cm][eval exp="f.Dc_n[7]=1" ]（桃色的[jump target="*c_n" ]
*c_n
紧身礼服已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_n[0]!='got'" ][eval exp="f.Dc_n[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]一種不可思議的設計的衣服。[r]
	接近緊身服嗎？[p_]
	[f/s]但是、非常舒服。[lr_]
	[f/ss]谢谢你、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個…和之前給我買的衣服和衣料的顏色不一樣。[p_]
	[f/s]明亮的顏色印象相當不錯。[lr_]
	[f/re]我穿著看起來非常漂亮。[p_]
	[f/ss]谢谢你、[name]。[p_]
[endif][after_shop]

*c_o_all
[cm][eval exp="f.Dc_o[1]=1,f.Dc_o[2]=1,f.Dc_o[3]=1,f.Dc_o[4]=1,f.Dc_o[5]=1,f.Dc_o[6]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_o" ]
*c_o1
[cm][eval exp="f.Dc_o[1]=1" ]（黑色的[jump target="*c_o" ]
*c_o2
[cm][eval exp="f.Dc_o[2]=1" ]（茶色的[jump target="*c_o" ]
*c_o3
[cm][eval exp="f.Dc_o[3]=1" ]（青色的[jump target="*c_o" ]
*c_o4
[cm][eval exp="f.Dc_o[4]=1" ]（紫色的[jump target="*c_o" ]
*c_o5
[cm][eval exp="f.Dc_o[5]=1" ]（赤色的[jump target="*c_o" ]
*c_o6
[cm][eval exp="f.Dc_o[6]=1" ]（绿色的[jump target="*c_o" ]
*c_o
皮帶衣服已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_o[0]!='got'" ][eval exp="f.Dc_o[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個…總感覺有很多皮帶的衣服呢。[lr_]
	[f/cl]穿這個要花時間吧…。[p_]
	[f/s]但是、看起來似乎非常厲害不是嗎？[lr_]
	[f/ss]總之谢谢你。[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個…和之前給我買的衣服和衣料的顏色不一樣。[p_]
	[f/s]印象雖然印象不同、不過果然是有著很强的感覺。[p_]
	[f/ss]谢谢你、[name]。[p_]
[endif][after_shop]

*c_p_all
[cm][eval exp="f.Dc_p[1]=1,f.Dc_p[2]=1,f.Dc_p[3]=1,f.Dc_p[4]=1,f.Dc_p[5]=1,f.Dc_p[6]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_p" ]
*c_p1
[cm][eval exp="f.Dc_p[1]=1" ]（青色的大緞帶[jump target="*c_p" ]
*c_p2
[cm][eval exp="f.Dc_p[2]=1" ]（绿色的大緞帶[jump target="*c_p" ]
*c_p3
[cm][eval exp="f.Dc_p[3]=1" ]（紫色的大緞帶[jump target="*c_p" ]
*c_p4
[cm][eval exp="f.Dc_p[4]=1" ]（赤色的大緞帶[jump target="*c_p" ]
*c_p5
[cm][eval exp="f.Dc_p[5]=1" ]（黑色的大緞帶[jump target="*c_p" ]
*c_p6
[cm][eval exp="f.Dc_p[6]=1" ]（桃色的大緞帶的[jump target="*c_p" ]
*c_p
服已購買。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_p[0]!='got'" ][eval exp="f.Dc_p[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]大型緞帶的衣服啊。[lr_]
	[f/re]寬鬆舒適穿著很舒服。[p_]
	[f/ss]谢谢你、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]那個…和之前給我買的、面料的顏色有差异。[p_]
	[f/s]穿什麼顏色也能給緞帶印象很强的衣服。[p_]
	[f/ss]谢谢你、[name]。[p_]
[endif][after_shop]

;;リボン-セリフ

*r_a_all
[cm][eval exp="f.Dr_a[1]=1,f.Dr_a[2]=1,f.Dr_a[3]=1,f.Dr_a[4]=1,f.Dr_a[5]=1,f.Dr_a[6]=1,f.Dr_a[7]=1,f.Dr_a[8]=1,f.Dr_a[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*r_a" ]
*r_a2
[cm][eval exp="f.Dr_a[2]=1" ]（赤色的[jump target="*r_a" ]
*r_a3
[cm][eval exp="f.Dr_a[3]=1" ]（黄色的[jump target="*r_a" ]
*r_a4
[cm][eval exp="f.Dr_a[4]=1" ]（緑色的[jump target="*r_a" ]
*r_a5
[cm][eval exp="f.Dr_a[5]=1" ]（紫色的[jump target="*r_a" ]
*r_a6
[cm][eval exp="f.Dr_a[6]=1" ]（橙色的[jump target="*r_a" ]
*r_a7
[cm][eval exp="f.Dr_a[7]=1" ]（白色的[jump target="*r_a" ]
*r_a8
[cm][eval exp="f.Dr_a[8]=1" ]（黒色的[jump target="*r_a" ]
*r_a9
[cm][eval exp="f.Dr_a[9]=1" ]（桃色的[jump target="*r_a" ]

*r_b_all
[cm][eval exp="f.Dr_b[1]=1,f.Dr_b[2]=1,f.Dr_b[3]=1,f.Dr_b[4]=1,f.Dr_b[5]=1,f.Dr_b[6]=1,f.Dr_b[7]=1,f.Dr_b[8]=1,f.Dr_b[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*r_b" ]
*r_b1
[cm][eval exp="f.Dr_b[1]=1" ]（青色的[jump target="*r_b" ]
*r_b2
[cm][eval exp="f.Dr_b[2]=1" ]（赤色的[jump target="*r_b" ]
*r_b3
[cm][eval exp="f.Dr_b[3]=1" ]（黄色的[jump target="*r_b" ]
*r_b4
[cm][eval exp="f.Dr_b[4]=1" ]（緑色的[jump target="*r_b" ]
*r_b5
[cm][eval exp="f.Dr_b[5]=1" ]（紫色的[jump target="*r_b" ]
*r_b6
[cm][eval exp="f.Dr_b[6]=1" ]（橙色的[jump target="*r_b" ]
*r_b7
[cm][eval exp="f.Dr_b[7]=1" ]（白色的[jump target="*r_b" ]
*r_b8
[cm][eval exp="f.Dr_b[8]=1" ]（黒色的[jump target="*r_b" ]
*r_b9
[cm][eval exp="f.Dr_b[9]=1" ]（桃色的[jump target="*r_b" ]

*r_a
細絲帶已購買。[p_]
[if exp="f.bought_skip==1" ][after_shop][else][jump target="*r_ab_re" ][endif]
*r_b
粗絲帶已購買[p_]
[if exp="f.Dr_b[0]!='got'" ][eval exp="f.Dr_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/] 
	[f/re]和之前買的絲帶相比這個大很多呢。[lr_]
	[f/s]謝謝你。[p_]
	[f/s]帶上這個的話、我是不是也稍微變得可愛了呢？[p_]
[elsif exp="f.bought_skip==1" ][else]
	[jump target="*r_ab_re" ]
[endif][after_shop]

*r_ab_re
[shop_f/] 
[if exp="f.step<=4" ]
	[f/re]這個…。[r]和之前給我買的絲帶顏色不一樣。[p_]
	[f/re]真的、可以給我嗎？[p_]
	[f/s]…謝謝你。[p_]
[else]
	[f/re]這個…。[r]和之前給我買的絲帶顏色不一樣。[lr_]
	[f/s]謝謝你。[p_]
	[f/re]絲帶改變了氣質。[lr_]
	[f/ss]覺得非常期待。[p_]
[endif][after_shop]

*r_c_all
[cm][eval exp="f.Dr_c[1]=1,f.Dr_c[2]=1,f.Dr_c[3]=1,f.Dr_c[4]=1,f.Dr_c[5]=1,f.Dr_c[6]=1,f.Dr_c[7]=1,f.Dr_c[8]=1,f.Dr_c[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*r_c" ]
*r_c1
[cm][eval exp="f.Dr_c[1]=1" ]（青色的[jump target="*r_c" ]
*r_c2
[cm][eval exp="f.Dr_c[2]=1" ]（赤色的[jump target="*r_c" ]
*r_c3
[cm][eval exp="f.Dr_c[3]=1" ]（黄色的[jump target="*r_c" ]
*r_c4
[cm][eval exp="f.Dr_c[4]=1" ]（緑色的[jump target="*r_c" ]
*r_c5
[cm][eval exp="f.Dr_c[5]=1" ]（紫色的[jump target="*r_c" ]
*r_c6
[cm][eval exp="f.Dr_c[6]=1" ]（橙色的[jump target="*r_c" ]
*r_c7
[cm][eval exp="f.Dr_c[7]=1" ]（白色的[jump target="*r_c" ]
*r_c8
[cm][eval exp="f.Dr_c[8]=1" ]（黒色的[jump target="*r_c" ]
*r_c9
[cm][eval exp="f.Dr_c[9]=1" ]（桃色的[jump target="*r_c" ]

*r_c
布藝髮圈已購買[p_]
[if exp="f.Dr_c[0]!='got'" ][eval exp="f.Dr_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]飄逸的髮圈呢[lr_]
	[f/s]五顏六色好有趣。[p_]
	[f/re]根據顏色和綁法的不同可以有很多不一樣的造型哦。[p_]
	[f/ss]謝謝你。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]是和之前不一樣的髮圈呢。[lr_]
	[f/re]這個可以很容易的把頭髮盤起來。[p_]
	[f/ss]謝謝你。[name][p_]
[endif][after_shop]

*r_d_all
[cm][eval exp="f.Dr_d[1]=1,f.Dr_d[2]=1,f.Dr_d[3]=1,f.Dr_d[4]=1,f.Dr_d[5]=1,f.Dr_d[6]=1,f.Dr_d[7]=1,f.Dr_d[8]=1,f.Dr_d[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*r_d" ]
*r_d1
[cm][eval exp="f.Dr_d[1]=1" ]（青色的[jump target="*r_d" ]
*r_d2
[cm][eval exp="f.Dr_d[2]=1" ]（赤色的[jump target="*r_d" ]
*r_d3
[cm][eval exp="f.Dr_d[3]=1" ]（黄色的[jump target="*r_d" ]
*r_d4
[cm][eval exp="f.Dr_d[4]=1" ]（緑色的[jump target="*r_d" ]
*r_d5
[cm][eval exp="f.Dr_d[5]=1" ]（紫色的[jump target="*r_d" ]
*r_d6
[cm][eval exp="f.Dr_d[6]=1" ]（橙色的[jump target="*r_d" ]
*r_d7
[cm][eval exp="f.Dr_d[7]=1" ]（白色的[jump target="*r_d" ]
*r_d8
[cm][eval exp="f.Dr_d[8]=1" ]（黒色的[jump target="*r_d" ]
*r_d9
[cm][eval exp="f.Dr_d[9]=1" ]（桃色的[jump target="*r_d" ]

*r_d
串珠髮圈已購買[p_]
[if exp="f.Dr_d[0]!='got'" ][eval exp="f.Dr_d[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]是穿有玻璃珠的髮圈呢[lr_]
	[f/s]一閃一閃的很美[r]根據不同的綁法可能看起來會像小孩子呢？[p_]
	[f/ss]那個、謝謝。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]和之前的髮圈顏色不一樣呢。[lr_]
	[f/scl]用手掌或捏住旋轉滚动它有点开心啊。[p_]
	[f/s]謝謝你。[name][p_]
[endif][after_shop]


*r_e1
[cm][eval exp="f.Dr_e[1]=1" ]（金的[jump target="*r_e" ]
*r_e2
[cm][eval exp="f.Dr_e[2]=1" ]（銀的[jump target="*r_e" ]
*r_e
髮簪已購買[p_]
[if exp="f.Dr_e[0]!='got'" ][eval exp="f.Dr_e[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]這是…漂亮的棍子。[lr_]
	[f/re]是…束頭髮用的東西？[p_]
	[f/re]是之前的和服的國家的東西嗎。[lr_]
	[f/re]那是搭配和服穿的吧。[p_]
	[f/ss]謝謝你。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]這個、和之前的髮簪顏色不一樣。[p_]
	[f/re]這個髮簪。[lr_]
	[f/ss]也和上一個髮簪一樣非常的漂亮。[p_]
	[f/s]真的是要再一次的、謝謝你啊。[p_]
[endif][after_shop]

;;ヘアピン-セリフ

*p_a_all
[cm][eval exp="f.Dp_a[1]=1,f.Dp_a[2]=1,f.Dp_a[3]=1,f.Dp_a[4]=1,f.Dp_a[5]=1,f.Dp_a[6]=1,f.Dp_a[7]=1,f.Dp_a[8]=1,f.Dp_a[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*p_a" ]
*p_a2
[cm][eval exp="f.Dp_a[2]=1" ]（赤色的[jump target="*p_a" ]
*p_a3
[cm][eval exp="f.Dp_a[3]=1" ]（黄色的[jump target="*p_a" ]
*p_a4
[cm][eval exp="f.Dp_a[4]=1" ]（绿色的[jump target="*p_a" ]
*p_a5
[cm][eval exp="f.Dp_a[5]=1" ]（紫色的[jump target="*p_a" ]
*p_a6
[cm][eval exp="f.Dp_a[6]=1" ]（橙色的[jump target="*p_a" ]
*p_a7
[cm][eval exp="f.Dp_a[7]=1" ]（白色的[jump target="*p_a" ]
*p_a8
[cm][eval exp="f.Dp_a[8]=1" ]（黑色的[jump target="*p_a" ]
*p_a9
[cm][eval exp="f.Dp_a[9]=1" ]（桃色的[jump target="*p_a" ]

*p_a
細髮卡已購買。[p_]
[if exp="f.bought_skip==1" ][after_shop][endif]
[shop_f/]
[if exp="f.step<=5" ]
	[f/re]這個…和以前買的髮卡顏色不一樣呢。[p_]
	[f/re]真的可以給我嗎？[p_]
	[f/s]…謝謝你。[p_]
[else]
	[f/re]這個…和以前買的髮卡顏色不一樣呢。[lr_]
	[f/s]謝謝你。[p_]
	[f/re]雖然很小、但是卻能大大地改變人的印象呢。[lr_]
	[f/ss]期待這種風格、一定非常有趣。[p_]
[endif][after_shop]

*p_b_all
[cm][eval exp="f.Dp_b[1]=1,f.Dp_b[2]=1,f.Dp_b[3]=1,f.Dp_b[4]=1,f.Dp_b[5]=1,f.Dp_b[6]=1,f.Dp_b[7]=1,f.Dp_b[8]=1,f.Dp_b[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*p_b" ]
*p_b1
[cm][eval exp="f.Dp_b[1]=1" ]（青色的[jump target="*p_b" ]
*p_b2
[cm][eval exp="f.Dp_b[2]=1" ]（赤色的[jump target="*p_b" ]
*p_b3
[cm][eval exp="f.Dp_b[3]=1" ]（黄色的[jump target="*p_b" ]
*p_b4
[cm][eval exp="f.Dp_b[4]=1" ]（绿色的[jump target="*p_b" ]
*p_b5
[cm][eval exp="f.Dp_b[5]=1" ]（紫色的[jump target="*p_b" ]
*p_b6
[cm][eval exp="f.Dp_b[6]=1" ]（橙色的[jump target="*p_b" ]
*p_b7
[cm][eval exp="f.Dp_b[7]=1" ]（白色的[jump target="*p_b" ]
*p_b8
[cm][eval exp="f.Dp_b[8]=1" ]（黑色的[jump target="*p_b" ]
*p_b9
[cm][eval exp="f.Dp_b[9]=1" ]（桃色的[jump target="*p_b" ]
*p_b
粗髮卡已購買。[p_]
[if exp="f.Dp_b[0]!='got'" ][eval exp="f.Dp_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/][f/re]這個和之前買的髮卡比要粗啊。[lr_]
	[f/s]用的時候還會發出啪的一聲感覺非常有趣。[p_]
	[f/ss]谢谢你、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][f/re]這個…。和之前買的髮卡顏色不一樣啊。[lr_]
	[f/s]大的印象很强烈、選擇顏色很有趣。[p_]
	[f/ss]谢谢你、[name][p_]
[endif][after_shop]

*p_c_all
[cm][eval exp="f.Dp_c[1]=1,f.Dp_c[2]=1,f.Dp_c[3]=1,f.Dp_c[4]=1,f.Dp_c[5]=1,f.Dp_c[6]=1,f.Dp_c[7]=1,f.Dp_c[8]=1,f.Dp_c[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*p_c" ]
*p_c1
[cm][eval exp="f.Dp_c[1]=1" ]（青色的[jump target="*p_c" ]
*p_c2
[cm][eval exp="f.Dp_c[2]=1" ]（赤色的[jump target="*p_c" ]
*p_c3
[cm][eval exp="f.Dp_c[3]=1" ]（黄色的[jump target="*p_c" ]
*p_c4
[cm][eval exp="f.Dp_c[4]=1" ]（绿色的[jump target="*p_c" ]
*p_c5
[cm][eval exp="f.Dp_c[5]=1" ]（紫色的[jump target="*p_c" ]
*p_c6
[cm][eval exp="f.Dp_c[6]=1" ]（橙色的[jump target="*p_c" ]
*p_c7
[cm][eval exp="f.Dp_c[7]=1" ]（白色的[jump target="*p_c" ]
*p_c8
[cm][eval exp="f.Dp_c[8]=1" ]（黑色的[jump target="*p_c" ]
*p_c9
[cm][eval exp="f.Dp_c[9]=1" ]（桃色的[jump target="*p_c" ]
*p_c
花形髮卡已購買。[p_]
[if exp="f.Dp_c[0]!='got'" ][eval exp="f.Dp_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]啊、花柄的髮卡。好可愛啊。[p_]
	[f/ss]真期待著樂趣。[lr_]
	[f/re]谢谢你、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]和之前買的顏色不一樣。[p_]
	[f/s]我對花不瞭解、顏色不一樣的話看起來就好像是不一樣的種類。[lr_]
	[f/re]谢谢你、[name]。[p_]
[endif][after_shop]


*p_d_all
[cm][eval exp="f.Dp_d[1]=1,f.Dp_d[2]=1,f.Dp_d[3]=1,f.Dp_d[4]=1,f.Dp_d[5]=1,f.Dp_d[6]=1,f.Dp_d[7]=1,f.Dp_d[8]=1,f.Dp_d[9]=1" ]
[eval exp="f.shop_d=f.shop_d+2" ][jump target="*p_d" ]
*p_d1
[cm][eval exp="f.Dp_d[1]=1" ]（心型的[jump target="*p_d" ]
*p_d2
[cm][eval exp="f.Dp_d[2]=1" ]（星型的[jump target="*p_d" ]
*p_d3
[cm][eval exp="f.Dp_d[3]=1" ]（三叶草型的[jump target="*p_d" ]

*p_d
髮夾已購買。[p_]
[if exp="f.Dp_c[0]!='got'" ][eval exp="f.Dp_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]髮夾的形狀好可愛啊。[lr_]
	如此特別的設計配洋裝最合適了。[p_]
	[f/ss]谢谢你、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]髮夾的形狀好可愛啊。[lr_]
	如此特別的設計配洋裝最合適了。[p_]
	[f/ss]谢谢你、[name]。[p_]
[endif][after_shop]


;;メガネ-セリフ
*g_a_all
[cm][eval exp="f.Dg_a[1]=1,f.Dg_a[2]=1,f.Dg_a[3]=1,f.Dg_a[4]=1,f.Dg_a[5]=1,f.Dg_a[6]=1,f.Dg_a[7]=1,f.Dg_a[8]=1,f.Dg_a[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*g_a" ]
*g_a1
[cm][eval exp="f.Dg_a[1]=1" ]（青色的[jump target="*g_a" ]
*g_a2
[cm][eval exp="f.Dg_a[2]=1" ]（赤色的[jump target="*g_a" ]
*g_a3
[cm][eval exp="f.Dg_a[3]=1" ]（黄色的[jump target="*g_a" ]
*g_a4
[cm][eval exp="f.Dg_a[4]=1" ]（绿色的[jump target="*g_a" ]
*g_a5
[cm][eval exp="f.Dg_a[5]=1" ]（紫色的[jump target="*g_a" ]
*g_a6
[cm][eval exp="f.Dg_a[6]=1" ]（橙色的[jump target="*g_a" ]
*g_a7
[cm][eval exp="f.Dg_a[7]=1" ]（白色的[jump target="*g_a" ]
*g_a8
[cm][eval exp="f.Dg_a[8]=1" ]（黑色的[jump target="*g_a" ]
*g_a9
[cm][eval exp="f.Dg_a[9]=1" ]（桃色的[jump target="*g_a" ]
*g_a
眼鏡已購買。[p]
[if exp="f.Dg_a[0]!='got'" ][eval exp="f.Dg_a[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/c]
	[f/re]眼鏡…嗎？[lr_]
	[f/re]可是我、沒有近視啊。[p_]
	[f/]啊咧。這個、沒有度數呢。[lr_]
	[f/re]你說、時髦嗎？[p_]
	[f/s]雖然不太理解、但是[name]喜歡的話我也想試着戴上。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]這個…。和之前買的眼鏡形狀不一樣呢。[lr_]
	[f/s]謝謝你。[p_]
	[f/s]戴上眼鏡後感覺好像稍微變聰明了似的。[p_]
[endif][after_shop]

*g_b_all
[cm][eval exp="f.Dg_b[1]=1,f.Dg_b[2]=1,f.Dg_b[3]=1,f.Dg_b[4]=1,f.Dg_b[5]=1,f.Dg_b[6]=1,f.Dg_b[7]=1,f.Dg_b[8]=1,f.Dg_b[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*g_b" ]
*g_b1
[cm][eval exp="f.Dg_b[1]=1" ]（青色的[jump target="*g_b" ]
*g_b2
[cm][eval exp="f.Dg_b[2]=1" ]（赤色的[jump target="*g_b" ]
*g_b3
[cm][eval exp="f.Dg_b[3]=1" ]（黄色的[jump target="*g_b" ]
*g_b4
[cm][eval exp="f.Dg_b[4]=1" ]（绿色的[jump target="*g_b" ]
*g_b5
[cm][eval exp="f.Dg_b[5]=1" ]（紫色的[jump target="*g_b" ]
*g_b6
[cm][eval exp="f.Dg_b[6]=1" ]（橙色的[jump target="*g_b" ]
*g_b7
[cm][eval exp="f.Dg_b[7]=1" ]（白色的[jump target="*g_b" ]
*g_b8
[cm][eval exp="f.Dg_b[8]=1" ]（黑色的[jump target="*g_b" ]
*g_b9
[cm][eval exp="f.Dg_b[9]=1" ]（桃色的[jump target="*g_b" ]
*g_b
四角眼鏡已購買。[p]
[if exp="f.Dg_b[0]!='got'" ][eval exp="f.Dg_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個…。和之前購買的眼鏡形狀不一樣。[p_]
	[f/s]帶上去感覺更聰明了。[lr_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個……。和之前的眼鏡顏色不一樣了呢。[lr_]
	[f/s]謝謝你。[p_]
	[f/s]戴上眼鏡感覺很時尚、真不可思議。[p_]
[endif][after_shop]

*g_c_all
[cm][eval exp="f.Dg_c[1]=1,f.Dg_c[2]=1,f.Dg_c[3]=1,f.Dg_c[4]=1,f.Dg_c[5]=1,f.Dg_c[6]=1,f.Dg_c[7]=1,f.Dg_c[8]=1,f.Dg_c[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*g_c" ]
*g_c1
[cm][eval exp="f.Dg_c[1]=1" ]（青色的[jump target="*g_c" ]
*g_c2
[cm][eval exp="f.Dg_c[2]=1" ]（赤色的[jump target="*g_c" ]
*g_c3
[cm][eval exp="f.Dg_c[3]=1" ]（黄色的[jump target="*g_c" ]
*g_c4
[cm][eval exp="f.Dg_c[4]=1" ]（绿色的[jump target="*g_c" ]
*g_c5
[cm][eval exp="f.Dg_c[5]=1" ]（紫色的[jump target="*g_c" ]
*g_c6
[cm][eval exp="f.Dg_c[6]=1" ]（橙色的[jump target="*g_c" ]
*g_c7
[cm][eval exp="f.Dg_c[7]=1" ]（白色的[jump target="*g_c" ]
*g_c8
[cm][eval exp="f.Dg_c[8]=1" ]（黑色的[jump target="*g_c" ]
*g_c9
[cm][eval exp="f.Dg_c[9]=1" ]（桃色的[jump target="*g_c" ]
*g_c
半緣眼鏡已購買。[p]
[if exp="f.Dg_c[0]!='got'" ][eval exp="f.Dg_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個…。和之前購買的眼鏡形狀不一樣。[p_]
	[f/s]半緣是很時尚的造型啊。[lr_]
	[f/re]謝謝你。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個……。和之前的眼鏡顏色不一樣了呢。[lr_]
	[f/s]謝謝你。[p_]
	[f/s]戴着時髦的眼鏡、感覺很不可思議呢。[p_]
[endif][after_shop]

;;頭-セリフ
*h_a1
[cm][eval exp="f.Dh_a[1]=1" ][eval exp="f.r='got'" ]
[_]（獣耳裝飾品已购买。[p_]
	[shop_f/]
	[f/re]這是…有着動物的耳朵一樣的裝飾的髮箍嗎？[p_]
	[f/re]…雖然不是很理解、但是[name]喜歡的話我會戴上它的。[p_]
	[f/s]…啊、輕飄飄的、摸起來很舒服。[p_]
[after_shop]

*h_a2
[cm][eval exp="f.Dh_a[2]=1" ][eval exp="f.r='got'" ]
[_]（獣角裝飾品已购买。[p_]
	[shop_f/]
	[f/re]這個…帶着動物的角的髮箍嗎？[p_]
	[f/re]…雖然不是很理解、但是[name]喜歡的話我會戴上它的。[p_]
	[f/re]…挺結實的呢。[r]
	[f/re]雖然不像是真的。[p_]
[after_shop]

*h_b1
[cm][eval exp="f.Dh_b[1]=1" ][eval exp="f.r='got'" ]
[_]（稻草帽已购买。[p_]
	[shop_f/s]
	[f/re]這個是…又輕便邊檐又寬的帽子呢。[p_]
	[f/re]夏天的時候戴著出來遮陽剛剛好。[lr_]
	[f/ss]谢谢你、[name]。[p_]
[after_shop]

*h_b2
[cm][eval exp="f.Dh_b[2]=1" ][eval exp="f.r='got'" ]
	[_]（蕾絲頭飾已购买。[p_]
	[shop_f/]
	[f/re]女仆的…頭飾嗎？[p_]
	[f/re]要給之前買給我的女仆裝搭配著穿嗎？[p_]
	[f/s]謝謝你。[p_]
[after_shop]

*h_d_all
[cm][eval exp="f.Dh_d[1]=1,f.Dh_d[2]=1,f.Dh_d[3]=1,f.Dh_d[4]=1,f.Dh_d[5]=1,f.Dh_d[6]=1,f.Dh_d[7]=1,f.Dh_d[8]=1,f.Dh_d[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*h_d" ]
*h_d1
[cm][eval exp="f.Dh_d[1]=1" ]（青色的[jump target="*h_d" ]
*h_d2
[cm][eval exp="f.Dh_d[2]=1" ]（赤色的[jump target="*h_d" ]
*h_d3
[cm][eval exp="f.Dh_d[3]=1" ]（黄色的[jump target="*h_d" ]
*h_d4
[cm][eval exp="f.Dh_d[4]=1" ]（绿色的[jump target="*h_d" ]
*h_d5
[cm][eval exp="f.Dh_d[5]=1" ]（紫色的[jump target="*h_d" ]
*h_d6
[cm][eval exp="f.Dh_d[6]=1" ]（橙色的[jump target="*h_d" ]
*h_d7
[cm][eval exp="f.Dh_d[7]=1" ]（白色的[jump target="*h_d" ]
*h_d8
[cm][eval exp="f.Dh_d[8]=1" ]（黑色的[jump target="*h_d" ]
*h_d9
[cm][eval exp="f.Dh_d[9]=1" ]（桃色的[jump target="*h_d" ]
*h_d
髮箍已購買。[p_]
[if exp="f.Dh_d[0]!='got'" ][eval exp="f.Dh_d[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]髮箍啊。[lr_]
	[f/s]雖然簡單、但是也有實用性。[p_]
	[f/ss]谢谢你、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]和之前買的髮箍顏色不一樣。[p_]
	[f/s]有各種各樣的顏色和西服搭配的看起來都很快樂。[p_]
	[f/ss]谢谢你、[name]。[p_]
[endif][after_shop]

*h_e_all
[cm][eval exp="f.Dh_e[1]=1,f.Dh_e[2]=1,f.Dh_e[3]=1,f.Dh_e[4]=1,f.Dh_e[5]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*h_e" ]
*h_e1
[cm][eval exp="f.Dh_e[1]=1" ]（白色的[jump target="*h_e" ]
*h_e2
[cm][eval exp="f.Dh_e[2]=1" ]（茶色的[jump target="*h_e" ]
*h_e3
[cm][eval exp="f.Dh_e[3]=1" ]（黑色的[jump target="*h_e" ]
*h_e4
[cm][eval exp="f.Dh_e[4]=1" ]（绿色的[jump target="*h_e" ]
*h_e5
[cm][eval exp="f.Dh_e[5]=1" ]（赤色的[jump target="*h_e" ]
*h_e
鴨舌帽已購買。[p_]
[if exp="f.Dh_e[0]!='got'" ][eval exp="f.Dh_e[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/] 
	[f/re]鴨舌帽嗎。[lr_]
	[f/re]這形式的帽子男人的印象很强、但是我也很適合我嗎？[p_]
	[f/s]但還是、谢谢你[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]和之前買的顏色不一樣呢。[p_]
	[f/re]很好很柔軟。[lr_]
	[f/ss]谢谢你、[name]。[p_]
[endif][after_shop]

*h_f_all
[cm][eval exp="f.Dh_f[1]=1,f.Dh_f[2]=1,f.Dh_f[3]=1,f.Dh_f[4]=1,f.Dh_f[5]=1,f.Dh_f[6]=1,f.Dh_f[7]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*h_f" ]
*h_f1
[cm][eval exp="f.Dh_f[1]=1" ]（黑色的[jump target="*h_f" ]
*h_f2
[cm][eval exp="f.Dh_f[2]=1" ]（白色的[jump target="*h_f" ]
*h_f3
[cm][eval exp="f.Dh_f[3]=1" ]（茶色的[jump target="*h_f" ]
*h_f4
[cm][eval exp="f.Dh_f[4]=1" ]（青色的[jump target="*h_f" ]
*h_f5
[cm][eval exp="f.Dh_f[5]=1" ]（赤色的[jump target="*h_f" ]
*h_f6
[cm][eval exp="f.Dh_f[6]=1" ]（紫色的[jump target="*h_f" ]
*h_f7
[cm][eval exp="f.Dh_f[7]=1" ]（绿色的[jump target="*h_f" ]
*h_f
大禮帽已購買。[p_]
[if exp="f.Dh_f[0]!='got'" ][eval exp="f.Dh_f[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]是…大禮帽嗎。[lr_]
	[f/re]這是我能戴的東西嗎？[p_]
	[f/c][name]如果你希望的話我帶就好了、但是是否適合呢…。[p_]
	[f/s]還是、謝謝你。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]和之前買的大禮帽顏色不一樣啊[p_]
	[f/re]我想這個款式沒有黑色外、也有其它不同。[p_]
	[f/s]谢谢你、[name]。[p_]
[endif][after_shop]


;;靴下-セリフ
*s_a_all
[cm][eval exp="f.Ds_a[1]=1,f.Ds_a[2]=1,f.Ds_a[3]=1,f.Ds_a[4]=1,f.Ds_a[5]=1,f.Ds_a[6]=1,f.Ds_a[7]=1,f.Ds_a[8]=1,f.Ds_a[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*s_a" ]
*s_a2
[cm][eval exp="f.Ds_a[2]=1" ]（黑色的[jump target="*s_a" ]
*s_a3
[cm][eval exp="f.Ds_a[3]=1" ]（青色的[jump target="*s_a" ]
*s_a4
[cm][eval exp="f.Ds_a[4]=1" ]（赤色的[jump target="*s_a" ]
*s_a5
[cm][eval exp="f.Ds_a[5]=1" ]（黄色的[jump target="*s_a" ]
*s_a6
[cm][eval exp="f.Ds_a[6]=1" ]（绿色的[jump target="*s_a" ]
*s_a7
[cm][eval exp="f.Ds_a[7]=1" ]（紫色的[jump target="*s_a" ]
*s_a8
[cm][eval exp="f.Ds_a[8]=1" ]（橙色的[jump target="*s_a" ]
*s_a9
[cm][eval exp="f.Ds_a[9]=1" ]（桃色的[jump target="*s_a" ]
*s_a
襪子已購買。[p_]
[if exp="f.bought_skip==1" ][after_shop][endif]
	[shop_f/]
	[f/re]這個…。和以前買過的襪子的顏色不一樣呢。[lr_]
[if exp="f.step>=6" ]
	[f/s]謝謝你。[lr_]
	[f/re][name]喜歡的東西我會一直穿著的。[p_]
[else]
	[f/s]…謝謝你。[p_]
[endif][after_shop]

*s_b_all
[cm][eval exp="f.Ds_b[1]=1,f.Ds_b[2]=1,f.Ds_b[3]=1,f.Ds_b[4]=1,f.Ds_b[5]=1,f.Ds_b[6]=1,f.Ds_b[7]=1,f.Ds_b[8]=1,f.Ds_b[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*s_b" ]
*s_b1
[cm][eval exp="f.Ds_b[1]=1" ]（白色的[jump target="*s_b" ]
*s_b2
[cm][eval exp="f.Ds_b[2]=1" ]（黑色的[jump target="*s_b" ]
*s_b3
[cm][eval exp="f.Ds_b[3]=1" ]（青色的[jump target="*s_b" ]
*s_b4
[cm][eval exp="f.Ds_b[4]=1" ]（赤色的[jump target="*s_b" ]
*s_b5
[cm][eval exp="f.Ds_b[5]=1" ]（黄色的[jump target="*s_b" ]
*s_b6
[cm][eval exp="f.Ds_b[6]=1" ]（绿色的[jump target="*s_b" ]
*s_b7
[cm][eval exp="f.Ds_b[7]=1" ]（紫色的[jump target="*s_b" ]
*s_b8
[cm][eval exp="f.Ds_b[8]=1" ]（橙色的[jump target="*s_b" ]
*s_b9
[cm][eval exp="f.Ds_b[9]=1" ]（桃色的[jump target="*s_b" ]
*s_b
長襪已購買。[p]
[if exp="f.Ds_b[0]!='got'" ][eval exp="f.Ds_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個是…好長的襪子啊。[lr_]
	[f/re]我沒穿過這麼長的襪子。[p_]
	[f/s]謝謝你。[name][lr_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]這個是…。這個是之前買給我的不同顏色的襪子。[lr_]
	[f/s]謝謝你。[lr_]
	[f/re][name]讓我穿我喜歡穿的啊。[p_]
[p_]
[endif][after_shop]

*s_c_all
[cm][eval exp="f.Ds_c[1]=1,f.Ds_c[2]=1,f.Ds_c[3]=1,f.Ds_c[4]=1,f.Ds_c[5]=1,f.Ds_c[6]=1,f.Ds_c[7]=1,f.Ds_c[8]=1,f.Ds_c[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*s_c" ]
*s_c1
[cm][eval exp="f.Ds_c[1]=1" ]（灰色的[jump target="*s_c" ]
*s_c2
[cm][eval exp="f.Ds_c[2]=1" ]（黑色的[jump target="*s_c" ]
*s_c3
[cm][eval exp="f.Ds_c[3]=1" ]（青色的[jump target="*s_c" ]
*s_c4
[cm][eval exp="f.Ds_c[4]=1" ]（赤色的[jump target="*s_c" ]
*s_c5
[cm][eval exp="f.Ds_c[5]=1" ]（黄色的[jump target="*s_c" ]
*s_c6
[cm][eval exp="f.Ds_c[6]=1" ]（绿色的[jump target="*s_c" ]
*s_c7
[cm][eval exp="f.Ds_c[7]=1" ]（紫色的[jump target="*s_c" ]
*s_c8
[cm][eval exp="f.Ds_c[8]=1" ]（橙色的[jump target="*s_c" ]
*s_c9
[cm][eval exp="f.Ds_c[9]=1" ]（桃色的[jump target="*s_c" ]
*s_c
條紋襪子已購買。[p]
[if exp="f.Ds_c[0]!='got'" ][eval exp="f.Ds_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個是…條紋襪子。[p_]
	[f/cl]能搭什麼樣的衣服呢…。[lr_]
	[f/sc]搭配的東西就[name]包在你身上可以嗎？[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]這個是…。這個是之前買給我的不同顏色的襪子。[lr_]
	[f/s]謝謝你。[lr_]
	[f/re][name]讓我穿我喜歡穿的顏色吧。[p_]
[p_]
[endif][after_shop]

*s_d_all
[cm][eval exp="f.Ds_d[1]=1,f.Ds_d[2]=1,f.Ds_d[3]=1,f.Ds_d[4]=1,f.Ds_d[5]=1,f.Ds_d[6]=1,f.Ds_d[7]=1,f.Ds_d[8]=1,f.Ds_d[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*s_d" ]
*s_d1
[cm][eval exp="f.Ds_d[1]=1" ]（灰色的[jump target="*s_d" ]
*s_d2
[cm][eval exp="f.Ds_d[2]=1" ]（黑色的[jump target="*s_d" ]
*s_d3
[cm][eval exp="f.Ds_d[3]=1" ]（青色的[jump target="*s_d" ]
*s_d4
[cm][eval exp="f.Ds_d[4]=1" ]（赤色的[jump target="*s_d" ]
*s_d5
[cm][eval exp="f.Ds_d[5]=1" ]（黄色的[jump target="*s_d" ]
*s_d6
[cm][eval exp="f.Ds_d[6]=1" ]（绿色的[jump target="*s_d" ]
*s_d7
[cm][eval exp="f.Ds_d[7]=1" ]（紫色的[jump target="*s_d" ]
*s_d8
[cm][eval exp="f.Ds_d[8]=1" ]（橙色的[jump target="*s_d" ]
*s_d9
[cm][eval exp="f.Ds_d[9]=1" ]（桃色的[jump target="*s_d" ]
*s_d
長條紋襪子已購買。[p]
[if exp="f.Ds_d[0]!='got'" ][eval exp="f.Ds_d[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個是…、條紋的長襪。[p_]
	[f/cl]這個也好像很難搭衣服呢…。[lr_]
	[f/ssc]那搭配也是[name]包在你身上咯？[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]這個是…。這個是之前買給我的不同顏色的襪子。[lr_]
	[f/s]謝謝你。[lr_]
	[f/re][name]讓我穿我喜歡穿的啊。[p_]
[endif][after_shop]

*s_e_all
[cm][eval exp="f.Ds_e[1]=1,f.Ds_e[2]=1,f.Ds_e[3]=1,f.Ds_e[4]=1,f.Ds_e[5]=1,f.Ds_e[6]=1,f.Ds_e[7]=1,f.Ds_e[8]=1,f.Ds_e[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*s_e" ]
*s_e1
[cm][eval exp="f.Ds_e[1]=1" ]（白色的[jump target="*s_e" ]
*s_e2
[cm][eval exp="f.Ds_e[2]=1" ]（灰色的[jump target="*s_e" ]
*s_e3
[cm][eval exp="f.Ds_e[3]=1" ]（青色的[jump target="*s_e" ]
*s_e4
[cm][eval exp="f.Ds_e[4]=1" ]（赤色的[jump target="*s_e" ]
*s_e5
[cm][eval exp="f.Ds_e[5]=1" ]（黄色的[jump target="*s_e" ]
*s_e6
[cm][eval exp="f.Ds_e[6]=1" ]（绿色的[jump target="*s_e" ]
*s_e7
[cm][eval exp="f.Ds_e[7]=1" ]（紫色的[jump target="*s_e" ]
*s_e8
[cm][eval exp="f.Ds_e[8]=1" ]（橙色的[jump target="*s_e" ]
*s_e9
[cm][eval exp="f.Ds_e[9]=1" ]（桃色的[jump target="*s_e" ]
*s_e
條紋襪子已購買。[p]
[if exp="f.Ds_e[0]!='got'" ][eval exp="f.Ds_e[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個…、也條紋襪子嗎。[p_]
	[f/s]底色是黑色的看起來就很不一樣了呢。[lr_]
	[f/re]比起白色看起來更穩重一點。[p_]
	[f/s]謝謝你。[name][p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]這個是…。這個是之前買給我的不同顏色的襪子。[lr_]
	[f/s]謝謝你。[lr_]
	[f/re][name]讓我穿我喜歡穿的啊。[p_]
[endif][after_shop]

*s_f_all
[cm][eval exp="f.Ds_f[1]=1,f.Ds_f[2]=1,f.Ds_f[3]=1,f.Ds_f[4]=1,f.Ds_f[5]=1,f.Ds_f[6]=1,f.Ds_f[7]=1,f.Ds_f[8]=1,f.Ds_f[9]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*s_f" ]
*s_f1
[cm][eval exp="f.Ds_f[1]=1" ]（白色的[jump target="*s_f" ]
*s_f2
[cm][eval exp="f.Ds_f[2]=1" ]（灰色的[jump target="*s_f" ]
*s_f3
[cm][eval exp="f.Ds_f[3]=1" ]（青色的[jump target="*s_f" ]
*s_f4
[cm][eval exp="f.Ds_f[4]=1" ]（赤色的[jump target="*s_f" ]
*s_f5
[cm][eval exp="f.Ds_f[5]=1" ]（黄色的[jump target="*s_f" ]
*s_f6
[cm][eval exp="f.Ds_f[6]=1" ]（绿色的[jump target="*s_f" ]
*s_f7
[cm][eval exp="f.Ds_f[7]=1" ]（紫色的[jump target="*s_f" ]
*s_f8
[cm][eval exp="f.Ds_f[8]=1" ]（橙色的[jump target="*s_f" ]
*s_f9
[cm][eval exp="f.Ds_f[9]=1" ]（桃色的[jump target="*s_f" ]
*s_f
長條紋襪子已購買。[p]
[if exp="f.Ds_f[0]!='got'" ][eval exp="f.Ds_f[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]這個是…、又是長的條紋襪子。[p_]
	[f/sc]…一直靠近的很近看的話會暈的呢。[lr_]
	[f/s]不過好期待看到和什麼樣的衣服搭配在一起。[p_]
	[f/ss]謝謝你。[name][p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]這個是…。這個是之前買給我的不同顏色的襪子。[lr_]
	[f/s]謝謝你。[lr_]
	[f/re][name]讓我穿我喜歡穿的啊。[p_]
[endif][after_shop]

;;マフラー-セリフ
*ne_a_all
[cm][eval exp="f.Dne_a[1]=1,f.Dne_a[2]=1,f.Dne_a[3]=1,f.Dne_a[4]=1,f.Dne_a[5]=1,f.Dne_a[6]=1,f.Dne_a[7]=1,f.Dne_a[8]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*ne_a" ]
*ne_a1
[cm][eval exp="f.Dne_a[1]=1" ]（茶色的[jump target="*ne_a" ]
*ne_a2
[cm][eval exp="f.Dne_a[2]=1" ]（青色的[jump target="*ne_a" ]
*ne_a3
[cm][eval exp="f.Dne_a[3]=1" ]（赤色的[jump target="*ne_a" ]
*ne_a4
[cm][eval exp="f.Dne_a[4]=1" ]（绿色的[jump target="*ne_a" ]
*ne_a5
[cm][eval exp="f.Dne_a[5]=1" ]（紫色的[jump target="*ne_a" ]
*ne_a6
[cm][eval exp="f.Dne_a[6]=1" ]（桃色的[jump target="*ne_a" ]
*ne_a7
[cm][eval exp="f.Dne_a[7]=1" ]（白色的[jump target="*ne_a" ]
*ne_a8
[cm][eval exp="f.Dne_a[8]=1" ]（黑色的[jump target="*ne_a" ]

*ne_a
圍巾已購買[p_]
[if exp="f.Dne_a[0]!='got'" ][eval exp="f.Dne_a[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s] 
	[f/re]是圍巾呢。[lr_]
	[f/re]你可以買給我嗎？[p_]
	[f/ss]…好暖和呀。[p_]
	[f/s]谢谢你、我會很小心的使用的。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s] 
	[f/re]和之前顏色不同的圍巾嗎。[lr_]
	[f/re]你可以買給我嗎？[p_]
	[f/s]谢谢你、[name][lr_]
	[f/ssp]…呵呵♪[p_]
[endif][after_shop]

*ne_c_all
[cm][eval exp="f.Dne_c[1]=1,f.Dne_c[2]=1,f.Dne_c[3]=1,f.Dne_c[4]=1,f.Dne_c[5]=1,f.Dne_c[6]=1,f.Dne_c[7]=1,f.Dne_c[8]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*ne_c" ]
*ne_c1
[cm][eval exp="f.Dne_c[1]=1" ]（茶色的[jump target="*ne_c" ]
*ne_c2
[cm][eval exp="f.Dne_c[2]=1" ]（青色的[jump target="*ne_c" ]
*ne_c3
[cm][eval exp="f.Dne_c[3]=1" ]（赤色的[jump target="*ne_c" ]
*ne_c4
[cm][eval exp="f.Dne_c[4]=1" ]（绿色的[jump target="*ne_c" ]
*ne_c5
[cm][eval exp="f.Dne_c[5]=1" ]（紫色的[jump target="*ne_c" ]
*ne_c6
[cm][eval exp="f.Dne_c[6]=1" ]（桃色的[jump target="*ne_c" ]
*ne_c7
[cm][eval exp="f.Dne_c[7]=1" ]（白色的[jump target="*ne_c" ]
*ne_c8
[cm][eval exp="f.Dne_c[8]=1" ]（黑色的[jump target="*ne_c" ]

*ne_c
格子圍巾已購買[p_]
[if exp="f.Dne_c[0]!='got'" ][eval exp="f.Dne_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s] 
	[f/re]是有圖案的圍巾呢、[lr_]
	[f/re]感覺純色的更加花俏。[lr_]
	[f/ss]變得有點期待冬天了呢。[p_]
	[f/s]謝謝、我會很珍惜的用它的。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s] 
	[f/re]和之前不同顏色的圍巾呢。[lr_]
	[f/re]能夠賣給我嗎？[p_]
	[f/s]谢谢你、[name][lr_]
	[f/ssp]…暖和♪[p_]
[endif][after_shop]


;;エプロン-セリフ
*ne_b_all
[cm][eval exp="f.Dne_b[1]=1,f.Dne_b[2]=1,f.Dne_b[3]=1,f.Dne_b[4]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*ne_b" ]
*ne_b1
[cm][eval exp="f.Dne_b[1]=1" ]（白色的[jump target="*ne_b" ]
*ne_b2
[cm][eval exp="f.Dne_b[2]=1" ]（青色的[jump target="*ne_b" ]
*ne_b3
[cm][eval exp="f.Dne_b[3]=1" ]（灰色的[jump target="*ne_b" ]
*ne_b4
[cm][eval exp="f.Dne_b[4]=1" ]（黑色的[jump target="*ne_b" ]
*ne_b
圍裙已購買[p_]
[if exp="f.Dne_b[0]!='got'" ][eval exp="f.Dne_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/] 
	[f/s]圍裙嗎？[lr_]
	[f/re]做飯的時候不能把你買給我的洋服弄髒了呢。[p_]
	[f/ss]谢谢你、[r]我會小心地使用的。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/s]和之前顏色不同的圍裙呢[lr_]
	[f/re]要買給我嗎？[p_]
	[f/ss]谢谢你、[name]。[p_]
[endif][after_shop]

;;下着-セリフ
*u_a_all
[cm][eval exp="f.Du_a[1]=1,f.Du_a[2]=1,f.Du_a[3]=1,f.Du_a[4]=1,f.Du_a[5]=1,f.Du_a[6]=1,f.Du_a[7]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*u_a" ]
*u_a1
[cm][eval exp="f.Du_a[1]=1" ]（白色的[jump target="*u_a" ]
*u_a2
[cm][eval exp="f.Du_a[2]=1" ]（青色的[jump target="*u_a" ]
*u_a3
[cm][eval exp="f.Du_a[3]=1" ]（桃色的[jump target="*u_a" ]
*u_a4
[cm][eval exp="f.Du_a[4]=1" ]（黄色的[jump target="*u_a" ]
*u_a5
[cm][eval exp="f.Du_a[5]=1" ]（绿色的[jump target="*u_a" ]
*u_a6
[cm][eval exp="f.Du_a[6]=1" ]（橙色的[jump target="*u_a" ]
*u_a7
[cm][eval exp="f.Du_a[7]=1" ]（黑色的[jump target="*u_a" ]
*u_a
內衣已購買。[p_]
[if exp="f.bought_skip==1" ][after_shop][endif]
[shop_f/] 
	[f/re]這個…內衣的顏色不一樣呢。[lr_]
	[f/s]即使看不見的地方還是穿得時髦一些要好呢。[p_]
[if exp="f.lust>=30" ]
	[f/sp]…因爲是要讓[name]看的地方。[lr_][endif]
	[f/re]謝謝你。[p_][after_shop]

*u_b_all
[cm][eval exp="f.Du_b[1]=1,f.Du_b[2]=1,f.Du_b[3]=1,f.Du_b[4]=1,f.Du_b[5]=1,f.Du_b[6]=1,f.Du_b[7]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*u_b" ]
*u_b1
[cm][eval exp="f.Du_b[1]=1" ]（白色的[jump target="*u_b" ]
*u_b2
[cm][eval exp="f.Du_b[2]=1" ]（青色的[jump target="*u_b" ]
*u_b3
[cm][eval exp="f.Du_b[3]=1" ]（桃色的[jump target="*u_b" ]
*u_b4
[cm][eval exp="f.Du_b[4]=1" ]（黄色的[jump target="*u_b" ]
*u_b5
[cm][eval exp="f.Du_b[5]=1" ]（绿色的[jump target="*u_b" ]
*u_b6
[cm][eval exp="f.Du_b[6]=1" ]（橙色的[jump target="*u_b" ]
*u_b7
[cm][eval exp="f.Du_b[7]=1" ]（黑色的[jump target="*u_b" ]
*u_b
蕾丝内衣已購買。[p_]
[if exp="f.Du_b[0]!='got'" ][eval exp="f.Du_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/p]
	[f/re]這是…帶有裝飾的有點色色的內衣呢。[lr_]
	[f/re]好像有點大人的感覺了。[p_]
	[f/sp]啊…谢谢你。[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個…內衣的顏色不一樣呢。[lr_]
	[f/s]即使看不見的地方還是穿得時髦一些要好呢。[p_]
	[f/re]谢谢你、[name]。[p_]
[endif][after_shop]

*u_c_all
[cm][eval exp="f.Du_c[1]=1,f.Du_c[2]=1,f.Du_c[3]=1,f.Du_c[4]=1,f.Du_c[5]=1,f.Du_c[6]=1,f.Du_c[7]=1" ]
[eval exp="f.shop_c=f.shop_c+2" ][jump target="*u_c" ]
*u_c1
[cm][eval exp="f.Du_c[1]=1" ]（白色的[jump target="*u_c" ]
*u_c2
[cm][eval exp="f.Du_c[2]=1" ]（青色的[jump target="*u_c" ]
*u_c3
[cm][eval exp="f.Du_c[3]=1" ]（桃色的[jump target="*u_c" ]
*u_c4
[cm][eval exp="f.Du_c[4]=1" ]（黄色的[jump target="*u_c" ]
*u_c5
[cm][eval exp="f.Du_c[5]=1" ]（绿色的[jump target="*u_c" ]
*u_c6
[cm][eval exp="f.Du_c[6]=1" ]（橙色的[jump target="*u_c" ]
*u_c7
[cm][eval exp="f.Du_c[7]=1" ]（黑色的[jump target="*u_c" ]
*u_c
圓點花紋內衣購買了。[p_]
[if exp="f.Du_c[0]!='got'" ][eval exp="f.Du_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]這個是…有圓點花紋的內衣啊有點可愛呀。[lr_]
	[f/p]…[name]也覺得這個很可愛吧[p_]
	[f/re]謝謝你。[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]這個是…顏色不一樣的內衣。[lr_]
	[f/s]雖然是在看不見的地方、這個很時尚呢有點開心哦。[p_]
	[f/re]谢谢你、[name]。[p_]
[endif][after_shop]

;;既買-お買い上げ後
*bought
[cm]（這個已經買了。買其它的吧。[l]
*show_menu
[if exp="f.ch_win==1" ][jump target="*shop_dress" ][elsif exp="f.ch_win==2" ][jump target="*shop_dress2" ]
[elsif exp="f.ch_win==3" ][jump target="*shop_dress3" ][elsif exp="f.ch_win==4" ][jump target="*shop_hair" ]
[elsif exp="f.ch_win==5" ][jump target="*shop_pin" ][elsif exp="f.ch_win==6" ][jump target="*shop_head" ]
[elsif exp="f.ch_win==7" ][jump target="*shop_leg" ][elsif exp="f.ch_win==8" ][jump target="*shop_glasses" ]
[elsif exp="f.ch_win==9" ][jump target="*shop_under" ][elsif exp="f.ch_win==10" ][jump target="*shop_arm" ]
[elsif exp="f.ch_win==11" ][jump target="*shop_other" ][endif]

*return_menu
[cm][_]今天該回去了吧。[p_][eval exp="f.shop_c=6" ]
[jump target="*end_shop" ]

*after_shop
[cm][dress_comp_check]
[eval exp="f.love=f.love+1" ][eval exp="f.shop_c=f.shop_c+1" ]
[if exp="f.daily_out!='shop_d'" ][eval exp="f.daily_out='shop_a'" ][endif]
[if exp="f.shop_c<=2" ][jump target="*return_shop" ]
[elsif exp="f.love>=200 && f.shop_c<=3" ][jump target="*return_shop" ]
[elsif exp="f.love>=500 && f.shop_c<=4" ][jump target="*return_shop" ]
[elsif exp="f.love>=1000 && f.shop_c<=5" ][jump target="*return_shop" ]
[elsif exp="f.love>=1500 && f.shop_c<=6" ][jump target="*return_shop" ]
[elsif exp="f.love>=2000 && f.shop_c<=7" ][jump target="*return_shop" ]
[elsif exp="f.love>=2500 && f.shop_c<=8" ][jump target="*return_shop" ][endif]
[_]今天就到這兒吧。[p_]

*end_shop
[cm][eval exp="f.act=f.act+1" ][eval exp="f.out=1" ][eval exp="f.last_act='shop'" ]
[black][bg_shop][set_lady][chara_show name="sub" time="100" wait="true" ]
[aurel]歡迎下次光臨本店。[p]
[black][_][bgm_SG][return_bace]

*return_shop
[cm][_][if exp="f.bought_skip==1 && f.r!='got'" ][jump target="*show_menu" ][endif]
[free_chara][chara_anim][set_lady][eval exp="f.r=0" ]
[chara_show name="sub" height="900" time="100" wait="true" ]
[anim name="sub" time="300" left="-300" ]
[mod_win st="o/win/shop-win.png" ]
[chara_show name="window" time="1" wait="true" left="613" top="22" ]
[chara_stop][jump target="*show_menu" ]


;;オーレリアトーク
*talk
[cm][eval exp="f.shop_t=1" ]
[if exp="f.shop_talk>=1" ][jump target="*talks" ][else]
[_]（在這個店裡除了這個店員以外沒見過其他人…[p_]
[aurel]其他店員是嗎？[lr_]
本店沒有雇傭過其他店員。[p_]
雖說介紹有點遲了、我是這家店的店長奧蕾莉亞。[lr_]
[aurel]今後還請拜託關照小店。[p_]
[eval exp="f.shop_talk=1" ][jump target="*shop_dress" ][endif]

*talks
[_][random_13]
[if exp="f.r==1" ][jump target="*shop_t1" ][elsif exp="f.r==2" ][jump target="*shop_t2" ]
[elsif exp="f.r==3" ][jump target="*shop_t3" ][elsif exp="f.r==4" ][jump target="*shop_t4" ]
[elsif exp="f.r==5" ][jump target="*shop_t5" ][elsif exp="f.r==6" ][jump target="*shop_t6" ]
[elsif exp="f.r==7" ][jump target="*shop_t7" ][elsif exp="f.r==8" ][jump target="*shop_t8" ]
[elsif exp="f.r==9" ][jump target="*shop_t9" ][elsif exp="f.r==10" ][jump target="*shop_t10" ]
[elsif exp="f.r==11" ][jump target="*shop_t11" ][elsif exp="f.r==12" ][jump target="*shop_t12" ]
[elsif exp="f.r==13" ][jump target="*shop_t13" ][elsif exp="f.r==14" ][jump target="*shop_t14" ]
[elsif exp="f.r==15" ][jump target="*shop_t15" ][endif]

*shop_t1
[aurel]
有什麽喜歡的東西嗎？[p_]
[_]（說話的感覺和方式有點做作。[r]
讓我們感到有些不太舒服[p_]
[jump target="*shop_dress" ]
*shop_t2
（即使在室內帽子也不摘下來嗎…[p_]
[aurel]
是指這個帽子嗎？[p_]
這可是很有「特色」的。[lr_]
客人你不必在意。[p_]
[jump target="*shop_dress" ]
*shop_t3
（真是商品種類特別齊全的店啊…[p_]
[aurel]
各式各樣款式的服飾都有哦。[p_]
稀奇的商品也有不是嗎？[lr_]
從外國也有進貨。[p_]
…只是、十分抱歉本店不經營任何男士用品。[p_]
[jump target="*shop_dress" ]
*shop_t4
（希露薇在我們談話的時候表情產生了微妙的變化。[p_]
（視線充滿妒忌的看著我。[p_]
[aurel]
你怎麽了？[p_]
[_]（希露薇連忙移開了視線…[p_]
[jump target="*shop_dress" ]
*shop_t5
（沒見過其它客人來這裡、不知道這店的生意怎麼樣[p_]
[aurel]
呼呼…這不需要擔心。[lr_]
這個嘛、至少還是有一個人會來的。[p_]
[_]（她朝這邊看著笑了一下。[p_]
[jump target="*shop_dress" ]
*shop_t6
（相比於其它女性她非常的高。[p_]
（不過也可能是穿了高跟鞋、[r]
因為看不清楚她移動的步伐所以不得而知。[p_]
（帽子下隱藏的年齡也看不出來。[lr_]
沒什麽根據但是從她的身形判斷她應該也有二十好幾了[p_]
（正在思考的時候突然覺得襯衫被從下面拉沒幾下。[lr_]
在沒察覺的時候希露薇把臉扭了過來[p_]
[jump target="*shop_dress" ]
*shop_t7
[aurel]
其實…我還是比較喜歡…。[p_]
嗯嗯…沒什麽。[p_]
[_]（希露薇偷瞟著我的臉、發現了我的笑容。[p_]
[jump target="*shop_dress" ]
*shop_t8
[aurel]
你們關係…看起來相當好呢。[p_]
不、我並不打算深究。[p_]
乎乎…。[p_]
[_]（她應該是吃醋了、在胡思亂想我和奧蕾莉亞嗎。[p_]
[jump target="*shop_dress" ]
*shop_t9
（…話說回來這家店以外的地方都不曾記得見過這女人、感覺很不可思議。[p_]
（再說這條街的人口和占地又不是很多、[r]
若是有如此艳麗的外表無論再遠也應該會注意到的。[p_]
[aurel]
…我的臉上粘上什麼東西了嗎？[p_]
[jump target="*shop_dress" ]
*shop_t10
（縱覽店內[p_]
[aurel]
我不認為這是很好的店？[p_]
由於拘泥於物品的分类[r]
预备好了很多空間[p_]
[_]（和普通的商店相比、稍稍有些陰森…[p_]
[jump target="*shop_dress" ]
*shop_t11
[aurel]
衣服的縫制和設計我也了解一些。[lr_]
作为商品的一部分并存的事物也…。[p_]
就像最初两个人過來的时候买的衣服、[r]
那也是我的独家设计。[p_]
[jump target="*shop_dress" ]
*shop_t12
[aurel]
本店不只售賣服飾、還提供縫補、尺碼修正等服務。[p_]
本店是到處都是年輕妙齡少女的東西、[r]
若有需要、請隨時來商量。[p_]
[jump target="*shop_dress" ]
*shop_t13
（在這個店裡的讓人總覺得不安。[p_]
[aurel]
…[p_]
[_]（這也是店主眼紅的原因吧…[p_]
[jump target="*shop_dress" ]





