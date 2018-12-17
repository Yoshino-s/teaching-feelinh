;*pass_lock
;[if exp="sf.password=='サイトでベータ版に関して読んだはずの人！！！！！'" ][jump target="*pass" ][endif]
;[edit left=200 top=300 width="950" height="50" name="sf.password" ]
;[button target="*sbm_pass" x="450" y="400" graphic="s_menu/conti.png" ][s]
;*sbm_pass
;[commit][cm][if exp="sf.password=='ペンギンを蒸す機械'" ][eval exp="sf.password='サイトでベータ版に関して読んだはずの人！！！！！'" ]
;[else][jump target="*pass_lock" ][endif]
;*pass
;[cm]

[title name="TeachingFeeling_ver2.3.1" ]
[call storage="pre/chara_define.ks"][call storage="pre/macro.ks" ]
[call storage="pre/face.ks" ][call storage="pre/set_show.ks" ]
[mov_logo]

;初回設定初期数値
[if exp="sf.first!=1" ]
[eval exp="sf.ef=1" ][eval exp="sf.se=1" ][eval exp="sf.tx=1" ][eval exp="sf.xr=1" ]
[eval exp="sf.full=0" ]
[eval exp="sf.se_v=4" ][eval exp="sf.bgm=4" ][eval exp="sf.auto=4" ][eval exp="sf.text=4" ]
[eval exp="sf.first=1" ][endif]


;タイトル画面
*title
[cm][endnolog]

;メッセージレイヤ設定
[layopt layer="message0" visible=false][layopt layer="message1" visible=false]
[reset_frame][resetdelay][set_text_speed][set_auto_speed][set_bgm_vol][set_se_vol]
[glyph fix="false" left="0" top="0" ]

[hide_message_w][hide_role][bgm_SG]
[bg time="500" method="crossfade" storage="bg/title-menu.jpg" ]
*show
[button target="*start" graphic="title/start.png" x="321" y="588" ]
[button target="*load" graphic="title/continue.png" x="321" y="637" ]
[button storage="sys/how_to.ks" target="*top" graphic="title/readme.png" x="321" y="686" ]
[button storage="sys/update_info.ks" target="*top" graphic="title/update.png" x="321" y="735" ]
[button target="*close" graphic="title/finish.png" x="321" y="784" ][s]

*start
[cm][jump storage="intro/opening.ks" target="*opening" ]
*load
[cm][showload][jump target="*show" ]
*close
[close ask="false"]


