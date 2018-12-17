;;メニュー
*menu_button
[if exp="f.ch_win==1" ]
[button target="*shop_dress" graphic="clothe/button-c1.png" x="815" y="33" ][else]
[button target="*shop_dress" graphic="clothe/button-c1-.png" x="815" y="33" ][endif]
;[if exp="f.ch_win==2" ]
;[button target="*shop_dress2" graphic="clothe/button-c2.png" x="865" y="70" ][else]
;[button target="*shop_dress2" graphic="clothe/button-c2-.png" x="865" y="70" ][endif]
;[if exp="f.ch_win==3" ]
;[button target="*shop_dress3" graphic="clothe/button-c3.png" x="910" y="70" ][else]
;[button target="*shop_dress3" graphic="clothe/button-c3-.png" x="910" y="70" ][endif]

;[if exp="f.ch_win==4" ]
;[button target="*shop_hair" graphic="clothe/button-hr.png" x="955" y="70" ][else]
;[button target="*shop_hair" graphic="clothe/button-hr-.png" x="955" y="70" ][endif]
;[if exp="f.ch_win==5" ]
;[button target="*shop_head" graphic="clothe/button-hd.png" x="1010" y="70" ][else]
;[button target="*shop_head" graphic="clothe/button-hd-.png" x="1010" y="70" ][endif]
[if exp="f.ch_win==6 && f.lust>=200" ]
[button target="*shop_acce" graphic="clothe/button-o.png" x="914" y="33" ][elsif exp="f.lust>=300" ]
[button target="*shop_acce" graphic="clothe/button-o-.png" x="914" y="33" ][endif]
;[if exp="f.ch_win==7" ]
;[button target="*shop_leg" graphic="clothe/button-l.png" x="1096" y="70" ][else]
;[button target="*shop_leg" graphic="clothe/button-l-.png" x="1096" y="70" ][endif]
[if exp="f.ch_win==8 && f.lust>=150" ]
[button target="*shop_under" graphic="clothe/button-u.png" x="860" y="33" ][elsif exp="f.lust>=200" ]
[button target="*shop_under" graphic="clothe/button-u-.png" x="860" y="33" ][endif]
;[if exp="f.ch_win==9" ]
;[button target="*shop_other" graphic="clothe/button-o.png" x="1195" y="70" ][else]
;[button target="*shop_other" graphic="clothe/button-o-.png" x="1195" y="70" ][endif]
[button target="*return_menu" graphic="menu/back.png" x="1188" y="563" ]

;[if exp="f.shop_t==1" ]
;[button target="*talk" graphic="clothe/shop-talk.png" x="820" y="20" ][endif]
[return]


;;入店
*shop
[cm][stop_bgm][black][e_dress_comp_check][eval exp="f.shop_c=0" ]
;[random_2][eval exp="f.lady=f.r+10" ]
[eval exp="f.lady=11" ]

[if exp="f.shop_n==1" ][bgm_DS][bg_shop_n]
[_]（進入樣子和白天的時候不一樣的店內。[p]
[set_lady][chara_show name="sub" time="100" wait="true" ]
[aurel]
哎呀、歡迎光臨。請隨便看一下吧。[p]
[else][call target="*first_time" ][endif]

[_]（有些什麼呢？[p]
[eval exp="f.shop_night='went'" ]
[anim name="sub" time="300" left="-300" ]
[chara_mod name="window" time="1" storage="o/win/shop-win.png" ]
[chara_show name="window" time="1" wait="true" left="613" top="22" ]

;;服タブ
*shop_dress
[cm][eval exp="f.ch_win=1" ][call target="*menu_button" ]
;ベビド1
[if exp="f.Dc_xa[10]==1" ][button target="*shop_dress" graphic="clothe/c_doll-.png" x="680" y="165" ]
[elsif exp="f.lust>=500" ][button target="*c_xa_all" graphic="clothe/c_doll.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
[else][button target="*shop_dress" graphic="clothe/c_doll.png" x="680" y="165" ][endif]
;[button target="*shop_dress" graphic="clothe/c_doll.png" x="680" y="165" ]
[if exp="f.Dc_xa[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="165" ]
[else][button target="*c_xa1" graphic="clothe/bc_white.png" x="835" y="165" ][endif]
[if exp="f.Dc_xa[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="165" ]
[else][button target="*c_xa2" graphic="clothe/bc_blue.png" x="890" y="165" ][endif]
[if exp="f.Dc_xa[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="165" ]
[else][button target="*c_xa3" graphic="clothe/bc_pink.png" x="945" y="165" ][endif]
[if exp="f.Dc_xa[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="165" ]
[else][button target="*c_xa4" graphic="clothe/bc_yellow.png" x="1000" y="165" ][endif]
[if exp="f.Dc_xa[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="165" ]
[else][button target="*c_xa5" graphic="clothe/bc_green.png" x="1055" y="165" ][endif]
[if exp="f.Dc_xa[6]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1110" y="165" ]
[else][button target="*c_xa6" graphic="clothe/bc_purple.png" x="1110" y="165" ][endif]
[if exp="f.Dc_xa[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="165" ]
[else][button target="*c_xa7" graphic="clothe/bc_black.png" x="1165" y="165" ][endif]

;ベビド2
[if exp="f.Dc_xb[10]==1" ][button target="*shop_dress" graphic="clothe/c_doll2-.png" x="680" y="210" ]
[elsif exp="f.lust>=500" ][button target="*c_xb_all" graphic="clothe/c_doll2.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[else][button target="*shop_dress" graphic="clothe/c_doll2.png" x="680" y="210" ][endif]
;[button target="*shop_dress" graphic="clothe/c_doll2.png" x="680" y="210" ]
[if exp="f.Dc_xb[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="210" ]
[else][button target="*c_xb1" graphic="clothe/bc_white.png" x="835" y="210" ][endif]
[if exp="f.Dc_xb[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="210" ]
[else][button target="*c_xb2" graphic="clothe/bc_blue.png" x="890" y="210" ][endif]
[if exp="f.Dc_xb[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="210" ]
[else][button target="*c_xb3" graphic="clothe/bc_pink.png" x="945" y="210" ][endif]
[if exp="f.Dc_xb[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="210" ]
[else][button target="*c_xb4" graphic="clothe/bc_yellow.png" x="1000" y="210" ][endif]
[if exp="f.Dc_xb[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="210" ]
[else][button target="*c_xb5" graphic="clothe/bc_green.png" x="1055" y="210" ][endif]
[if exp="f.Dc_xb[6]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1110" y="210" ]
[else][button target="*c_xb6" graphic="clothe/bc_purple.png" x="1110" y="210" ][endif]
[if exp="f.Dc_xb[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="210" ]
[else][button target="*c_xb7" graphic="clothe/bc_black.png" x="1165" y="210" ][endif]

;スケワンピ
[if exp="f.Dc_xc[10]==1" ][button target="*shop_dress" graphic="clothe/c_onep-x-.png" x="680" y="255" ]
[elsif exp="f.lust>=500" ][button target="*c_xc_all" graphic="clothe/c_onep-x.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[else][button target="*shop_dress" graphic="clothe/c_onep-x.png" x="680" y="255" ][endif]
;[button target="*shop_dress" graphic="clothe/c_onep-x.png" x="680" y="255" ]
[if exp="f.Dc_xc[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="835" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc1" graphic="clothe/bc_blue.png" x="835" y="255" ][endif]
[if exp="f.Dc_xc[2]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="890" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc2" graphic="clothe/bc_yellow.png" x="890" y="255" ][endif]
[if exp="f.Dc_xc[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="945" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc3" graphic="clothe/bc_red.png" x="945" y="255" ][endif]
[if exp="f.Dc_xc[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1000" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc4" graphic="clothe/bc_purple.png" x="1000" y="255" ][endif]
[if exp="f.Dc_xc[5]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1055" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc5" graphic="clothe/bc_white.png" x="1055" y="255" ][endif]
[if exp="f.Dc_xc[6]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1110" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc6" graphic="clothe/bc_black.png" x="1110" y="255" ][endif]

;セーラー襟
[if exp="f.Dc_xd[10]==1" ][button target="*shop_dress" graphic="clothe/c_sera-part-.png" x="680" y="300" ]
[elsif exp="f.lust>=500" ][button target="*c_xd_all" graphic="clothe/c_sera-part.png" enterimg="clothe/buy_all.png" x="680" y="300" ]
[else][button target="*shop_dress" graphic="clothe/c_sera-part.png" x="680" y="300" ][endif]
;[button target="*shop_dress" graphic="clothe/c_sera-part.png" x="680" y="300" ]
[if exp="f.Dc_xd[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="835" y="300" ]
[elsif exp="f.lust>=200" ][button target="*c_xd1" graphic="clothe/bc_blue.png" x="835" y="300" ][endif]
[if exp="f.Dc_xd[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="890" y="300" ]
[elsif exp="f.lust>=200" ][button target="*c_xd2" graphic="clothe/bc_black.png" x="890" y="300" ][endif]
[cancelskip][s]

;;未実装タブ（服、２
;*shop_dress2
;[cm][eval exp="f.ch_win=2" ]
;[chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
;[call target="*menu_button" ][cancelskip][s]

;;アクセタブ
*shop_acce
[cm][eval exp="f.ch_win=6" ]
[chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[call target="*menu_button" ]

[if exp="f.Dac_b[1]==1" ][button target="*bought" graphic="clothe/ac_gold-a-.png" height="36" x="700" y="165" ]
[else][button target="*ri_b1" graphic="clothe/ac_gold-a.png" height="36" x="700" y="165" ][endif]
[if exp="f.Dac_c[1]==1" ][button target="*bought" graphic="clothe/ac_gold-b-.png" height="36" x="817" y="165" ]
[else][button target="*ri_c1" graphic="clothe/ac_gold-b.png" height="36" x="817" y="165" ][endif]
[if exp="f.Dac_d[1]==1" ][button target="*bought" graphic="clothe/ac_gold-c-.png" height="36" x="924" y="165" ]
[else][button target="*ri_d1" graphic="clothe/ac_gold-c.png" height="36" x="924" y="165" ][endif]
[if exp="f.Dac_b[2]==1" ][button target="*bought" graphic="clothe/ac_sil-a-.png" height="36" x="700" y="210" ]
[else][button target="*ri_b2" graphic="clothe/ac_sil-a.png" height="36" x="700" y="210" ][endif]
[if exp="f.Dac_c[2]==1" ][button target="*bought" graphic="clothe/ac_sil-b-.png" height="36" x="817" y="210" ]
[else][button target="*ri_c2" graphic="clothe/ac_sil-b.png" height="36" x="817" y="210" ][endif]
[if exp="f.Dac_d[2]==1" ][button target="*bought" graphic="clothe/ac_sil-c-.png" height="36" x="924" y="210" ]
[else][button target="*ri_d2" graphic="clothe/ac_sil-c.png" height="36" x="924" y="210" ][endif]
[cancelskip][s]

;;未実装タブ（靴下,他
;*shop_leg
;[cm][mod_win st="o/win/shop-win.png" ]
;[eval exp="f.ch_win=7" ][call target="*menu_button" ]
;[cancelskip][s]
;*shop_other
;[cm][mod_win st="o/win/shop-win.png" ]
;[eval exp="f.ch_win=9" ][call target="*menu_button" ]
;[cancelskip][s]


;;下着タブ
*shop_under
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=8" ][call target="*menu_button" ]

;小さな下着
;[if exp="f.Du_xa[10]==1" ][button target="*shop_under" graphic="clothe/u_little-.png" x="680" y="165" ]
;[elsif exp="f.lust>=500" ][button target="*u_xa_all" graphic="clothe/u_little.png" enterimg="clothe/buy_all.png" x="680" y="165" ]
;[else][button target="*shop_under" graphic="clothe/u_little.png" x="680" y="165" ][endif]
;[button target="*shop_under" graphic="clothe/u_little.png" x="680" y="165" ]
;[if exp="f.Du_xa[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="165" ]
;[else][button target="*u_xa1" graphic="clothe/bc_white.png" x="835" y="165" ][endif]
;[if exp="f.Du_xa[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="165" ]
;[else][button target="*u_xa2" graphic="clothe/bc_blue.png" x="890" y="165" ][endif]
;[if exp="f.Du_xa[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="165" ]
;[else][button target="*u_xa3" graphic="clothe/bc_pink.png" x="945" y="165" ][endif]
;[if exp="f.Du_xa[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="165" ]
;[else][button target="*u_xa4" graphic="clothe/bc_yellow.png" x="1000" y="165" ][endif]
;[if exp="f.Du_xa[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="165" ]
;[else][button target="*u_xa5" graphic="clothe/bc_green.png" x="1055" y="165" ][endif]
;[if exp="f.Du_xa[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="165" ]
;[else][button target="*u_xa6" graphic="clothe/bc_orange.png" x="1110" y="165" ][endif]
;[if exp="f.Du_xa[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="165" ]
;[else][button target="*u_xa7" graphic="clothe/bc_black.png" x="1165" y="165" ][endif]

;小さなレース下着
[if exp="f.Du_xb[10]==1" ][button target="*shop_under" graphic="clothe/u_r-little-.png" x="680" y="210" ]
[elsif exp="f.lust>=500" ][button target="*u_xb_all" graphic="clothe/u_r-little.png" enterimg="clothe/buy_all.png" x="680" y="210" ]
[else][button target="*shop_under" graphic="clothe/u_r-little.png" x="680" y="210" ][endif]
;[if exp="f.lust>=150" ][button target="*shop_under" graphic="clothe/u_r-little.png" x="680" y="210" ][endif]
[if exp="f.Du_xb[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="210" ]
[else][button target="*u_xb1" graphic="clothe/bc_white.png" x="835" y="210" ][endif]
[if exp="f.Du_xb[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="210" ]
[else][button target="*u_xb2" graphic="clothe/bc_blue.png" x="890" y="210" ][endif]
[if exp="f.Du_xb[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="210" ]
[else][button target="*u_xb3" graphic="clothe/bc_pink.png" x="945" y="210" ][endif]
[if exp="f.Du_xb[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="210" ]
[else][button target="*u_xb4" graphic="clothe/bc_yellow.png" x="1000" y="210" ][endif]
[if exp="f.Du_xb[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="210" ]
[else][button target="*u_xb5" graphic="clothe/bc_green.png" x="1055" y="210" ][endif]
[if exp="f.Du_xb[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="210" ]
[else][button target="*u_xb6" graphic="clothe/bc_orange.png" x="1110" y="210" ][endif]
[if exp="f.Du_xb[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="210" ]
[else][button target="*u_xb7" graphic="clothe/bc_black.png" x="1165" y="210" ][endif]

;穴あき下着
[if exp="f.Du_xc[10]==1" ][button target="*shop_under" graphic="clothe/u_hole-.png" x="680" y="255" ]
[elsif exp="f.lust>=500" ][button target="*u_xc_all" graphic="clothe/u_hole.png" enterimg="clothe/buy_all.png" x="680" y="255" ]
[elsif exp="f.lust>=200" ][button target="*shop_under" graphic="clothe/u_hole.png" x="680" y="255" ][endif]
;[if exp="f.lust>=200" ][button target="*shop_under" graphic="clothe/u_hole.png" x="680" y="255" ][endif]
[if exp="f.Du_xc[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc1" graphic="clothe/bc_white.png" x="835" y="255" ][endif]
[if exp="f.Du_xc[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc2" graphic="clothe/bc_blue.png" x="890" y="255" ][endif]
[if exp="f.Du_xc[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc3" graphic="clothe/bc_pink.png" x="945" y="255" ][endif]
[if exp="f.Du_xc[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc4" graphic="clothe/bc_yellow.png" x="1000" y="255" ][endif]
[if exp="f.Du_xc[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc5" graphic="clothe/bc_green.png" x="1055" y="255" ][endif]
[if exp="f.Du_xc[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc6" graphic="clothe/bc_orange.png" x="1110" y="255" ][endif]
[if exp="f.Du_xc[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc7" graphic="clothe/bc_black.png" x="1165" y="255" ][endif]
[cancelskip][s]

;;購入
*c_xa_all
[cm][eval exp="f.Dc_xa[1]=1,f.Dc_xa[2]=1,f.Dc_xa[3]=1,f.Dc_xa[4]=1,f.Dc_xa[5]=1,f.Dc_xa[6]=1,f.Dc_xa[7]=1" ]
（薄的室內裝[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_xa" ]
*c_xa1
[cm][eval exp="f.Dc_xa[1]=1" ]（薄的室內裝「白」[jump target="*c_xa" ]
*c_xa2
[cm][eval exp="f.Dc_xa[2]=1" ]（薄的室內裝「青」[jump target="*c_xa" ]
*c_xa3
[cm][eval exp="f.Dc_xa[3]=1" ]（薄的室內裝「桃」[jump target="*c_xa" ]
*c_xa4
[cm][eval exp="f.Dc_xa[4]=1" ]（薄的室內裝「黄」[jump target="*c_xa" ]
*c_xa5
[cm][eval exp="f.Dc_xa[5]=1" ]（薄的室內裝「緑」[jump target="*c_xa" ]
*c_xa6
[cm][eval exp="f.Dc_xa[6]=1" ]（薄的室內裝「紫」[jump target="*c_xa" ]
*c_xa7
[cm][eval exp="f.Dc_xa[7]=1" ]（薄的室內裝「黒」[jump target="*c_xa" ]
*c_xa
[eval exp="f.Dc_xa[0]='got'" ][jump target="*buy" ]

*c_xb_all
[cm][eval exp="f.Dc_xb[1]=1,f.Dc_xb[2]=1,f.Dc_xb[3]=1,f.Dc_xb[4]=1,f.Dc_xb[5]=1,f.Dc_xb[6]=1,f.Dc_xb[7]=1" ]
（薄的室內裝着[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_xb" ]
*c_xb1
[cm][eval exp="f.Dc_xb[1]=1" ]（薄的室內裝2「白」[jump target="*c_xb" ]
*c_xb2
[cm][eval exp="f.Dc_xb[2]=1" ]（薄的室內裝2「青」[jump target="*c_xb" ]
*c_xb3
[cm][eval exp="f.Dc_xb[3]=1" ]（薄的室內裝2「桃」[jump target="*c_xb" ]
*c_xb4
[cm][eval exp="f.Dc_xb[4]=1" ]（薄的室內裝2「黄色」[jump target="*c_xb" ]
*c_xb5
[cm][eval exp="f.Dc_xb[5]=1" ]（薄的室內裝2「綠」[jump target="*c_xb" ]
*c_xb6
[cm][eval exp="f.Dc_xb[6]=1" ]（薄的室內裝2「紫」[jump target="*c_xb" ]
*c_xb7
[cm][eval exp="f.Dc_xb[7]=1" ]（薄的室內裝2「黒」[jump target="*c_xb" ]
*c_xb
[eval exp="f.Dc_xb[0]='got'" ][jump target="*buy" ]

*c_xc_all
[cm][eval exp="f.Dc_xc[1]=1,f.Dc_xc[2]=1,f.Dc_xc[3]=1,f.Dc_xc[4]=1,f.Dc_xc[5]=1,f.Dc_xc[6]=1,f.Dc_xc[7]=1" ]
（薄連衣裙[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_xc" ]
*c_xc1
[cm][eval exp="f.Dc_xc[1]=1" ]（薄連衣裙「青」[jump target="*c_xc" ]
*c_xc2
[cm][eval exp="f.Dc_xc[2]=1" ]（薄連衣裙「黄」[jump target="*c_xc" ]
*c_xc3
[cm][eval exp="f.Dc_xc[3]=1" ]（薄連衣裙「赤」[jump target="*c_xc" ]
*c_xc4
[cm][eval exp="f.Dc_xc[4]=1" ]（薄連衣裙「紫」[jump target="*c_xc" ]
*c_xc5
[cm][eval exp="f.Dc_xc[5]=1" ]（薄連衣裙「白」[jump target="*c_xc" ]
*c_xc6
[cm][eval exp="f.Dc_xc[6]=1" ]（薄連衣裙「黒」[jump target="*c_xc" ]
*c_xc
[eval exp="f.Dc_xc[0]='got'" ][jump target="*buy" ]

*c_xd_all
[cm][eval exp="f.Dc_xd[1]=1,f.Dc_xd[2]=1" ]
（水手服的領子[eval exp="f.shop_c=f.shop_c+2" ][jump target="*c_xd" ]
*c_xd1
[cm][eval exp="f.Dc_xd[1]=1" ]（水手服的領子「青」[jump target="*c_xd" ]
*c_xd2
[cm][eval exp="f.Dc_xd[2]=1" ]（水手服的領子「黒」[jump target="*c_xd" ]
*c_xd
[eval exp="f.Dc_xd[0]='got'" ][jump target="*buy" ]

*ri_b1
[cm][eval exp="f.Dac_b[1]=1" ]（金色乳環[jump target="*ri_b" ]
*ri_c1
[cm][eval exp="f.Dac_c[1]=1" ]（十字架裝飾的金乳環[jump target="*ri_c" ]
*ri_d1
[cm][eval exp="f.Dac_d[1]=1" ]（用鏈子連接的金色乳環[jump target="*ri_d" ]
*ri_b2
[cm][eval exp="f.Dac_b[2]=1" ]（銀色乳環[jump target="*ri_b" ]
*ri_c2
[cm][eval exp="f.Dac_c[2]=1" ]（十字架裝飾的银乳環[jump target="*ri_c" ]
*ri_d2
[cm][eval exp="f.Dac_d[2]=1" ]（用鏈子連接的銀乳環[jump target="*ri_d" ]

*ri_b
[eval exp="f.Dac_b[0]='got'" ][jump target="*buy" ]
*ri_c
[eval exp="f.Dac_c[0]='got'" ][jump target="*buy" ]
*ri_d
[eval exp="f.Dac_d[0]='got'" ][jump target="*buy" ]


*u_xa_all
[cm][eval exp="f.Du_xa[1]=1,f.Du_xa[2]=1,f.Du_xa[3]=1,f.Du_xa[4]=1,f.Du_xa[5]=1,f.Du_xa[6]=1,f.Du_xa[7]=1" ]
（迷你內衣[eval exp="f.shop_c=f.shop_c+2" ][jump target="*u_xa" ]
*u_xa1
[cm][eval exp="f.Du_xa[1]=1" ]（迷你內衣「白」[jump target="*u_xa" ]
*u_xa2
[cm][eval exp="f.Du_xa[2]=1" ]（迷你內衣「青」[jump target="*u_xa" ]
*u_xa3
[cm][eval exp="f.Du_xa[3]=1" ]（迷你內衣「桃」[jump target="*u_xa" ]
*u_xa4
[cm][eval exp="f.Du_xa[4]=1" ]（迷你內衣「黄」[jump target="*u_xa" ]
*u_xa5
[cm][eval exp="f.Du_xa[5]=1" ]（迷你內衣「緑」[jump target="*u_xa" ]
*u_xa6
[cm][eval exp="f.Du_xa[6]=1" ]（迷你內衣「橙」[jump target="*u_xa" ]
*u_xa7
[cm][eval exp="f.Du_xa[7]=1" ]（迷你內衣「黒」[jump target="*u_xa" ]
*u_xa
[eval exp="f.Du_xa[0]='got'" ][jump target="*buy" ]

*u_xb_all
[cm][eval exp="f.Du_xb[1]=1,f.Du_xb[2]=1,f.Du_xb[3]=1,f.Du_xb[4]=1,f.Du_xb[5]=1,f.Du_xb[6]=1,f.Du_xb[7]=1" ]
（蕾絲小內衣[eval exp="f.shop_c=f.shop_c+2" ][jump target="*u_xb" ]
*u_xb1
[cm][eval exp="f.Du_xb[1]=1" ]（蕾絲小內衣「白」[jump target="*u_xb" ]
*u_xb2
[cm][eval exp="f.Du_xb[2]=1" ]（蕾絲小內衣「青」[jump target="*u_xb" ]
*u_xb3
[cm][eval exp="f.Du_xb[3]=1" ]（蕾絲小內衣「桃」[jump target="*u_xb" ]
*u_xb4
[cm][eval exp="f.Du_xb[4]=1" ]（蕾絲小內衣「黄」[jump target="*u_xb" ]
*u_xb5
[cm][eval exp="f.Du_xb[5]=1" ]（蕾絲小內衣「緑」[jump target="*u_xb" ]
*u_xb6
[cm][eval exp="f.Du_xb[6]=1" ]（蕾絲小內衣「橙」[jump target="*u_xb" ]
*u_xb7
[cm][eval exp="f.Du_xb[7]=1" ]（蕾絲小內衣「黒」[jump target="*u_xb" ]
*u_xb
[eval exp="f.Du_xb[0]='got'" ][jump target="*buy" ]

*u_xc_all
[cm][eval exp="f.Du_xc[1]=1,f.Du_xc[2]=1,f.Du_xc[3]=1,f.Du_xc[4]=1,f.Du_xc[5]=1,f.Du_xc[6]=1,f.Du_xc[7]=1" ]
（露穴內衣[eval exp="f.shop_c=f.shop_c+2" ][jump target="*u_xc" ]
*u_xc1
[cm][eval exp="f.Du_xc[1]=1" ]（露穴內衣「白」[jump target="*u_xc" ]
*u_xc2
[cm][eval exp="f.Du_xc[2]=1" ]（露穴內衣「青」[jump target="*u_xc" ]
*u_xc3
[cm][eval exp="f.Du_xc[3]=1" ]（露穴內衣「桃」[jump target="*u_xc" ]
*u_xc4
[cm][eval exp="f.Du_xc[4]=1" ]（露穴內衣「黄」[jump target="*u_xc" ]
*u_xc5
[cm][eval exp="f.Du_xc[5]=1" ]（露穴內衣「緑」[jump target="*u_xc" ]
*u_xc6
[cm][eval exp="f.Du_xc[6]=1" ]（露穴內衣「橙」[jump target="*u_xc" ]
*u_xc7
[cm][eval exp="f.Du_xc[7]=1" ]（露穴內衣「黒」[jump target="*u_xc" ]
*u_xc
[eval exp="f.Du_xc[0]='got'" ][jump target="*buy" ]

*buy
已購買。[p][eval exp="f.shop_night='bought'" ][e_dress_comp_check]
[jump target="*after_shop_n" ]

*bought
[cm]（這已經買了。買別的東西吧。[l]

;;行動後
*show_menu
[if exp="f.ch_win==1" ][jump target="*shop_dress" ]
[elsif exp="f.ch_win==2" ][jump target="*shop_dress2" ]
[elsif exp="f.ch_win==3" ][jump target="*shop_dress3" ]
[elsif exp="f.ch_win==4" ][jump target="*shop_hair" ]
[elsif exp="f.ch_win==5" ][jump target="*shop_head" ]
[elsif exp="f.ch_win==6" ][jump target="*shop_acce" ]
[elsif exp="f.ch_win==7" ][jump target="*shop_leg" ]
[elsif exp="f.ch_win==8" ][jump target="*shop_under" ]
[elsif exp="f.ch_win==9" ][jump target="*shop_other" ][endif]

*return_menu
[cm][eval exp="f.shop_c=7" ]
[_]今天還是回去吧。[p][jump target="*end_shop" ]

*after_shop_n
[cm][eval exp="f.shop_c=f.shop_c+1" ]
[if exp="f.lust>=200 && f.shop_c<=4" ][jump target="*show_menu" ]
[elsif exp="f.lust>=400 && f.shop_c<=5" ][jump target="*show_menu" ]
[elsif exp="f.lust>=600 && f.shop_c<=6" ][jump target="*show_menu" ]
[elsif exp="f.lust>=800 && f.shop_c<=7" ][jump target="*show_menu" ]
[elsif exp="f.lust>=1100 && f.shop_c<=8" ][jump target="*show_menu" ]
[elsif exp="f.lust>=1500 && f.shop_c<=9" ][jump target="*show_menu" ][endif]

*end_shop
[cm][black][bg_shop_n][eval exp="f.act=f.act+1" ][eval exp="f.out=1" ][eval exp="f.last_act='shop'" ]
[set_lady][chara_show name="sub" time="100" wait="true" ]
[_]今天就到這裡吧。[p]
[aurel]歡迎下次再來。
[lr]呼呼呼…。[p]
[black][_][bgm_SG]
[jump storage="act_alone/out_alone.ks" target="*home" ]

*;talk
;[cm][eval exp="f.shop_t=0" ]
;[iscript]
;f.shop_t=Math.floor(Math.random() * 13 + 1);
;[endscript]
;[jump target="*shop_dress" ]


;;初回イベ
*first_time
[black][eval exp="f.shop_n=1" ]
[eval exp="f.Dac_a=[]" ][eval exp="f.Dac_b=[]" ]
[_]平時在這個時候衣服店應該是關門的、但是燈亮着。[lr]
似乎並不是忘記了閉店。[p]
[bgm_DS][bg_shop_n]
店內的照明和商品和白天相比完全不同…。[p]
[set_lady][chara_show name="sub" time="100" wait="true" ]
[aurel]
哎呀、歡迎光臨[lr]
從本日起這個時間出售與白天不同的商品。[p]
出售的商品…你一看就明白的吧[lr]
雖然與白天一樣基本只出售女性物品、[r]
作爲「贈禮」尋找符合客人你需要的商品你看怎麼樣？[p]
當然、我不可能會把客人的興趣說出去的啦。[lr]
請無需多慮地放心購買[lr]
呼呼呼…[p]
[return]

