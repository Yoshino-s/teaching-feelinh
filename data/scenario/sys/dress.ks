;;リターン/ジャンプ
*top
;[cm]
[if exp="f.dress==0 && f.last_act=='before_bed' || f.dress>=1000 && f.dress<=1029 && f.last_act=='before_bed'" ]
[chara_part name="dress_up" ef2="s/body/dress_hide_b.png" allow_storage=true ]
[elsif exp="f.dress==0 || f.dress>=1000 && f.dress<=1029" ]
[chara_part name="dress_up" ef2="s/body/dress_hide.png" allow_storage=true ]
[else][chara_mod name="ef2" time="0" storage="00.png" ][endif]

[if exp="f.ch_win==1" ][jump target="*dress_up" ][elsif exp="f.ch_win==2" ][jump target="*dress_up2" ]
[elsif exp="f.ch_win==3" ][jump target="*dress_up3" ][elsif exp="f.ch_win==4" ][jump target="*dress_up4" ]
[elsif exp="f.ch_win==5" ][jump target="*dress_hair" ][elsif exp="f.ch_win==6" ][jump target="*dress_pin" ]
[elsif exp="f.ch_win==7" ][jump target="*dress_head" ][elsif exp="f.ch_win==8" ][jump target="*dress_leg" ]
[elsif exp="f.ch_win==9" ][jump target="*dress_glasses" ][elsif exp="f.ch_win==10" ][jump target="*dress_under" ]
[elsif exp="f.ch_win==11" ][jump target="*dress_under2" ][elsif exp="f.ch_win==12" ][jump target="*dress_arm" ]
[elsif exp="f.ch_win==13" ][jump target="*dress_other" ][elsif exp="f.ch_win==14" ][jump target="*dress_original" ][endif]

*return
[cm][endnolog][hide_ask_win][show_role][show_message_w][return_bace]

*change_dress
[cm][eval exp="f.last_act='dress_up'" ][hide_role][nolog][hide_message_w][set_dress]
[if exp="f.step==6" ][eval exp="f.sav_dress[0]=f.dress" ][endif]
[mod_win st="o/win/dress-win.png" ][show_dress][-]

;;服１---------------------------------------------------------------------------------------------
*dress_up
[cm][eval exp="f.ch_win=1" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*c_re" graphic="clothe/c_boro.png" x="730" y="118" exp="f.dress=1" ]

[if exp="f.lust>=5" ][button target="*c_re_h" graphic="clothe/non.png" x="830" y="118" exp="f.dress=0" ][endif]

;落ち着いた
[if exp="f.Dc_b[0]=='got'" ][button target="*dress_up" graphic="clothe/c_tite.png" x="680" y="165" ][endif]
[if exp="f.Dc_b[1]==1" ][button target="*c_re" graphic="clothe/bc_blue2.png" x="835" y="165" exp="f.dress=11" ][endif]
[if exp="f.Dc_b[2]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="890" y="165" exp="f.dress=12" ][endif]
[if exp="f.Dc_b[3]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="945" y="165" exp="f.dress=13" ][endif]
[if exp="f.Dc_b[4]==1" ][button target="*c_re" graphic="clothe/bc_red.png" x="1000" y="165" exp="f.dress=14" ][endif]
[if exp="f.Dc_b[5]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="1055" y="165" exp="f.dress=15" ][endif]
[if exp="f.Dc_b[6]==1" ][button target="*c_re" graphic="clothe/bc_brown.png" x="1110" y="165" exp="f.dress=16" ][endif]
;ひらひら
[if exp="f.Dc_c[0]=='got'" ][button target="*dress_up" graphic="clothe/c_hira.png" x="680" y="210" ][endif]
[if exp="f.Dc_c[1]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="835" y="210" exp="f.dress=21" ][endif]
[if exp="f.Dc_c[2]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="890" y="210" exp="f.dress=22" ][endif]
[if exp="f.Dc_c[3]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="945" y="210" exp="f.dress=23" ][endif]
[if exp="f.Dc_c[4]==1" ][button target="*c_re" graphic="clothe/bc_red.png" x="1000" y="210" exp="f.dress=24" ][endif]
[if exp="f.Dc_c[5]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="1055" y="210" exp="f.dress=25" ][endif]
[if exp="f.Dc_c[6]==1" ][button target="*c_re" graphic="clothe/bc_brown.png" x="1110" y="210" exp="f.dress=26" ][endif]
[if exp="f.Dc_c[7]==1" ][button target="*c_re" graphic="clothe/bc_pink.png" x="1165" y="210" exp="f.dress=27" ][endif]
;ワンピース
[if exp="f.Dc_e[0]=='got'" ][button target="*dress_up" graphic="clothe/c_onep.png" x="680" y="255" ][endif]
[if exp="f.Dc_e[1]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="835" y="255" exp="f.dress=41" ][endif]
[if exp="f.Dc_e[2]==1" ][button target="*c_re" graphic="clothe/bc_yellow.png" x="890" y="255" exp="f.dress=42" ][endif]
[if exp="f.Dc_e[3]==1" ][button target="*c_re" graphic="clothe/bc_red.png" x="945" y="255" exp="f.dress=43" ][endif]
[if exp="f.Dc_e[4]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="1000" y="255" exp="f.dress=44" ][endif]
[if exp="f.Dc_e[5]==1" ][button target="*c_re" graphic="clothe/bc_white.png" x="1055" y="255" exp="f.dress=45" ][endif]
[if exp="f.Dc_e[6]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="1110" y="255" exp="f.dress=46" ][endif]
;ナース
[if exp="f.Dc_f[0]=='got'" ][button target="*dress_up" graphic="clothe/c_nurse.png" x="680" y="300" ][endif]
[if exp="f.Dc_f[1]==1" ][button target="*c_re" graphic="clothe/bc_white.png" x="835" y="300" exp="f.dress=51" ][endif]
[if exp="f.Dc_f[2]==1" ][button target="*c_re" graphic="clothe/bc_pink.png" x="890" y="300" exp="f.dress=52" ][endif]
[if exp="f.Dc_f[3]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="945" y="300" exp="f.dress=53" ][endif]
;和服
[if exp="f.Dc_g[0]=='got'" ][button target="*dress_up" graphic="clothe/c_wahuku.png" x="680" y="345" ][endif]
[if exp="f.Dc_g[1]==1" ][button target="*c_re" graphic="clothe/bc_red2.png" x="835" y="345" exp="f.dress=61" ][endif]
[if exp="f.Dc_g[2]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="890" y="345" exp="f.dress=62" ][endif]
[if exp="f.Dc_g[3]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="945" y="345" exp="f.dress=63" ][endif]
[if exp="f.Dc_g[4]==1" ][button target="*c_re" graphic="clothe/bc_pink.png" x="1000" y="345" exp="f.dress=64" ][endif]
[if exp="f.Dc_g[5]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="1055" y="345" exp="f.dress=65" ][endif]
[if exp="f.Dc_g[6]==1" ][button target="*c_re" graphic="clothe/bc_white.png" x="1110" y="345" exp="f.dress=66" ][endif]
;セーラー
[if exp="f.Dc_h[0]=='got'" ][button target="*dress_up" graphic="clothe/c_sera.png" x="680" y="390" ][endif]
[if exp="f.Dc_h[1]==1" ][button target="*c_re" graphic="clothe/bc_white.png" x="835" y="390" exp="f.dress=71" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="890" y="390" exp="f.dress=72" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*c_re" graphic="clothe/c_long-w.png" x="945" y="390" exp="f.dress=73" ][endif]
[if exp="f.Dc_h[4]==1" ][button target="*c_re" graphic="clothe/c_long-b.png" x="1067" y="390" exp="f.dress=74" ][endif]
;エプロンドレス
[if exp="f.Dc_i[0]=='got'" ][button target="*dress_up" graphic="clothe/c_epdress.png" x="680" y="435" ][endif]
[if exp="f.Dc_i[1]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="835" y="435" exp="f.dress=81" ][endif]
[if exp="f.Dc_i[2]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="890" y="435" exp="f.dress=82" ][endif]
[if exp="f.Dc_i[3]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="945" y="435" exp="f.dress=83" ][endif]
[if exp="f.Dc_i[4]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="1000" y="435" exp="f.dress=84" ][endif]
[if exp="f.Dc_i[5]==1" ][button target="*c_re" graphic="clothe/bc_pink.png" x="1055" y="435" exp="f.dress=85" ][endif]
[if exp="f.Dc_i[6]==1" ][button target="*c_re" graphic="clothe/bc_orange.png" x="1110" y="435" exp="f.dress=86" ][endif]
;ブレザー
[if exp="f.Dc_j[0]=='got'" ][button target="*dress_up" graphic="clothe/c_uni-cold.png" x="680" y="480" ][endif]
[if exp="f.Dc_j[1]==1" ][button target="*c_re" graphic="clothe/bc_blue2.png" x="835" y="480" exp="f.dress=91" ][endif]
[if exp="f.Dc_j[2]==1" ][button target="*c_re" graphic="clothe/bc_brown.png" x="890" y="480" exp="f.dress=92" ][endif]
[if exp="f.Dc_j[3]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="945" y="480" exp="f.dress=93" ][endif]
[if exp="f.Dc_j[4]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="1000" y="480" exp="f.dress=94" ][endif]
[if exp="f.Dc_j[5]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="1055" y="480" exp="f.dress=95" ][endif]
;シャツネクタイ
[if exp="f.Dc_k[0]=='got'" ][button target="*dress_up" graphic="clothe/c_uni-warm.png" x="680" y="525" ][endif]
[if exp="f.Dc_k[1]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="835" y="525" exp="f.dress=101" ][endif]
[if exp="f.Dc_k[2]==1" ][button target="*c_re" graphic="clothe/bc_red.png" x="890" y="525" exp="f.dress=102" ][endif]
[if exp="f.Dc_k[3]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="945" y="525" exp="f.dress=103" ][endif]
[if exp="f.Dc_k[4]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="1000" y="525" exp="f.dress=104" ][endif]
[if exp="f.Dc_k[5]==1" ][button target="*c_re" graphic="clothe/bc_brown.png" x="1055" y="525" exp="f.dress=105" ][endif]
[if exp="f.Dc_k[6]==1" ][button target="*c_re" graphic="clothe/bc_pink.png" x="1110" y="526" exp="f.dress=106" ][endif]
[cancelskip][s]
;;服２---------------------------------------------------------------------------------------------
*dress_up2
[cm][eval exp="f.ch_win=2" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[if exp="f.lust>=5" ][button target="*c_re_h" graphic="clothe/non.png" x="740" y="118" exp="f.dress=0" ][endif]
;清楚な服
[if exp="f.Dc_l[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_seiso.png" x="680" y="165" ][endif]
[if exp="f.Dc_l[1]==1" ][button target="*c_re" graphic="clothe/bc_blue2.png" x="835" y="165" exp="f.dress=111" ][endif]
[if exp="f.Dc_l[2]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="890" y="165" exp="f.dress=112" ][endif]
[if exp="f.Dc_l[3]==1" ][button target="*c_re" graphic="clothe/bc_brown.png" x="945" y="165" exp="f.dress=113" ][endif]
[if exp="f.Dc_l[4]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="1000" y="165" exp="f.dress=114" ][endif]
[if exp="f.Dc_l[5]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="1055" y="165" exp="f.dress=115" ][endif]
;カジュアル
[if exp="f.Dc_m[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_hana.png" x="680" y="210" ][endif]
[if exp="f.Dc_m[1]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="835" y="210" exp="f.dress=121" ][endif]
[if exp="f.Dc_m[2]==1" ][button target="*c_re" graphic="clothe/bc_brown.png" x="890" y="210" exp="f.dress=122" ][endif]
[if exp="f.Dc_m[3]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="945" y="210" exp="f.dress=123" ][endif]
[if exp="f.Dc_m[4]==1" ][button target="*c_re" graphic="clothe/bc_orange.png" x="1000" y="210" exp="f.dress=124" ][endif]
[if exp="f.Dc_m[5]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="1055" y="210" exp="f.dress=125" ][endif]
;タイトドレス
[if exp="f.Dc_n[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_yi.png" x="680" y="255" ][endif]
[if exp="f.Dc_n[1]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="835" y="255" exp="f.dress=131" ][endif]
[if exp="f.Dc_n[2]==1" ][button target="*c_re" graphic="clothe/bc_white.png" x="890" y="255" exp="f.dress=132" ][endif]
[if exp="f.Dc_n[3]==1" ][button target="*c_re" graphic="clothe/bc_red.png" x="945" y="255" exp="f.dress=133" ][endif]
[if exp="f.Dc_n[4]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="1000" y="255" exp="f.dress=134" ][endif]
[if exp="f.Dc_n[5]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="1055" y="255" exp="f.dress=135" ][endif]
[if exp="f.Dc_n[6]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="1110" y="255" exp="f.dress=136" ][endif]
[if exp="f.Dc_n[7]==1" ][button target="*c_re" graphic="clothe/bc_pink.png" x="1165" y="255" exp="f.dress=137" ][endif]
;ベルトパンク
[if exp="f.Dc_o[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_ali.png" x="680" y="300" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="835" y="300" exp="f.dress=141" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*c_re" graphic="clothe/bc_brown.png" x="890" y="300" exp="f.dress=142" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="945" y="300" exp="f.dress=143" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="1000" y="300" exp="f.dress=144" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*c_re" graphic="clothe/bc_red.png" x="1055" y="300" exp="f.dress=145" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="1110" y="300" exp="f.dress=146" ][endif]
;リボン付き
[if exp="f.Dc_p[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_pea.png" x="680" y="345" ][endif]
[if exp="f.Dc_p[1]==1" ][button target="*c_re" graphic="clothe/bc_blue.png" x="835" y="345" exp="f.dress=151" ][endif]
[if exp="f.Dc_p[2]==1" ][button target="*c_re" graphic="clothe/bc_green.png" x="890" y="345" exp="f.dress=152" ][endif]
[if exp="f.Dc_p[3]==1" ][button target="*c_re" graphic="clothe/bc_purple.png" x="945" y="345" exp="f.dress=153" ][endif]
[if exp="f.Dc_p[4]==1" ][button target="*c_re" graphic="clothe/bc_red.png" x="1000" y="345" exp="f.dress=154" ][endif]
[if exp="f.Dc_p[5]==1" ][button target="*c_re" graphic="clothe/bc_black.png" x="1055" y="345" exp="f.dress=155" ][endif]
[if exp="f.Dc_p[6]==1" ][button target="*c_re" graphic="clothe/bc_pink.png" x="1110" y="345" exp="f.dress=156" ][endif]
[cancelskip][s]

;;服３---------------------------------------------------------------------------------------------
*dress_up3
[cm][eval exp="f.ch_win=3" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
;彼シャツ
[if exp="f.self>=1" ][button target="*c_re_h" graphic="clothe/c_mans.png" x="730" y="118" exp="f.dress=5" ][endif]
[if exp="f.self>=1" ][button target="*c_re_h" graphic="clothe/c_mans-.png" x="845" y="118" exp="f.dress=6" ][endif]

[if exp="f.lust>=5" ][button target="*c_re_h" graphic="clothe/non.png" x="950" y="118" exp="f.dress=0" ][endif]

;薄い部屋着
[if exp="f.Dc_xa[0]=='got'" ][button target="*dress_up3" graphic="clothe/c_doll.png" x="680" y="165" ][endif]
[if exp="f.Dc_xa[1]==1" ][button target="*c_re_h" graphic="clothe/bc_white.png" x="835" y="165" exp="f.dress=1001" ][endif]
[if exp="f.Dc_xa[2]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="890" y="165" exp="f.dress=1002" ][endif]
[if exp="f.Dc_xa[3]==1" ][button target="*c_re_h" graphic="clothe/bc_pink.png" x="945" y="165" exp="f.dress=1003" ][endif]
[if exp="f.Dc_xa[4]==1" ][button target="*c_re_h" graphic="clothe/bc_yellow.png" x="1000" y="165" exp="f.dress=1004" ][endif]
[if exp="f.Dc_xa[5]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="1055" y="165" exp="f.dress=1005" ][endif]
[if exp="f.Dc_xa[6]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="1110" y="165" exp="f.dress=1006" ][endif]
[if exp="f.Dc_xa[7]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1165" y="165" exp="f.dress=1007" ][endif]

[if exp="f.Dc_xb[0]=='got'" ][button target="*dress_up3" graphic="clothe/c_doll2.png" x="680" y="210" ][endif]
[if exp="f.Dc_xb[1]==1" ][button target="*c_re_h" graphic="clothe/bc_white.png" x="835" y="210" exp="f.dress=1011" ][endif]
[if exp="f.Dc_xb[2]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="890" y="210" exp="f.dress=1012" ][endif]
[if exp="f.Dc_xb[3]==1" ][button target="*c_re_h" graphic="clothe/bc_pink.png" x="945" y="210" exp="f.dress=1013" ][endif]
[if exp="f.Dc_xb[4]==1" ][button target="*c_re_h" graphic="clothe/bc_yellow.png" x="1000" y="210" exp="f.dress=1014" ][endif]
[if exp="f.Dc_xb[5]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="1055" y="210" exp="f.dress=1015" ][endif]
[if exp="f.Dc_xb[6]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="1110" y="210" exp="f.dress=1016" ][endif]
[if exp="f.Dc_xb[7]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1165" y="210" exp="f.dress=1017" ][endif]

;透けワンピース
[if exp="f.Dc_xc[0]=='got'" ][button target="*dress_up3" graphic="clothe/c_onep-x.png" x="680" y="255" ][endif]
[if exp="f.Dc_xc[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="835" y="255" exp="f.dress=1021" ][endif]
[if exp="f.Dc_xc[2]==1" ][button target="*c_re_h" graphic="clothe/bc_yellow.png" x="890" y="255" exp="f.dress=1022" ][endif]
[if exp="f.Dc_xc[3]==1" ][button target="*c_re_h" graphic="clothe/bc_red.png" x="945" y="255" exp="f.dress=1023" ][endif]
[if exp="f.Dc_xc[4]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="1000" y="255" exp="f.dress=1024" ][endif]
[if exp="f.Dc_xc[5]==1" ][button target="*c_re_h" graphic="clothe/bc_white.png" x="1055" y="255" exp="f.dress=1025" ][endif]
[if exp="f.Dc_xc[6]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1110" y="255" exp="f.dress=1026" ][endif]
[cancelskip][s]

;;服４---------------------------------------------------------------------------------------------
*dress_up4
[cm][eval exp="f.ch_win=4" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[if exp="f.Dc_n[0]=='got'" ][button target="*c_re_h" graphic="clothe/c_yi-half.png" x="730" y="118" exp="f.dress=2002" ][endif]
[if exp="f.lust>=5" ][button target="*c_re_h" graphic="clothe/non.png" x="890" y="118" exp="f.dress=0" ][endif]

[if exp="f.Dc_k[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_uni-warm-half.png" x="680" y="165" ][endif]
[if exp="f.Dc_k[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="835" y="165" exp="f.dress=1031" ][endif]
[if exp="f.Dc_k[2]==1" ][button target="*c_re_h" graphic="clothe/bc_red.png" x="890" y="165" exp="f.dress=1032" ][endif]
[if exp="f.Dc_k[3]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="945" y="165" exp="f.dress=1033" ][endif]
[if exp="f.Dc_k[4]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="1000" y="165" exp="f.dress=1034" ][endif]
[if exp="f.Dc_k[5]==1" ][button target="*c_re_h" graphic="clothe/bc_brown.png" x="1055" y="165" exp="f.dress=1035" ][endif]
[if exp="f.Dc_k[6]==1" ][button target="*c_re_h" graphic="clothe/bc_pink.png" x="1110" y="165" exp="f.dress=1036" ][endif]

[if exp="f.Dc_h[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_sera-half.png" x="680" y="210" ][endif]
[if exp="f.Dc_h[1]==1" ][button target="*c_re_h" graphic="clothe/bc_white.png" x="835" y="210" exp="f.dress=1041" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="890" y="210" exp="f.dress=1042" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*c_re_h" graphic="clothe/c_long-w.png" x="945" y="210" exp="f.dress=1043" ][endif]
[if exp="f.Dc_h[4]==1" ][button target="*c_re_h" graphic="clothe/c_long-b.png" x="1067" y="210" exp="f.dress=1044" ][endif]

[if exp="f.Dc_xd[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_sera-part.png" x="680" y="255" ][endif]
[if exp="f.Dc_xd[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="835" y="255" exp="f.dress=1111" ][endif]
[if exp="f.Dc_xd[2]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="890" y="255" exp="f.dress=1112" ][endif]
[if exp="f.Dc_xd[1]==1 && f.Dc_k[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="945" y="255" exp="f.dress=1113" ][endif]
[if exp="f.Dc_xd[2]==1 && f.Dc_h[2]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1000" y="255" exp="f.dress=1114" ][endif]
[if exp="f.Dc_xd[1]==1 && f.Dc_h[3]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="1055" y="255" exp="f.dress=1115" ][endif]
[if exp="f.Dc_xd[2]==1 && f.Dc_j[5]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1110" y="255" exp="f.dress=1116" ][endif]

[if exp="f.Dc_j[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_uni-cold-half.png" x="680" y="300" ][endif]
[if exp="f.Dc_j[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue2.png" x="835" y="300" exp="f.dress=1051" ][endif]
[if exp="f.Dc_j[2]==1" ][button target="*c_re_h" graphic="clothe/bc_brown.png" x="890" y="300" exp="f.dress=1052" ][endif]
[if exp="f.Dc_j[3]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="945" y="300" exp="f.dress=1053" ][endif]
[if exp="f.Dc_j[4]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="1000" y="300" exp="f.dress=1054" ][endif]

[if exp="f.Dc_k[0]=='got' || f.Dc_h[2]==1" ][button target="*dress_up4" graphic="clothe/c_skirt.png" x="680" y="345" ][endif]
[if exp="f.Dc_k[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="835" y="345" exp="f.dress=1061" ][endif]
[if exp="f.Dc_k[2]==1" ][button target="*c_re_h" graphic="clothe/bc_red.png" x="890" y="345" exp="f.dress=1062" ][endif]
[if exp="f.Dc_k[3]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="945" y="345" exp="f.dress=1063" ][endif]
[if exp="f.Dc_k[4]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="1000" y="345" exp="f.dress=1064" ][endif]
[if exp="f.Dc_k[5]==1" ][button target="*c_re_h" graphic="clothe/bc_brown.png" x="1055" y="345" exp="f.dress=1065" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1110" y="345" exp="f.dress=1066" ][endif]
[if exp="f.Dc_k[6]==1" ][button target="*c_re_h" graphic="clothe/bc_pink.png" x="1165" y="345" exp="f.dress=1067" ][endif]

[if exp="f.Dc_j[0]=='got' || f.Dc_h[3]==1" ][button target="*dress_up4" graphic="clothe/c_skirt-long.png" x="680" y="390" ][endif]
[if exp="f.Dc_j[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue2.png" x="835" y="390" exp="f.dress=1071" ][endif]
[if exp="f.Dc_j[2]==1" ][button target="*c_re_h" graphic="clothe/bc_brown.png" x="890" y="390" exp="f.dress=1072" ][endif]
[if exp="f.Dc_j[3]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="945" y="390" exp="f.dress=1073" ][endif]
[if exp="f.Dc_j[4]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="1000" y="390" exp="f.dress=1074" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="1055" y="390" exp="f.dress=1075" ][endif]
[if exp="f.Dc_j[5]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1110" y="390" exp="f.dress=1076" ][endif]

[if exp="f.Dc_m[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_hana-half.png" x="680" y="435" ][endif]
[if exp="f.Dc_m[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="835" y="435" exp="f.dress=1081" ][endif]
[if exp="f.Dc_m[2]==1" ][button target="*c_re_h" graphic="clothe/bc_brown.png" x="890" y="435" exp="f.dress=1082" ][endif]
[if exp="f.Dc_m[3]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="945" y="435" exp="f.dress=1083" ][endif]
[if exp="f.Dc_m[4]==1" ][button target="*c_re_h" graphic="clothe/bc_orange.png" x="1000" y="435" exp="f.dress=1084" ][endif]
[if exp="f.Dc_m[5]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1055" y="435" exp="f.dress=1085" ][endif]

[if exp="f.Dc_o[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_ali-half.png" x="680" y="480" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="835" y="480" exp="f.dress=1091" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*c_re_h" graphic="clothe/bc_brown.png" x="890" y="480" exp="f.dress=1092" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="945" y="480" exp="f.dress=1093" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="1000" y="480" exp="f.dress=1094" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*c_re_h" graphic="clothe/bc_red.png" x="1055" y="480" exp="f.dress=1095" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="1110" y="480" exp="f.dress=1096" ][endif]

[if exp="f.Dc_p[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_pea-half.png" x="680" y="525" ][endif]
[if exp="f.Dc_p[1]==1" ][button target="*c_re_h" graphic="clothe/bc_blue.png" x="835" y="525" exp="f.dress=1101" ][endif]
[if exp="f.Dc_p[2]==1" ][button target="*c_re_h" graphic="clothe/bc_green.png" x="890" y="525" exp="f.dress=1102" ][endif]
[if exp="f.Dc_p[3]==1" ][button target="*c_re_h" graphic="clothe/bc_purple.png" x="945" y="525" exp="f.dress=1103" ][endif]
[if exp="f.Dc_p[4]==1" ][button target="*c_re_h" graphic="clothe/bc_red.png" x="1000" y="525" exp="f.dress=1104" ][endif]
[if exp="f.Dc_p[5]==1" ][button target="*c_re_h" graphic="clothe/bc_black.png" x="1055" y="525" exp="f.dress=1105" ][endif]
[if exp="f.Dc_p[6]==1" ][button target="*c_re_h" graphic="clothe/bc_pink.png" x="1110" y="525" exp="f.dress=1106" ][endif]
[cancelskip][s]

*c_re
[dress_dress_set][back_top_]
*c_re_h
[dress_dress_set][back_top_h]

;;髪型１---------------------------------------------------------------------------------------------
*dress_hair
[cm][eval exp="f.ch_win=5" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*r_non" graphic="clothe/non.png" x="730" y="118" ]
[button target="*r_a" graphic="clothe/hs_pony.png" x="719" y="165" ]
[if exp="f.love>=300" ][button target="*r_b" graphic="clothe/hs_l-pony.png" x="808" y="165" ][endif]
[if exp="f.love>=600" ][button target="*r_c" graphic="clothe/hs_twin.png" x="914" y="165" ][endif]
[if exp="f.love>=900" ][button target="*r_d" graphic="clothe/hs_l-twin.png" x="1008" y="165" ][endif]
[if exp="f.love>=1200" ][button target="*r_e" graphic="clothe/hs_side.png" x="1117" y="165" ][endif]

;細いリボン
[if exp="f.Dr_a[0]=='got'" ][button target="*dress_hair" graphic="clothe/hb_ribbon_a.png" x="680" y="210" ][endif]
[if exp="f.Dr_a[1]==1" ][button target="*r_re" graphic="clothe/bc_blue.png" x="830" y="210" exp="f.hair_band=11" ][endif]
[if exp="f.Dr_a[2]==1" ][button target="*r_re" graphic="clothe/bc_red.png" x="880" y="210" exp="f.hair_band=12" ][endif]
[if exp="f.Dr_a[3]==1" ][button target="*r_re" graphic="clothe/bc_yellow.png" x="930" y="210" exp="f.hair_band=13" ][endif]
[if exp="f.Dr_a[4]==1" ][button target="*r_re" graphic="clothe/bc_green.png" x="980" y="210" exp="f.hair_band=14" ][endif]
[if exp="f.Dr_a[5]==1" ][button target="*r_re" graphic="clothe/bc_purple.png" x="1030" y="210" exp="f.hair_band=15" ][endif]
[if exp="f.Dr_a[6]==1" ][button target="*r_re" graphic="clothe/bc_orange.png" x="1080" y="210" exp="f.hair_band=16" ][endif]
[if exp="f.Dr_a[7]==1" ][button target="*r_re" graphic="clothe/bc_white.png" x="1130" y="210" exp="f.hair_band=17" ][endif]
[if exp="f.Dr_a[8]==1" ][button target="*r_re" graphic="clothe/bc_black.png" x="1180" y="210" exp="f.hair_band=18" ][endif]
[if exp="f.Dr_a[9]==1" ][button target="*r_re" graphic="clothe/bc_pink.png" x="1230" y="210" exp="f.hair_band=19" ][endif]
;太いリボン
[if exp ="f.Dr_b[0]=='got'" ][button target="*dress_hair" graphic="clothe/hb_ribbon_b.png" x="680" y="255" ][endif]
[if exp ="f.Dr_b[1]==1" ][button target="*r_re" graphic="clothe/bc_blue.png" x="830" y="255" exp="f.hair_band=21" ][endif]
[if exp ="f.Dr_b[2]==1" ][button target="*r_re" graphic="clothe/bc_red.png" x="880" y="255" exp="f.hair_band=22" ][endif]
[if exp ="f.Dr_b[3]==1" ][button target="*r_re" graphic="clothe/bc_yellow.png" x="930" y="255" exp="f.hair_band=23" ][endif]
[if exp ="f.Dr_b[4]==1" ][button target="*r_re" graphic="clothe/bc_green.png" x="980" y="255" exp="f.hair_band=24" ][endif]
[if exp ="f.Dr_b[5]==1" ][button target="*r_re" graphic="clothe/bc_purple.png" x="1030" y="255" exp="f.hair_band=25" ][endif]
[if exp ="f.Dr_b[6]==1" ][button target="*r_re" graphic="clothe/bc_orange.png" x="1080" y="255" exp="f.hair_band=26" ][endif]
[if exp ="f.Dr_b[7]==1" ][button target="*r_re" graphic="clothe/bc_white.png" x="1130" y="255" exp="f.hair_band=27" ][endif]
[if exp ="f.Dr_b[8]==1" ][button target="*r_re" graphic="clothe/bc_black.png" x="1180" y="255" exp="f.hair_band=28" ][endif]
[if exp ="f.Dr_b[9]==1" ][button target="*r_re" graphic="clothe/bc_pink.png" x="1230" y="255" exp="f.hair_band=29" ][endif]
;シュシュ
[if exp="f.Dr_c[0]=='got'" ][button target="*dress_hair" graphic="clothe/hb_ss.png" x="680" y="300" ][endif]
[if exp="f.Dr_c[1]==1" ][button target="*r_re" graphic="clothe/bc_blue.png" x="830" y="300" exp="f.hair_band=31" ][endif]
[if exp="f.Dr_c[2]==1" ][button target="*r_re" graphic="clothe/bc_red.png" x="880" y="300" exp="f.hair_band=32" ][endif]
[if exp="f.Dr_c[3]==1" ][button target="*r_re" graphic="clothe/bc_yellow.png" x="930" y="300" exp="f.hair_band=33" ][endif]
[if exp="f.Dr_c[4]==1" ][button target="*r_re" graphic="clothe/bc_green.png" x="980" y="300" exp="f.hair_band=34" ][endif]
[if exp="f.Dr_c[5]==1" ][button target="*r_re" graphic="clothe/bc_purple.png" x="1030" y="300" exp="f.hair_band=35" ][endif]
[if exp="f.Dr_c[6]==1" ][button target="*r_re" graphic="clothe/bc_orange.png" x="1080" y="300" exp="f.hair_band=36" ][endif]
[if exp="f.Dr_c[7]==1" ][button target="*r_re" graphic="clothe/bc_white.png" x="1130" y="300" exp="f.hair_band=37" ][endif]
[if exp="f.Dr_c[8]==1" ][button target="*r_re" graphic="clothe/bc_black.png" x="1180" y="300" exp="f.hair_band=38" ][endif]
[if exp="f.Dr_c[9]==1" ][button target="*r_re" graphic="clothe/bc_pink.png" x="1230" y="300" exp="f.hair_band=39" ][endif]
;ビーズ
[if exp ="f.Dr_d[0]=='got'" ][button target="*dress_hair" graphic="clothe/hb_bz.png" x="680" y="345" ][endif]
[if exp ="f.Dr_d[1]==1" ][button target="*r_re" graphic="clothe/bc_blue.png" x="830" y="345" exp="f.hair_band=41" ][endif]
[if exp ="f.Dr_d[2]==1" ][button target="*r_re" graphic="clothe/bc_red.png" x="880" y="345" exp="f.hair_band=42" ][endif]
[if exp ="f.Dr_d[3]==1" ][button target="*r_re" graphic="clothe/bc_yellow.png" x="930" y="345" exp="f.hair_band=43" ][endif]
[if exp ="f.Dr_d[4]==1" ][button target="*r_re" graphic="clothe/bc_green.png" x="980" y="345" exp="f.hair_band=44" ][endif]
[if exp ="f.Dr_d[5]==1" ][button target="*r_re" graphic="clothe/bc_purple.png" x="1030" y="345" exp="f.hair_band=45" ][endif]
[if exp ="f.Dr_d[6]==1" ][button target="*r_re" graphic="clothe/bc_orange.png" x="1080" y="345" exp="f.hair_band=46" ][endif]
[if exp ="f.Dr_d[7]==1" ][button target="*r_re" graphic="clothe/bc_white.png" x="1130" y="345" exp="f.hair_band=47" ][endif]
[if exp ="f.Dr_d[8]==1" ][button target="*r_re" graphic="clothe/bc_black.png" x="1180" y="345" exp="f.hair_band=48" ][endif]
[if exp ="f.Dr_d[9]==1" ][button target="*r_re" graphic="clothe/bc_pink.png" x="1230" y="345" exp="f.hair_band=49" ][endif]
;かんざし
[if exp="f.Dr_e[1]==1" ][button target="*r_c1" graphic="clothe/hb_kanzashi-g.png" x="680" y="480" ][endif]
[if exp="f.Dr_e[2]==1" ][button target="*r_c2" graphic="clothe/hb_kanzashi-s.png" x="790" y="480" ][endif]
[cancelskip][s]

*r_re
[hair_select][dress_hair_set][back_top]

*r_non
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=0" ][eval exp="f.hair_style=0" ][dress_hair_set][back_top]
*r_a
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=1" ][dress_hair_set][back_top]
*r_b
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=2" ][dress_hair_set][back_top]
*r_c
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[eval exp="f.hair_style=3" ][dress_hair_set][eval exp="f.hat=0" ][back_top]
*r_d
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=4" ][dress_hair_set][back_top]
*r_e
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[eval exp="f.hair_style=5" ][dress_hair_set][eval exp="f.hat=0" ][back_top]

*r_c1
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=51" ][eval exp="f.hair_style=6" ][dress_hair_set][back_top]
*r_c2
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=52" ][eval exp="f.hair_style=6" ][dress_hair_set][back_top]

;;前髪---------------------------------------------------------------------------------------------
*dress_pin
[cm][eval exp="f.ch_win=6" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*p_change" graphic="clothe/non.png" x="740" y="118" exp="f.pin=0,f.front_hair=0" ]

[button target="*p_change" graphic="clothe/fh_1.png" x="719" y="165" exp="f.front_hair=1" ]
[if exp="f.love>=300" ][button target="*p_change" graphic="clothe/fh_2.png" x="800" y="165" exp="f.front_hair=2" ][endif]
[if exp="f.love>=600" ][button target="*p_change" graphic="clothe/fh_3.png" x="915" y="165" exp="f.front_hair=3" ][endif]

[if exp ="f.Dp_a[0]=='got'" ][button target="*dress_pin" graphic="clothe/hp_tin.png" x="680" y="210" ][endif]
[if exp="f.Dp_a[1]==1" ][button target="*p_re" graphic="clothe/bc_blue.png" x="830" y="210" exp="f.pin=1" ][endif]
[if exp="f.Dp_a[2]==1" ][button target="*p_re" graphic="clothe/bc_red.png" x="880" y="210" exp="f.pin=2" ][endif]
[if exp="f.Dp_a[3]==1" ][button target="*p_re" graphic="clothe/bc_yellow.png" x="930" y="210" exp="f.pin=3" ][endif]
[if exp="f.Dp_a[4]==1" ][button target="*p_re" graphic="clothe/bc_green.png" x="980" y="210" exp="f.pin=4" ][endif]
[if exp="f.Dp_a[5]==1" ][button target="*p_re" graphic="clothe/bc_purple.png" x="1030" y="210" exp="f.pin=5" ][endif]
[if exp="f.Dp_a[6]==1" ][button target="*p_re" graphic="clothe/bc_orange.png" x="1080" y="210" exp="f.pin=6" ][endif]
[if exp="f.Dp_a[7]==1" ][button target="*p_re" graphic="clothe/bc_white.png" x="1130" y="210" exp="f.pin=7" ][endif]
[if exp="f.Dp_a[8]==1" ][button target="*p_re" graphic="clothe/bc_black.png" x="1180" y="210" exp="f.pin=8" ][endif]
[if exp="f.Dp_a[9]==1" ][button target="*p_re" graphic="clothe/bc_pink.png" x="1230" y="210" exp="f.pin=9" ][endif]

[if exp ="f.Dp_b[0]=='got'" ][button target="*dress_pin" graphic="clothe/hp_egg.png" x="680" y="255" ][endif]
[if exp="f.Dp_b[1]==1" ][button target="*p_re" graphic="clothe/bc_blue.png" x="830" y="255" exp="f.pin=11" ][endif]
[if exp="f.Dp_b[2]==1" ][button target="*p_re" graphic="clothe/bc_red.png" x="880" y="255" exp="f.pin=12" ][endif]
[if exp="f.Dp_b[3]==1" ][button target="*p_re" graphic="clothe/bc_yellow.png" x="930" y="255" exp="f.pin=13" ][endif]
[if exp="f.Dp_b[4]==1" ][button target="*p_re" graphic="clothe/bc_green.png" x="980" y="255" exp="f.pin=14" ][endif]
[if exp="f.Dp_b[5]==1" ][button target="*p_re" graphic="clothe/bc_purple.png" x="1030" y="255" exp="f.pin=15" ][endif]
[if exp="f.Dp_b[6]==1" ][button target="*p_re" graphic="clothe/bc_orange.png" x="1080" y="255" exp="f.pin=16" ][endif]
[if exp="f.Dp_b[7]==1" ][button target="*p_re" graphic="clothe/bc_white.png" x="1130" y="255" exp="f.pin=17" ][endif]
[if exp="f.Dp_b[8]==1" ][button target="*p_re" graphic="clothe/bc_black.png" x="1180" y="255" exp="f.pin=18" ][endif]
[if exp="f.Dp_b[9]==1" ][button target="*p_re" graphic="clothe/bc_pink.png" x="1230" y="255" exp="f.pin=19" ][endif]

[if exp ="f.Dp_c[0]=='got'" ][button target="*dress_pin" graphic="clothe/hp_flower.png" x="680" y="300" ][endif]
[if exp="f.Dp_c[1]==1" ][button target="*p_re" graphic="clothe/bc_blue.png" x="830" y="300" exp="f.pin=21" ][endif]
[if exp="f.Dp_c[2]==1" ][button target="*p_re" graphic="clothe/bc_red.png" x="880" y="300" exp="f.pin=22" ][endif]
[if exp="f.Dp_c[3]==1" ][button target="*p_re" graphic="clothe/bc_yellow.png" x="930" y="300" exp="f.pin=23" ][endif]
[if exp="f.Dp_c[4]==1" ][button target="*p_re" graphic="clothe/bc_green.png" x="980" y="300" exp="f.pin=24" ][endif]
[if exp="f.Dp_c[5]==1" ][button target="*p_re" graphic="clothe/bc_purple.png" x="1030" y="300" exp="f.pin=25" ][endif]
[if exp="f.Dp_c[6]==1" ][button target="*p_re" graphic="clothe/bc_orange.png" x="1080" y="300" exp="f.pin=26" ][endif]
[if exp="f.Dp_c[7]==1" ][button target="*p_re" graphic="clothe/bc_white.png" x="1130" y="300" exp="f.pin=27" ][endif]
[if exp="f.Dp_c[8]==1" ][button target="*p_re" graphic="clothe/bc_black.png" x="1180" y="300" exp="f.pin=28" ][endif]
[if exp="f.Dp_c[9]==1" ][button target="*p_re" graphic="clothe/bc_pink.png" x="1230" y="300" exp="f.pin=29" ][endif]

[if exp="f.Dp_d[1]==1" ][button target="*p_re" graphic="clothe/hp_hurt.png" x="830" y="345" exp="f.pin=31" ][endif]
[if exp="f.Dp_d[2]==1" ][button target="*p_re" graphic="clothe/hp_star.png" x="880" y="345" exp="f.pin=32" ][endif]
[if exp="f.Dp_d[3]==1" ][button target="*p_re" graphic="clothe/hp_clover.png" x="930" y="345" exp="f.pin=33" ][endif]
[cancelskip][s]

*p_re
[f_hair_select][dress_pin_set][back_top]
*p_change
[dress_pin_set][back_top]

;;頭１---------------------------------------------------------------------------------------------
*dress_head
[cm][eval exp="f.ch_win=7" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[button target="*h_re" graphic="clothe/non.png" x="740" y="118" exp="f.hat=0" ]
;耳、角、麦わら、メイドヘッド
[if exp="f.Dh_a[1]==1" ][button target="*h_re" graphic="clothe/h_ear.png" x="680" y="165" exp="f.hat=1" ][endif]
[if exp="f.Dh_a[2]==1" ][button target="*h_re" graphic="clothe/h_horn.png" x="850" y="165" exp="f.hat=2" ][endif]
[if exp="f.Dh_b[1]==1" ][button target="*h_re" graphic="clothe/h_mugi.png" x="1000" y="165" exp="f.hat=11" ][endif]
[if exp="f.Dh_b[2]==1" ][button target="*h_re" graphic="clothe/h_head-d.png" x="1120" y="165" exp="f.hat=12" ][endif]
;ナース帽
[if exp="f.Dc_f[0]=='got'" ][button target="*dress_head" graphic="clothe/h_nurse-h.png" x="680" y="210" ][endif]
[if exp="f.Dc_f[1]==1" ][button target="*h_re" graphic="clothe/bc_white.png" x="835" y="210" exp="f.hat=21" ][endif]
[if exp="f.Dc_f[2]==1" ][button target="*h_re" graphic="clothe/bc_pink.png" x="890" y="210" exp="f.hat=22" ][endif]
[if exp="f.Dc_f[3]==1" ][button target="*h_re" graphic="clothe/bc_black.png" x="945" y="210" exp="f.hat=23" ][endif]
;カチューシャ
[if exp="f.Dh_d[0]=='got'" ][button target="*dress_head" graphic="clothe/h_band.png" x="680" y="255" ][endif]
[if exp="f.Dh_d[1]==1" ][button target="*h_re" graphic="clothe/bc_blue.png" x="830" y="255" exp="f.hat=31" ][endif]
[if exp="f.Dh_d[2]==1" ][button target="*h_re" graphic="clothe/bc_red.png" x="880" y="255" exp="f.hat=32" ][endif]
[if exp="f.Dh_d[3]==1" ][button target="*h_re" graphic="clothe/bc_yellow.png" x="930" y="255" exp="f.hat=33" ][endif]
[if exp="f.Dh_d[4]==1" ][button target="*h_re" graphic="clothe/bc_green.png" x="980" y="255" exp="f.hat=34" ][endif]
[if exp="f.Dh_d[5]==1" ][button target="*h_re" graphic="clothe/bc_purple.png" x="1030" y="255" exp="f.hat=35" ][endif]
[if exp="f.Dh_d[6]==1" ][button target="*h_re" graphic="clothe/bc_orange.png" x="1080" y="255" exp="f.hat=36" ][endif]
[if exp="f.Dh_d[7]==1" ][button target="*h_re" graphic="clothe/bc_white.png" x="1130" y="255" exp="f.hat=37" ][endif]
[if exp="f.Dh_d[8]==1" ][button target="*h_re" graphic="clothe/bc_black.png" x="1180" y="255" exp="f.hat=38" ][endif]
[if exp="f.Dh_d[9]==1" ][button target="*h_re" graphic="clothe/bc_pink.png" x="1230" y="255" exp="f.hat=39" ][endif]
;キャスケット
[if exp="f.Dh_e[0]=='got'" ][button target="*dress_head" graphic="clothe/h_cask.png" x="680" y="300" ][endif]
[if exp="f.Dh_e[1]==1" ][button target="*h_re" graphic="clothe/bc_white.png" x="835" y="300" exp="f.hat=41" ][endif]
[if exp="f.Dh_e[2]==1" ][button target="*h_re" graphic="clothe/bc_brown.png" x="890" y="300" exp="f.hat=42" ][endif]
[if exp="f.Dh_e[3]==1" ][button target="*h_re" graphic="clothe/bc_black.png" x="945" y="300" exp="f.hat=43" ][endif]
[if exp="f.Dh_e[4]==1" ][button target="*h_re" graphic="clothe/bc_green.png" x="1000" y="300" exp="f.hat=44" ][endif]
[if exp="f.Dh_e[5]==1" ][button target="*h_re" graphic="clothe/bc_red.png" x="1055" y="300" exp="f.hat=45" ][endif]
;シルクハット
[if exp="f.Dh_f[0]=='got'" ][button target="*dress_head" graphic="clothe/h_s-hat.png" x="680" y="345" ][endif]
[if exp="f.Dh_f[1]==1" ][button target="*h_re" graphic="clothe/bc_black.png" x="835" y="345" exp="f.hat=51" ][endif]
[if exp="f.Dh_f[2]==1" ][button target="*h_re" graphic="clothe/bc_white.png" x="890" y="345" exp="f.hat=52" ][endif]
[if exp="f.Dh_f[3]==1" ][button target="*h_re" graphic="clothe/bc_brown.png" x="945" y="345" exp="f.hat=53" ][endif]
[if exp="f.Dh_f[4]==1" ][button target="*h_re" graphic="clothe/bc_blue.png" x="1000" y="345" exp="f.hat=54" ][endif]
[if exp="f.Dh_f[5]==1" ][button target="*h_re" graphic="clothe/bc_red.png" x="1055" y="345" exp="f.hat=55" ][endif]
[if exp="f.Dh_f[6]==1" ][button target="*h_re" graphic="clothe/bc_purple.png" x="1110" y="345" exp="f.hat=56" ][endif]
[if exp="f.Dh_f[7]==1" ][button target="*h_re" graphic="clothe/bc_green.png" x="1165" y="345" exp="f.hat=57" ][endif]
[cancelskip][s]

*h_re
[head_check][dress_hat_set][back_top]
*h_non
[if exp="f.hair>=300" ][else]
[mod_hat st="00.png" ][eval exp="f.hat=0" ][endif][back_top]

;;足１---------------------------------------------------------------------------------------------
*dress_leg
[cm][eval exp="f.ch_win=8" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[button target="*s_re" graphic="clothe/non.png" x="740" y="118" exp="f.socks=0" ]
[if exp="f.Dc_b[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_short.png" x="680" y="165" ][endif]
[if exp="f.Dc_b[0]=='got'" ][button target="*s_re" graphic="clothe/bc_white.png" x="830" y="165" exp="f.socks=1" ][endif]
[if exp="f.Ds_a[2]==1" ][button target="*s_re" graphic="clothe/bc_black.png" x="880" y="165" exp="f.socks=2" ][endif]
[if exp="f.Ds_a[3]==1" ][button target="*s_re" graphic="clothe/bc_blue.png" x="930" y="165" exp="f.socks=3" ][endif]
[if exp="f.Ds_a[4]==1" ][button target="*s_re" graphic="clothe/bc_red.png" x="980" y="165" exp="f.socks=4" ][endif]
[if exp="f.Ds_a[5]==1" ][button target="*s_re" graphic="clothe/bc_yellow.png" x="1030" y="165" exp="f.socks=5" ][endif]
[if exp="f.Ds_a[6]==1" ][button target="*s_re" graphic="clothe/bc_green.png" x="1080" y="165" exp="f.socks=6" ][endif]
[if exp="f.Ds_a[7]==1" ][button target="*s_re" graphic="clothe/bc_purple.png" x="1130" y="165" exp="f.socks=7" ][endif]
[if exp="f.Ds_a[8]==1" ][button target="*s_re" graphic="clothe/bc_orange.png" x="1180" y="165" exp="f.socks=8" ][endif]
[if exp="f.Ds_a[9]==1" ][button target="*s_re" graphic="clothe/bc_pink.png" x="1230" y="165" exp="f.socks=9" ][endif]

[if exp="f.Ds_b[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_long.png" x="680" y="210" ][endif]
[if exp="f.Ds_b[1]==1" ][button target="*s_re" graphic="clothe/bc_white.png" x="830" y="210" exp="f.socks=11" ][endif]
[if exp="f.Ds_b[2]==1" ][button target="*s_re" graphic="clothe/bc_black.png" x="880" y="210" exp="f.socks=12" ][endif]
[if exp="f.Ds_b[3]==1" ][button target="*s_re" graphic="clothe/bc_blue.png" x="930" y="210" exp="f.socks=13" ][endif]
[if exp="f.Ds_b[4]==1" ][button target="*s_re" graphic="clothe/bc_red.png" x="980" y="210" exp="f.socks=14" ][endif]
[if exp="f.Ds_b[5]==1" ][button target="*s_re" graphic="clothe/bc_yellow.png" x="1030" y="210" exp="f.socks=15" ][endif]
[if exp="f.Ds_b[6]==1" ][button target="*s_re" graphic="clothe/bc_green.png" x="1080" y="210" exp="f.socks=16" ][endif]
[if exp="f.Ds_b[7]==1" ][button target="*s_re" graphic="clothe/bc_purple.png" x="1130" y="210" exp="f.socks=17" ][endif]
[if exp="f.Ds_b[8]==1" ][button target="*s_re" graphic="clothe/bc_orange.png" x="1180" y="210" exp="f.socks=18" ][endif]
[if exp="f.Ds_b[9]==1" ][button target="*s_re" graphic="clothe/bc_pink.png" x="1230" y="210" exp="f.socks=19" ][endif]

[if exp="f.Ds_c[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_stripe-w.png" x="680" y="255" ][endif]
[if exp="f.Ds_c[1]==1" ][button target="*s_re" graphic="clothe/bc_gray.png" x="830" y="255" exp="f.socks=21" ][endif]
[if exp="f.Ds_c[2]==1" ][button target="*s_re" graphic="clothe/bc_black.png" x="880" y="255" exp="f.socks=22" ][endif]
[if exp="f.Ds_c[3]==1" ][button target="*s_re" graphic="clothe/bc_blue.png" x="930" y="255" exp="f.socks=23" ][endif]
[if exp="f.Ds_c[4]==1" ][button target="*s_re" graphic="clothe/bc_red.png" x="980" y="255" exp="f.socks=24" ][endif]
[if exp="f.Ds_c[5]==1" ][button target="*s_re" graphic="clothe/bc_yellow.png" x="1030" y="255" exp="f.socks=25" ][endif]
[if exp="f.Ds_c[6]==1" ][button target="*s_re" graphic="clothe/bc_green.png" x="1080" y="255" exp="f.socks=26" ][endif]
[if exp="f.Ds_c[7]==1" ][button target="*s_re" graphic="clothe/bc_purple.png" x="1130" y="255" exp="f.socks=27" ][endif]
[if exp="f.Ds_c[8]==1" ][button target="*s_re" graphic="clothe/bc_orange.png" x="1180" y="255" exp="f.socks=28" ][endif]
[if exp="f.Ds_c[9]==1" ][button target="*s_re" graphic="clothe/bc_pink.png" x="1230" y="255" exp="f.socks=29" ][endif]

[if exp="f.Ds_d[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_stripe-lw.png" x="680" y="300" ][endif]
[if exp="f.Ds_d[1]==1" ][button target="*s_re" graphic="clothe/bc_gray.png" x="830" y="300" exp="f.socks=31" ][endif]
[if exp="f.Ds_d[2]==1" ][button target="*s_re" graphic="clothe/bc_black.png" x="880" y="300" exp="f.socks=32" ][endif]
[if exp="f.Ds_d[3]==1" ][button target="*s_re" graphic="clothe/bc_blue.png" x="930" y="300" exp="f.socks=33" ][endif]
[if exp="f.Ds_d[4]==1" ][button target="*s_re" graphic="clothe/bc_red.png" x="980" y="300" exp="f.socks=34" ][endif]
[if exp="f.Ds_d[5]==1" ][button target="*s_re" graphic="clothe/bc_yellow.png" x="1030" y="300" exp="f.socks=35" ][endif]
[if exp="f.Ds_d[6]==1" ][button target="*s_re" graphic="clothe/bc_green.png" x="1080" y="300" exp="f.socks=36" ][endif]
[if exp="f.Ds_d[7]==1" ][button target="*s_re" graphic="clothe/bc_purple.png" x="1130" y="300" exp="f.socks=37" ][endif]
[if exp="f.Ds_d[8]==1" ][button target="*s_re" graphic="clothe/bc_orange.png" x="1180" y="300" exp="f.socks=38" ][endif]
[if exp="f.Ds_d[9]==1" ][button target="*s_re" graphic="clothe/bc_pink.png" x="1230" y="300" exp="f.socks=39" ][endif]

[if exp="f.Ds_e[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_stripe-b.png" x="680" y="345" ][endif]
[if exp="f.Ds_e[1]==1" ][button target="*s_re" graphic="clothe/bc_white.png" x="830" y="345" exp="f.socks=41" ][endif]
[if exp="f.Ds_e[2]==1" ][button target="*s_re" graphic="clothe/bc_gray.png" x="880" y="345" exp="f.socks=42" ][endif]
[if exp="f.Ds_e[3]==1" ][button target="*s_re" graphic="clothe/bc_blue.png" x="930" y="345" exp="f.socks=43" ][endif]
[if exp="f.Ds_e[4]==1" ][button target="*s_re" graphic="clothe/bc_red.png" x="980" y="345" exp="f.socks=44" ][endif]
[if exp="f.Ds_e[5]==1" ][button target="*s_re" graphic="clothe/bc_yellow.png" x="1030" y="345" exp="f.socks=45" ][endif]
[if exp="f.Ds_e[6]==1" ][button target="*s_re" graphic="clothe/bc_green.png" x="1080" y="345" exp="f.socks=46" ][endif]
[if exp="f.Ds_e[7]==1" ][button target="*s_re" graphic="clothe/bc_purple.png" x="1130" y="345" exp="f.socks=47" ][endif]
[if exp="f.Ds_e[8]==1" ][button target="*s_re" graphic="clothe/bc_orange.png" x="1180" y="345" exp="f.socks=48" ][endif]
[if exp="f.Ds_e[9]==1" ][button target="*s_re" graphic="clothe/bc_pink.png" x="1230" y="345" exp="f.socks=49" ][endif]

[if exp="f.Ds_f[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_stripe-lb.png" x="680" y="390" ][endif]
[if exp="f.Ds_f[1]==1" ][button target="*s_re" graphic="clothe/bc_white.png" x="830" y="390" exp="f.socks=51" ][endif]
[if exp="f.Ds_f[2]==1" ][button target="*s_re" graphic="clothe/bc_gray.png" x="880" y="390" exp="f.socks=52" ][endif]
[if exp="f.Ds_f[3]==1" ][button target="*s_re" graphic="clothe/bc_blue.png" x="930" y="390" exp="f.socks=53" ][endif]
[if exp="f.Ds_f[4]==1" ][button target="*s_re" graphic="clothe/bc_red.png" x="980" y="390" exp="f.socks=54" ][endif]
[if exp="f.Ds_f[5]==1" ][button target="*s_re" graphic="clothe/bc_yellow.png" x="1030" y="390" exp="f.socks=55" ][endif]
[if exp="f.Ds_f[6]==1" ][button target="*s_re" graphic="clothe/bc_green.png" x="1080" y="390" exp="f.socks=56" ][endif]
[if exp="f.Ds_f[7]==1" ][button target="*s_re" graphic="clothe/bc_purple.png" x="1130" y="390" exp="f.socks=57" ][endif]
[if exp="f.Ds_f[8]==1" ][button target="*s_re" graphic="clothe/bc_orange.png" x="1180" y="390" exp="f.socks=58" ][endif]
[if exp="f.Ds_f[9]==1" ][button target="*s_re" graphic="clothe/bc_pink.png" x="1230" y="390" exp="f.socks=59" ][endif]
[cancelskip][s]

*s_re
[dress_socks_set][back_top]

;;メガネ---------------------------------------------------------------------------------------------
*dress_glasses
[cm][eval exp="f.ch_win=9" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[button target="*g_re" graphic="clothe/non.png" x="740" y="118" exp="f.glasses=0" ]
[if exp="f.Dg_a[0]=='got'" ][button target="*dress_glasses" graphic="clothe/gl-c.png" x="680" y="165" ][endif]
[if exp="f.Dg_a[1]==1" ][button target="*g_re" graphic="clothe/bc_blue.png" x="830" y="165" exp="f.glasses=1" ][endif]
[if exp="f.Dg_a[2]==1" ][button target="*g_re" graphic="clothe/bc_red.png" x="880" y="165" exp="f.glasses=2" ][endif]
[if exp="f.Dg_a[3]==1" ][button target="*g_re" graphic="clothe/bc_yellow.png" x="930" y="165" exp="f.glasses=3" ][endif]
[if exp="f.Dg_a[4]==1" ][button target="*g_re" graphic="clothe/bc_green.png" x="980" y="165" exp="f.glasses=4" ][endif]
[if exp="f.Dg_a[5]==1" ][button target="*g_re" graphic="clothe/bc_purple.png" x="1030" y="165" exp="f.glasses=5" ][endif]
[if exp="f.Dg_a[6]==1" ][button target="*g_re" graphic="clothe/bc_orange.png" x="1080" y="165" exp="f.glasses=6" ][endif]
[if exp="f.Dg_a[7]==1" ][button target="*g_re" graphic="clothe/bc_white.png" x="1130" y="165" exp="f.glasses=7" ][endif]
[if exp="f.Dg_a[8]==1" ][button target="*g_re" graphic="clothe/bc_black.png" x="1180" y="165" exp="f.glasses=8" ][endif]
[if exp="f.Dg_a[9]==1" ][button target="*g_re" graphic="clothe/bc_pink.png" x="1230" y="165" exp="f.glasses=9" ][endif]

[if exp="f.Dg_b[0]=='got'" ][button target="*dress_glasses" graphic="clothe/gl-s.png" x="680" y="210" ][endif]
[if exp="f.Dg_b[1]==1" ][button target="*g_re" graphic="clothe/bc_blue.png" x="830" y="210" exp="f.glasses=11" ][endif]
[if exp="f.Dg_b[2]==1" ][button target="*g_re" graphic="clothe/bc_red.png" x="880" y="210" exp="f.glasses=12" ][endif]
[if exp="f.Dg_b[3]==1" ][button target="*g_re" graphic="clothe/bc_yellow.png" x="930" y="210" exp="f.glasses=13" ][endif]
[if exp="f.Dg_b[4]==1" ][button target="*g_re" graphic="clothe/bc_green.png" x="980" y="210" exp="f.glasses=14" ][endif]
[if exp="f.Dg_b[5]==1" ][button target="*g_re" graphic="clothe/bc_purple.png" x="1030" y="210" exp="f.glasses=15" ][endif]
[if exp="f.Dg_b[6]==1" ][button target="*g_re" graphic="clothe/bc_orange.png" x="1080" y="210" exp="f.glasses=16" ][endif]
[if exp="f.Dg_b[7]==1" ][button target="*g_re" graphic="clothe/bc_white.png" x="1130" y="210" exp="f.glasses=17" ][endif]
[if exp="f.Dg_b[8]==1" ][button target="*g_re" graphic="clothe/bc_black.png" x="1180" y="210" exp="f.glasses=18" ][endif]
[if exp="f.Dg_b[9]==1" ][button target="*g_re" graphic="clothe/bc_pink.png" x="1230" y="210" exp="f.glasses=19" ][endif]


[if exp="f.Dg_c[0]=='got'" ][button target="*dress_glasses" graphic="clothe/gl-h.png" x="680" y="255" ][endif]
[if exp="f.Dg_c[1]==1" ][button target="*g_re" graphic="clothe/bc_blue.png" x="830" y="255" exp="f.glasses=21" ][endif]
[if exp="f.Dg_c[2]==1" ][button target="*g_re" graphic="clothe/bc_red.png" x="880" y="255" exp="f.glasses=22" ][endif]
[if exp="f.Dg_c[3]==1" ][button target="*g_re" graphic="clothe/bc_yellow.png" x="930" y="255" exp="f.glasses=23" ][endif]
[if exp="f.Dg_c[4]==1" ][button target="*g_re" graphic="clothe/bc_green.png" x="980" y="255" exp="f.glasses=24" ][endif]
[if exp="f.Dg_c[5]==1" ][button target="*g_re" graphic="clothe/bc_purple.png" x="1030" y="255" exp="f.glasses=25" ][endif]
[if exp="f.Dg_c[6]==1" ][button target="*g_re" graphic="clothe/bc_orange.png" x="1080" y="255" exp="f.glasses=26" ][endif]
[if exp="f.Dg_c[7]==1" ][button target="*g_re" graphic="clothe/bc_white.png" x="1130" y="255" exp="f.glasses=27" ][endif]
[if exp="f.Dg_c[8]==1" ][button target="*g_re" graphic="clothe/bc_black.png" x="1180" y="255" exp="f.glasses=28" ][endif]
[if exp="f.Dg_c[9]==1" ][button target="*g_re" graphic="clothe/bc_pink.png" x="1230" y="255" exp="f.glasses=29" ][endif]
[cancelskip][s]

*g_re
[dress_glasses_set][back_top]


;;下着１---------------------------------------------------------------------------------------------
*dress_under
[cm][eval exp="f.ch_win=10" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[if exp="f.lust>15" ]
[button target="*ub_re_h" graphic="clothe/non.png" x="740" y="118" exp="f.under_b=0" ][endif]

[button target="*dress_under" graphic="clothe/u_b-s.png" x="680" y="165" ]
[button target="*ub_re" graphic="clothe/bc_white.png" x="835" y="165" exp="f.under_b=1" ]
[if exp="f.Du_a[2]==1" ][button target="*ub_re" graphic="clothe/bc_blue.png" x="890" y="165" exp="f.under_b=2" ][endif]
[if exp="f.Du_a[3]==1" ][button target="*ub_re" graphic="clothe/bc_pink.png" x="945" y="165" exp="f.under_b=3" ][endif]
[if exp="f.Du_a[4]==1" ][button target="*ub_re" graphic="clothe/bc_yellow.png" x="1000" y="165" exp="f.under_b=4" ][endif]
[if exp="f.Du_a[5]==1" ][button target="*ub_re" graphic="clothe/bc_green.png" x="1055" y="165" exp="f.under_b=5" ][endif]
[if exp="f.Du_a[6]==1" ][button target="*ub_re" graphic="clothe/bc_orange.png" x="1110" y="165" exp="f.under_b=6" ][endif]
[if exp="f.Du_a[7]==1" ][button target="*ub_re" graphic="clothe/bc_black.png" x="1165" y="165" exp="f.under_b=7" ][endif]

[if exp="f.Du_c[0]=='got'" ][button target="*dress_under" graphic="clothe/u_b-marble.png" x="680" y="210" ][endif]
[if exp="f.Du_c[1]==1" ][button target="*ub_re" graphic="clothe/bc_white.png" x="835" y="210" exp="f.under_b=21" ][endif]
[if exp="f.Du_c[2]==1" ][button target="*ub_re" graphic="clothe/bc_blue.png" x="890" y="210" exp="f.under_b=22" ][endif]
[if exp="f.Du_c[3]==1" ][button target="*ub_re" graphic="clothe/bc_pink.png" x="945" y="210" exp="f.under_b=23" ][endif]
[if exp="f.Du_c[4]==1" ][button target="*ub_re" graphic="clothe/bc_yellow.png" x="1000" y="210" exp="f.under_b=24" ][endif]
[if exp="f.Du_c[5]==1" ][button target="*ub_re" graphic="clothe/bc_green.png" x="1055" y="210" exp="f.under_b=25" ][endif]
[if exp="f.Du_c[6]==1" ][button target="*ub_re" graphic="clothe/bc_orange.png" x="1110" y="210" exp="f.under_b=26" ][endif]
[if exp="f.Du_c[7]==1" ][button target="*ub_re" graphic="clothe/bc_black.png" x="1165" y="210" exp="f.under_b=27" ][endif]

[if exp="f.Du_b[0]=='got'" ][button target="*dress_under" graphic="clothe/u_b-r.png" x="680" y="255" ][endif]
[if exp="f.Du_b[1]==1" ][button target="*ub_re" graphic="clothe/bc_white.png" x="835" y="255" exp="f.under_b=11" ][endif]
[if exp="f.Du_b[2]==1" ][button target="*ub_re" graphic="clothe/bc_blue.png" x="890" y="255" exp="f.under_b=12" ][endif]
[if exp="f.Du_b[3]==1" ][button target="*ub_re" graphic="clothe/bc_pink.png" x="945" y="255" exp="f.under_b=13" ][endif]
[if exp="f.Du_b[4]==1" ][button target="*ub_re" graphic="clothe/bc_yellow.png" x="1000" y="255" exp="f.under_b=14" ][endif]
[if exp="f.Du_b[5]==1" ][button target="*ub_re" graphic="clothe/bc_green.png" x="1055" y="255" exp="f.under_b=15" ][endif]
[if exp="f.Du_b[6]==1" ][button target="*ub_re" graphic="clothe/bc_orange.png" x="1110" y="255" exp="f.under_b=16" ][endif]
[if exp="f.Du_b[7]==1" ][button target="*ub_re" graphic="clothe/bc_black.png" x="1165" y="255" exp="f.under_b=17" ][endif]

[if exp="f.Dc_b[0]=='got' && f.lust>15" ]
[button target="*up_re_h" graphic="clothe/non.png" x="740" y="345" exp="f.under_p=0" ][endif]

[button target="*dress_under" graphic="clothe/u_p-s.png" x="680" y="390" ]
[button target="*up_re" graphic="clothe/bc_white.png" x="835" y="390" exp="f.under_p=1" ]
[if exp="f.Du_a[2]==1" ][button target="*up_re" graphic="clothe/bc_blue.png" x="890" y="390" exp="f.under_p=2" ][endif]
[if exp="f.Du_a[3]==1" ][button target="*up_re" graphic="clothe/bc_pink.png" x="945" y="390" exp="f.under_p=3" ][endif]
[if exp="f.Du_a[4]==1" ][button target="*up_re" graphic="clothe/bc_yellow.png" x="1000" y="390" exp="f.under_p=4" ][endif]
[if exp="f.Du_a[5]==1" ][button target="*up_re" graphic="clothe/bc_green.png" x="1055" y="390" exp="f.under_p=5" ][endif]
[if exp="f.Du_a[6]==1" ][button target="*up_re" graphic="clothe/bc_orange.png" x="1110" y="390" exp="f.under_p=6" ][endif]
[if exp="f.Du_a[7]==1" ][button target="*up_re" graphic="clothe/bc_black.png" x="1165" y="390" exp="f.under_p=7" ][endif]

[if exp="f.Du_c[0]=='got'" ][button target="*dress_under" graphic="clothe/u_p-marble.png" x="680" y="435" ][endif]
[if exp="f.Du_c[1]==1" ][button target="*up_re" graphic="clothe/bc_white.png" x="835" y="435" exp="f.under_p=21" ][endif]
[if exp="f.Du_c[2]==1" ][button target="*up_re" graphic="clothe/bc_blue.png" x="890" y="435" exp="f.under_p=22" ][endif]
[if exp="f.Du_c[3]==1" ][button target="*up_re" graphic="clothe/bc_pink.png" x="945" y="435" exp="f.under_p=23" ][endif]
[if exp="f.Du_c[4]==1" ][button target="*up_re" graphic="clothe/bc_yellow.png" x="1000" y="435" exp="f.under_p=24" ][endif]
[if exp="f.Du_c[5]==1" ][button target="*up_re" graphic="clothe/bc_green.png" x="1055" y="435" exp="f.under_p=25" ][endif]
[if exp="f.Du_c[6]==1" ][button target="*up_re" graphic="clothe/bc_orange.png" x="1110" y="435" exp="f.under_p=26" ][endif]
[if exp="f.Du_c[7]==1" ][button target="*up_re" graphic="clothe/bc_black.png" x="1165" y="435" exp="f.under_p=27" ][endif];

[if exp="f.Du_b[0]=='got'" ][button target="*dress_under" graphic="clothe/u_p-r.png" x="680" y="480" ][endif]
[if exp="f.Du_b[1]==1" ][button target="*up_re" graphic="clothe/bc_white.png" x="835" y="480" exp="f.under_p=11" ][endif]
[if exp="f.Du_b[2]==1" ][button target="*up_re" graphic="clothe/bc_blue.png" x="890" y="480" exp="f.under_p=12" ][endif]
[if exp="f.Du_b[3]==1" ][button target="*up_re" graphic="clothe/bc_pink.png" x="945" y="480" exp="f.under_p=13" ][endif]
[if exp="f.Du_b[4]==1" ][button target="*up_re" graphic="clothe/bc_yellow.png" x="1000" y="480" exp="f.under_p=14" ][endif]
[if exp="f.Du_b[5]==1" ][button target="*up_re" graphic="clothe/bc_green.png" x="1055" y="480" exp="f.under_p=15" ][endif]
[if exp="f.Du_b[6]==1" ][button target="*up_re" graphic="clothe/bc_orange.png" x="1110" y="480" exp="f.under_p=16" ][endif]
[if exp="f.Du_b[7]==1" ][button target="*up_re" graphic="clothe/bc_black.png" x="1165" y="480" exp="f.under_p=17" ][endif]

;[if exp="f.Du_xb[0]=='got'" ][button target="*dress_under" graphic="clothe/u_p-little.png" x="680" y="525" ][endif]
;[if exp="f.Du_xb[1]==1" ][button target="*up_re" graphic="clothe/bc_white.png" x="835" y="525" exp="f.under_p=31" ][endif]
;[if exp="f.Du_xb[2]==1" ][button target="*up_re" graphic="clothe/bc_blue.png" x="890" y="525" exp="f.under_p=32" ][endif]
;[if exp="f.Du_xb[3]==1" ][button target="*up_re" graphic="clothe/bc_pink.png" x="945" y="525" exp="f.under_p=33" ][endif]
;[if exp="f.Du_xb[4]==1" ][button target="*up_re" graphic="clothe/bc_yellow.png" x="1000" y="525" exp="f.under_p=34" ][endif]
;[if exp="f.Du_xb[5]==1" ][button target="*up_re" graphic="clothe/bc_green.png" x="1055" y="525" exp="f.under_p=35" ][endif]
;[if exp="f.Du_xb[6]==1" ][button target="*up_re" graphic="clothe/bc_orange.png" x="1110" y="525" exp="f.under_p=36" ][endif]
;[if exp="f.Du_xb[7]==1" ][button target="*up_re" graphic="clothe/bc_black.png" x="1165" y="525" exp="f.under_p=37" ][endif]
[cancelskip][s]

*ub_re
[dress_under_b_set][back_top]
*up_re
[dress_under_p_set][back_top]

;;下着２---------------------------------------------------------------------------------------------
*dress_under2
[cm][eval exp="f.ch_win=11" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[button target="*ub_re_h" graphic="clothe/non.png" x="740" y="118" exp="f.under_b=0" ]

;[if exp="f.Du_xa[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_b-little.png" x="680" y="165" ][endif]
;[if exp="f.Du_xa[1]==1" ][button target="*ub_re_h" graphic="clothe/bc_white.png" x="835" y="165" exp="f.under_b=1001" ][endif]
;[if exp="f.Du_xa[2]==1" ][button target="*ub_re_h" graphic="clothe/bc_blue.png" x="890" y="165" exp="f.under_b=1002" ][endif]
;[if exp="f.Du_xa[3]==1" ][button target="*ub_re_h" graphic="clothe/bc_pink.png" x="945" y="165" exp="f.under_b=1003" ][endif]
;[if exp="f.Du_xa[4]==1" ][button target="*ub_re_h" graphic="clothe/bc_yellow.png" x="1000" y="165" exp="f.under_b=1004" ][endif]
;[if exp="f.Du_xa[5]==1" ][button target="*ub_re_h" graphic="clothe/bc_green.png" x="1055" y="165" exp="f.under_b=1005" ][endif]
;[if exp="f.Du_xa[6]==1" ][button target="*ub_re_h" graphic="clothe/bc_orange.png" x="1110" y="165" exp="f.under_b=1006" ][endif]
;[if exp="f.Du_xa[7]==1" ][button target="*ub_re_h" graphic="clothe/bc_black.png" x="1165" y="165" exp="f.under_b=1007" ][endif]

[if exp="f.Du_xb[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_br-little.png" x="680" y="210" ][endif]
[if exp="f.Du_xb[1]==1" ][button target="*ub_re_h" graphic="clothe/bc_white.png" x="835" y="210" exp="f.under_b=1011" ][endif]
[if exp="f.Du_xb[2]==1" ][button target="*ub_re_h" graphic="clothe/bc_blue.png" x="890" y="210" exp="f.under_b=1012" ][endif]
[if exp="f.Du_xb[3]==1" ][button target="*ub_re_h" graphic="clothe/bc_pink.png" x="945" y="210" exp="f.under_b=1013" ][endif]
[if exp="f.Du_xb[4]==1" ][button target="*ub_re_h" graphic="clothe/bc_yellow.png" x="1000" y="210" exp="f.under_b=1014" ][endif]
[if exp="f.Du_xb[5]==1" ][button target="*ub_re_h" graphic="clothe/bc_green.png" x="1055" y="210" exp="f.under_b=1015" ][endif]
[if exp="f.Du_xb[6]==1" ][button target="*ub_re_h" graphic="clothe/bc_orange.png" x="1110" y="210" exp="f.under_b=1016" ][endif]
[if exp="f.Du_xb[7]==1" ][button target="*ub_re_h" graphic="clothe/bc_black.png" x="1165" y="210" exp="f.under_b=1017" ][endif]

;[if exp="f.Du_xc[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_b-hole.png" x="680" y="255" ][endif]
;[if exp="f.Du_xc[1]==1" ][button target="*ub_re_h" graphic="clothe/bc_white.png" x="835" y="255" exp="f.under_b=1021" ][endif]
;[if exp="f.Du_xc[2]==1" ][button target="*ub_re_h" graphic="clothe/bc_blue.png" x="890" y="255" exp="f.under_b=1022" ][endif]
;[if exp="f.Du_xc[3]==1" ][button target="*ub_re_h" graphic="clothe/bc_pink.png" x="945" y="255" exp="f.under_b=1023" ][endif]
;[if exp="f.Du_xc[4]==1" ][button target="*ub_re_h" graphic="clothe/bc_yellow.png" x="1000" y="255" exp="f.under_b=1024" ][endif]
;[if exp="f.Du_xc[5]==1" ][button target="*ub_re_h" graphic="clothe/bc_green.png" x="1055" y="255" exp="f.under_b=1025" ][endif]
;[if exp="f.Du_xc[6]==1" ][button target="*ub_re_h" graphic="clothe/bc_orange.png" x="1110" y="255" exp="f.under_b=1026" ][endif]
;[if exp="f.Du_xc[7]==1" ][button target="*ub_re_h" graphic="clothe/bc_black.png" x="1165" y="255" exp="f.under_b=1027" ][endif]

[button target="*up_re_h" graphic="clothe/non.png" x="740" y="345" exp="f.under_p=0" ]

;[if exp="f.Du_xa[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_p-little.png" x="680" y="390" ][endif]
;[if exp="f.Du_xa[1]==1" ][button target="*up_re_h" graphic="clothe/bc_white.png" x="835" y="390" exp="f.under_p=1001" ][endif]
;[if exp="f.Du_xa[2]==1" ][button target="*up_re_h" graphic="clothe/bc_blue.png" x="890" y="390" exp="f.under_p=1002" ][endif]
;[if exp="f.Du_xa[3]==1" ][button target="*up_re_h" graphic="clothe/bc_pink.png" x="945" y="390" exp="f.under_p=1003" ][endif]
;[if exp="f.Du_xa[4]==1" ][button target="*up_re_h" graphic="clothe/bc_yellow.png" x="1000" y="390" exp="f.under_p=1004" ][endif]
;[if exp="f.Du_xa[5]==1" ][button target="*up_re_h" graphic="clothe/bc_green.png" x="1055" y="390" exp="f.under_p=1005" ][endif]
;[if exp="f.Du_xa[6]==1" ][button target="*up_re_h" graphic="clothe/bc_orange.png" x="1110" y="390" exp="f.under_p=1006" ][endif]
;[if exp="f.Du_xa[7]==1" ][button target="*up_re_h" graphic="clothe/bc_black.png" x="1165" y="390" exp="f.under_p=1007" ][endif]

[if exp="f.Du_xb[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_pr-little.png" x="680" y="435" ][endif]
[if exp="f.Du_xb[1]==1" ][button target="*up_re_h" graphic="clothe/bc_white.png" x="835" y="435" exp="f.under_p=1011" ][endif]
[if exp="f.Du_xb[2]==1" ][button target="*up_re_h" graphic="clothe/bc_blue.png" x="890" y="435" exp="f.under_p=1012" ][endif]
[if exp="f.Du_xb[3]==1" ][button target="*up_re_h" graphic="clothe/bc_pink.png" x="945" y="435" exp="f.under_p=1013" ][endif]
[if exp="f.Du_xb[4]==1" ][button target="*up_re_h" graphic="clothe/bc_yellow.png" x="1000" y="435" exp="f.under_p=1014" ][endif]
[if exp="f.Du_xb[5]==1" ][button target="*up_re_h" graphic="clothe/bc_green.png" x="1055" y="435" exp="f.under_p=1015" ][endif]
[if exp="f.Du_xb[6]==1" ][button target="*up_re_h" graphic="clothe/bc_orange.png" x="1110" y="435" exp="f.under_p=1016" ][endif]
[if exp="f.Du_xb[7]==1" ][button target="*up_re_h" graphic="clothe/bc_black.png" x="1165" y="435" exp="f.under_p=1017" ][endif]

[if exp="f.Du_xc[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_p-hole.png" x="680" y="480" ][endif]
[if exp="f.Du_xc[1]==1" ][button target="*up_re_h" graphic="clothe/bc_white.png" x="835" y="480" exp="f.under_p=1021" ][endif]
[if exp="f.Du_xc[2]==1" ][button target="*up_re_h" graphic="clothe/bc_blue.png" x="890" y="480" exp="f.under_p=1022" ][endif]
[if exp="f.Du_xc[3]==1" ][button target="*up_re_h" graphic="clothe/bc_pink.png" x="945" y="480" exp="f.under_p=1023" ][endif]
[if exp="f.Du_xc[4]==1" ][button target="*up_re_h" graphic="clothe/bc_yellow.png" x="1000" y="480" exp="f.under_p=1024" ][endif]
[if exp="f.Du_xc[5]==1" ][button target="*up_re_h" graphic="clothe/bc_green.png" x="1055" y="480" exp="f.under_p=1025" ][endif]
[if exp="f.Du_xc[6]==1" ][button target="*up_re_h" graphic="clothe/bc_orange.png" x="1110" y="480" exp="f.under_p=1026" ][endif]
[if exp="f.Du_xc[7]==1" ][button target="*up_re_h" graphic="clothe/bc_black.png" x="1165" y="480" exp="f.under_p=1027" ][endif]
[cancelskip][s]

*ub_re_h
[dress_under_b_set][back_top_h]
*up_re_h
[dress_under_p_set][back_top_h]

;;腕---------------------------------------------------------------------------------------------
*dress_arm
[cm][eval exp="f.ch_win=12" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*a_re" graphic="clothe/non.png" x="730" y="118" exp="f.gloves=0" ]
[if exp="f.Dc_o[0]=='got'" ][button target="*dress_arm" graphic="clothe/a_belt-a.png" x="680" y="165" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*a_re" graphic="clothe/bc_black.png" x="835" y="165" exp="f.gloves=1001" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*a_re" graphic="clothe/bc_brown.png" x="890" y="165" exp="f.gloves=1002" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*a_re" graphic="clothe/bc_blue.png" x="945" y="165" exp="f.gloves=1003" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*a_re" graphic="clothe/bc_purple.png" x="1000" y="165" exp="f.gloves=1004" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*a_re" graphic="clothe/bc_red.png" x="1055" y="165" exp="f.gloves=1005" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*a_re" graphic="clothe/bc_green.png" x="1110" y="165" exp="f.gloves=1006" ][endif]
[cancelskip][s]

;[if exp="f.a_a[1]==1" ][button target="*a_re" graphic="clothe/hand.png" x="680" y="310" ][endif]
;[if exp="f.a_a[2]==1" ][button target="*a_re" graphic="clothe/bc_white.png" x="840" y="310" ][endif]
;[if exp="f.a_a[3]==1" ][button target="*a_re" graphic="clothe/race-b.png" x="890" y="310" ][endif]
;[if exp="f.a_a[4]==1" ][button target="*a_re" graphic="clothe/race-w.png" x="975" y="310" ][endif]

*a_re
[dress_gloves_set][back_top]

;;他---------------------------------------------------------------------------------------------
*dress_other
[cm][eval exp="f.ch_win=13" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
;マフラー
[if exp="f.Dne_a[0]=='got' || f.Dne_b[0]=='got'" ]
[button target="*ne_re" graphic="clothe/non.png" x="730" y="118" exp="f.neck=0" ][endif]
[if exp="f.Dne_a[0]=='got'" ][button target="*dress_other" graphic="clothe/n_maf.png" x="680" y="165" ][endif]
[if exp="f.Dne_a[1]==1" ][button target="*ne_re" graphic="clothe/bc_brown.png" x="835" y="165" exp="f.neck=1" ][endif]
[if exp="f.Dne_a[2]==1" ][button target="*ne_re" graphic="clothe/bc_blue.png" x="890" y="165" exp="f.neck=2" ][endif]
[if exp="f.Dne_a[3]==1" ][button target="*ne_re" graphic="clothe/bc_red.png" x="945" y="165" exp="f.neck=3" ][endif]
[if exp="f.Dne_a[4]==1" ][button target="*ne_re" graphic="clothe/bc_green.png" x="1000" y="165" exp="f.neck=4" ][endif]
[if exp="f.Dne_a[5]==1" ][button target="*ne_re" graphic="clothe/bc_purple.png" x="1055" y="165" exp="f.neck=5" ][endif]
[if exp="f.Dne_a[6]==1" ][button target="*ne_re" graphic="clothe/bc_pink.png" x="1110" y="165" exp="f.neck=6" ][endif]
[if exp="f.Dne_a[7]==1" ][button target="*ne_re" graphic="clothe/bc_white.png" x="1165" y="165" exp="f.neck=7" ][endif]
[if exp="f.Dne_a[8]==1" ][button target="*ne_re" graphic="clothe/bc_black.png" x="1220" y="165" exp="f.neck=8" ][endif]

[if exp="f.Dne_c[0]=='got'" ][button target="*dress_other" graphic="clothe/n_maf-c.png" x="680" y="210" ][endif]
[if exp="f.Dne_c[1]==1" ][button target="*ne_re" graphic="clothe/bc_brown.png" x="835" y="210" exp="f.neck=21" ][endif]
[if exp="f.Dne_c[2]==1" ][button target="*ne_re" graphic="clothe/bc_blue.png" x="890" y="210" exp="f.neck=22" ][endif]
[if exp="f.Dne_c[3]==1" ][button target="*ne_re" graphic="clothe/bc_red.png" x="945" y="210" exp="f.neck=23" ][endif]
[if exp="f.Dne_c[4]==1" ][button target="*ne_re" graphic="clothe/bc_green.png" x="1000" y="210" exp="f.neck=24" ][endif]
[if exp="f.Dne_c[5]==1" ][button target="*ne_re" graphic="clothe/bc_purple.png" x="1055" y="210" exp="f.neck=25" ][endif]
[if exp="f.Dne_c[6]==1" ][button target="*ne_re" graphic="clothe/bc_pink.png" x="1110" y="210" exp="f.neck=26" ][endif]
[if exp="f.Dne_c[7]==1" ][button target="*ne_re" graphic="clothe/bc_white.png" x="1165" y="210" exp="f.neck=27" ][endif]
[if exp="f.Dne_c[8]==1" ][button target="*ne_re" graphic="clothe/bc_black.png" x="1220" y="210" exp="f.neck=28" ][endif]

;エプロン
[if exp="f.Dne_b[0]=='got'" ][button target="*dress_other" graphic="clothe/n_ep.png" x="680" y="255" ][endif]
[if exp="f.Dne_b[1]==1" ][button target="*ne_re" graphic="clothe/bc_white.png" x="835" y="255" exp="f.neck=11" ][endif]
[if exp="f.Dne_b[2]==1" ][button target="*ne_re" graphic="clothe/bc_blue.png" x="890" y="255" exp="f.neck=12" ][endif]
[if exp="f.Dne_b[3]==1" ][button target="*ne_re" graphic="clothe/bc_pink.png" x="945" y="255" exp="f.neck=13" ][endif]
[if exp="f.Dne_b[4]==1" ][button target="*ne_re" graphic="clothe/bc_black.png" x="1000" y="255" exp="f.neck=14" ][endif]

;ピアス
[if exp="f.lust>=50" ][button target="*ri_re" graphic="clothe/non.png" x="680" y="300" exp="f.b_acc=0" ][endif]
[if exp="f.lust>=50" ][button target="*ri_re" graphic="clothe/ac_bandaid.png" height="34" x="760" y="300" exp="f.b_acc=11" ][endif]
[if exp="f.Dac_b[1]==1 && f.lust>=50" ][button target="*ri_re" graphic="clothe/ac_gold-a.png" x="680" y="345" exp="f.b_acc=21" ][endif]
[if exp="f.Dac_c[1]==1 && f.lust>=50" ][button target="*ri_re" graphic="clothe/ac_gold-b.png" x="800" y="345" exp="f.b_acc=31" ][endif]
[if exp="f.Dac_d[1]==1 && f.lust>=50" ][button target="*ri_re" graphic="clothe/ac_gold-c.png" x="904" y="345" exp="f.b_acc=41" ][endif]
[if exp="f.Dac_b[2]==1 && f.lust>=50" ][button target="*ri_re" graphic="clothe/ac_sil-a.png" x="680" y="390" exp="f.b_acc=22" ][endif]
[if exp="f.Dac_c[2]==1 && f.lust>=50" ][button target="*ri_re" graphic="clothe/ac_sil-b.png" x="800" y="390" exp="f.b_acc=32" ][endif]
[if exp="f.Dac_d[2]==1 && f.lust>=50" ][button target="*ri_re" graphic="clothe/ac_sil-c.png" x="904" y="390" exp="f.b_acc=42" ][endif]
[cancelskip][s]

*ne_re
[dress_neck_set][back_top]
*ri_re
[dress_b_acc_set][if exp="f.b_acc==0" ][back_top][else][back_top_h][endif]

;;オリジナル衣装---------------------------------------------------------------------------------------------
*dress_original
[cm][eval exp="f.ch_win=14" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*c_re" graphic="number/ori_clothe.png" height="36" x="673" y="165" exp="f.dress=9001" ]
[button target="*c_re" graphic="number/1/02.png" height="36" x="725" y="165" exp="f.dress=9002" ]
[button target="*c_re" graphic="number/1/03.png" height="36" x="770" y="165" exp="f.dress=9003" ]
[button target="*c_re" graphic="number/1/04.png" height="36" x="815" y="165" exp="f.dress=9004" ]
[button target="*c_re" graphic="number/1/05.png" height="36" x="860" y="165" exp="f.dress=9005" ]
[button target="*c_re" graphic="number/1/06.png" height="36" x="905" y="165" exp="f.dress=9006" ]
[button target="*c_re" graphic="number/1/07.png" height="36" x="950" y="165" exp="f.dress=9007" ]
[button target="*c_re" graphic="number/1/08.png" height="36" x="995" y="165" exp="f.dress=9008" ]
[button target="*c_re" graphic="number/1/09.png" height="36" x="1040" y="165" exp="f.dress=9009" ]
[button target="*c_re" graphic="number/1/10.png" height="36" x="1085" y="165" exp="f.dress=9010" ]
[button target="*c_re" graphic="clothe/non.png" height="36" x="1150" y="165" exp="f.dress=0" ]

[button target="*p_re" graphic="number/ori_pin.png" height="36" x="673" y="210" exp="f.pin=9001" ]
[button target="*p_re" graphic="number/1/02.png" height="36" x="725" y="210" exp="f.pin=9002" ]
[button target="*p_re" graphic="number/1/03.png" height="36" x="770" y="210" exp="f.pin=9003" ]
[button target="*p_re" graphic="number/1/04.png" height="36" x="815" y="210" exp="f.pin=9004" ]
[button target="*p_re" graphic="number/1/05.png" height="36" x="860" y="210" exp="f.pin=9005" ]
[button target="*p_re" graphic="number/1/06.png" height="36" x="905" y="210" exp="f.pin=9006" ]
[button target="*p_re" graphic="number/1/07.png" height="36" x="950" y="210" exp="f.pin=9007" ]
[button target="*p_re" graphic="number/1/08.png" height="36" x="995" y="210" exp="f.pin=9008" ]
[button target="*p_re" graphic="number/1/09.png" height="36" x="1040" y="210" exp="f.pin=9009" ]
[button target="*p_re" graphic="number/1/10.png" height="36" x="1085" y="210" exp="f.pin=9010" ]
[button target="*p_re" graphic="clothe/non.png" height="36" x="1150" y="210" exp="f.pin=0" ]

[button target="*h_re" graphic="number/ori_head.png" height="36" x="673" y="255" exp="f.hat=9001" ]
[button target="*h_re" graphic="number/1/02.png" height="36" x="725" y="255" exp="f.hat=9002" ]
[button target="*h_re" graphic="number/1/03.png" height="36" x="770" y="255" exp="f.hat=9003" ]
[button target="*h_re" graphic="number/1/04.png" height="36" x="815" y="255" exp="f.hat=9004" ]
[button target="*h_re" graphic="number/1/05.png" height="36" x="860" y="255" exp="f.hat=9005" ]
[button target="*h_re" graphic="number/1/06.png" height="36" x="905" y="255" exp="f.hat=9006" ]
[button target="*h_re" graphic="number/1/07.png" height="36" x="950" y="255" exp="f.hat=9007" ]
[button target="*h_re" graphic="number/1/08.png" height="36" x="995" y="255" exp="f.hat=9008" ]
[button target="*h_re" graphic="number/1/09.png" height="36" x="1040" y="255" exp="f.hat=9009" ]
[button target="*h_re" graphic="number/1/10.png" height="36" x="1085" y="255" exp="f.hat=9010" ]
[button target="*h_re" graphic="clothe/non.png" height="36" x="1150" y="255" exp="f.hat=0" ]

[button target="*ne_re" graphic="number/ori_neck.png" height="36" x="673" y="300" exp="f.neck=9001" ]
[button target="*ne_re" graphic="number/1/02.png" height="36" x="725" y="300" exp="f.neck=9002" ]
[button target="*ne_re" graphic="number/1/03.png" height="36" x="770" y="300" exp="f.neck=9003" ]
[button target="*ne_re" graphic="number/1/04.png" height="36" x="815" y="300" exp="f.neck=9004" ]
[button target="*ne_re" graphic="number/1/05.png" height="36" x="860" y="300" exp="f.neck=9005" ]
[button target="*ne_re" graphic="number/1/06.png" height="36" x="905" y="300" exp="f.neck=9006" ]
[button target="*ne_re" graphic="number/1/07.png" height="36" x="950" y="300" exp="f.neck=9007" ]
[button target="*ne_re" graphic="number/1/08.png" height="36" x="995" y="300" exp="f.neck=9008" ]
[button target="*ne_re" graphic="number/1/09.png" height="36" x="1040" y="300" exp="f.neck=9009" ]
[button target="*ne_re" graphic="number/1/10.png" height="36" x="1085" y="300" exp="f.neck=9010" ]
[button target="*ne_re" graphic="clothe/non.png" height="36" x="1150" y="300" exp="f.neck=0" ]

[button target="*s_re" graphic="number/ori_socks.png" height="36" x="673" y="345" exp="f.socks=9001" ]
[button target="*s_re" graphic="number/1/02.png" height="36" x="725" y="345" exp="f.socks=9002" ]
[button target="*s_re" graphic="number/1/03.png" height="36" x="770" y="345" exp="f.socks=9003" ]
[button target="*s_re" graphic="number/1/04.png" height="36" x="815" y="345" exp="f.socks=9004" ]
[button target="*s_re" graphic="number/1/05.png" height="36" x="860" y="345" exp="f.socks=9005" ]
[button target="*s_re" graphic="number/1/06.png" height="36" x="905" y="345" exp="f.socks=9006" ]
[button target="*s_re" graphic="number/1/07.png" height="36" x="950" y="345" exp="f.socks=9007" ]
[button target="*s_re" graphic="number/1/08.png" height="36" x="995" y="345" exp="f.socks=9008" ]
[button target="*s_re" graphic="number/1/09.png" height="36" x="1040" y="345" exp="f.socks=9009" ]
[button target="*s_re" graphic="number/1/10.png" height="36" x="1085" y="345" exp="f.socks=9010" ]
[button target="*s_re" graphic="clothe/non.png" height="36" x="1150" y="345" exp="f.socks=0" ]

[button target="*ri_re" graphic="number/ori_body.png" height="36" x="673" y="390" exp="f.b_acc=9001" ]
[button target="*ri_re" graphic="number/1/02.png" height="36" x="725" y="390" exp="f.b_acc=9002" ]
[button target="*ri_re" graphic="number/1/03.png" height="36" x="770" y="390" exp="f.b_acc=9003" ]
[button target="*ri_re" graphic="number/1/04.png" height="36" x="815" y="390" exp="f.b_acc=9004" ]
[button target="*ri_re" graphic="number/1/05.png" height="36" x="860" y="390" exp="f.b_acc=9005" ]
[button target="*ri_re" graphic="number/1/06.png" height="36" x="905" y="390" exp="f.b_acc=9006" ]
[button target="*ri_re" graphic="number/1/07.png" height="36" x="950" y="390" exp="f.b_acc=9007" ]
[button target="*ri_re" graphic="number/1/08.png" height="36" x="995" y="390" exp="f.b_acc=9008" ]
[button target="*ri_re" graphic="number/1/09.png" height="36" x="1040" y="390" exp="f.b_acc=9009" ]
[button target="*ri_re" graphic="number/1/10.png" height="36" x="1085" y="390" exp="f.b_acc=9010" ]
[button target="*ri_re" graphic="clothe/non.png" height="36" x="1150" y="390" exp="f.b_acc=0" ]
[cancelskip][s]

;;take_all
*take_all
[if exp="f.hair_style!=0" ][eval exp="f.hair_style=0" ][eval exp="f.hair_band=0" ]
[chara_part name="dress_up" head="s/body/dress_h1.png" hair_b="s/hair/D/nr.png" hat="00.png" ribbon="00.png" ribbon_b="00.png" allow_storage=true ]
[endif]
[if exp="f.glasses!=0" ][chara_part name="dress_up" glasses="00.png" allow_storage=true ][eval exp="f.glasses=0" ][endif]
[if exp="f.hat!=0" ][chara_part name="dress_up" hat="00.png" allow_storage=true ][eval exp="f.hat=0" ][endif]
[if exp="f.front_hair!=0" ][chara_part name="dress_up" pin="00.png" hair_f="s/body/dress_fh.png" allow_storage=true ]
[eval exp="f.pin=0" ][eval exp="f.front_hair=0" ][endif]
[if exp="f.b_acc!=0" ][chara_part name="dress_up" b_acc="00.png" allow_storage=true ][eval exp="f.b_acc=0" ][endif]
[if exp="f.neck!=0" ][chara_part name="dress_up" neck="00.png" allow_storage=true ][eval exp="f.neck=0" ][endif]
[if exp="f.socks!=0" ][chara_part name="dress_up" socks="00.png" allow_storage=true ][eval exp="f.socks=0" ][endif]
[if exp="f.gloves!=0" ][chara_part name="dress_up" gloves="00.png" allow_storage=true ][eval exp="f.gloves=0" ][endif]
[if exp="f.lust>=5" ][chara_part name="dress_up" dress="00.png" allow_storage=true ][eval exp="f.dress=0" ][endif]
[if exp="f.lust>=15" ][chara_part name="dress_up" under_b="00.png" allow_storage=true ][eval exp="f.under_b=0" ][f/clp_nt][endif]
[if exp="f.lust>=15" ][chara_part name="dress_up" under_p="00.png" allow_storage=true ][eval exp="f.under_p=0" ][d_face_h][endif]
[back_top]
