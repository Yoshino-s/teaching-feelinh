

;メニューボタン非表示
[hidemenubutton]

;*pass_lock
;[if exp="sf.password=='サイトでベータ版に関して読んだはずの人！！！！！'" ][jump target="*pass" ][endif]
;[edit left=200 top=300 width="950" height="50" name="sf.password" ]
;[button target="*sbm_pass" x="450" y="400" graphic="s_menu/conti.png" ][s]
;*sbm_pass
;[commit][cm][if exp="sf.password=='ペンギンを蒸す機械'" ][eval exp="sf.password='サイトでベータ版に関して読んだはずの人！！！！！'" ]
;[else][jump target="*pass_lock" ][endif]
;*pass
;[cm]

;--------------------------
[jump storage="sys/title_screen.ks"]





