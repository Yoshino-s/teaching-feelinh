;;外出夜選択肢
*out_night
[cm]
[if exp="f.lust>=100" ]
[button storage="act_alone/out_alone.ks" target="*alone" graphic="menu/out_alone.png" x="645" y="225" ][endif]
[button target="*with_dinner" graphic="menu/out_dinner.png" x="645" y="140" ]
[button target="*remind" graphic="menu/out_remind.png" x="645" y="310" ][s]

;;外出人数選択肢
*out
[cm][if exp="f.out==0" ]
[button target="*together" graphic="menu/out_with.png" x="645" y="140" ][endif]
[button storage="act_alone/out_alone.ks" target="*alone" graphic="menu/out_alone.png" x="645" y="225" ]
[button target="*remind" graphic="menu/out_remind.png" x="645" y="310" ][s]

;;ディナー
*with_dinner
[cm][if exp="f.dress==0 || f.dress==5 || f.dress==6 || f.dress>=1001 && f.dress<=3000" ]
[_]（讓我換上能夠出門的衣服…。[p_][eval exp="f.system_act=1" ][return_menu][endif]

[set_stand][bg_door][f/nt][show_stand]
[f/re][syl]今天要在外面吃晚餐嗎？[p_]
[f/s]是的、我明白了。很期待。[p_]
[jump storage="act_with/dinner.ks" target="*dinner" ]

;;一緒に外出
*together
[cm][if exp="f.dress==0 || f.dress==5 || f.dress==6 || f.dress>=1001 && f.dress<=3000" ]
[_]（讓我換上能夠出門的衣服…。[p_][eval exp="f.system_act=1" ][return_menu][endif]

;;外出先選択肢
[_]要去哪裡？
[if exp="f.step>=6" ]
[button target="*go_wood" graphic="menu/out_wood.png" x="645" y="225" ][endif]
[button target="*go_town" graphic="menu/out_town.png" x="645" y="140" ]
[button target="*remind" graphic="menu/out_remind.png" x="645" y="310" ][s]

*go_wood
[cm][call target="*talk_before_go" ][jump storage="act_with/wood.ks" target="*wood" ]
*go_town
[cm][call target="*talk_before_go" ][jump target="*town" ]

*talk_before_go
[set_stand][bg_door][syl]
[if exp="f.intro_flag=='alone'" ][eval exp="f.intro_flag=0" ]
	[f/nt][show_stand]…。[lr_]
	[f/re]我也、一起去嗎？[p_]
	[f/cl_nt]…。[lr_]
	[f/]我明白了。[lr_]
	[f/re]雖然我提不起太重的東西但、我會儘量幫忙的…。[p_]
[elsif exp="f.step==3" ][f/][show_stand]
	我也、可以再和你一起嗎？[p_]
[elsif exp="f.step==4" ][f/][show_stand]
	要出去嗎。[lr_]
	[f/re]好的、請帶上我一起吧。[p_]
[elsif exp="f.step==5" ][f/s][show_stand]
	好的、要出去嗎。[lr_]
	[f/re]…我很開心。[p_]
[elsif exp="f.step==6" ][f/ss][show_stand]
	好的。一起去吧。[lr_]
	[f/ss]與[name]一起、去哪裡我都是快樂的。[p_]
[elsif exp="f.love>500" ][f/ssp][show_stand]
	是、出去請帶上我一起。[lr_]
	[f/re]不管你去哪裡、都不要离开我…。[p_]
[endif][return]

*remind
[cm]（還是算了吧[p_][eval exp="f.system_act=1" ][return_menu]

;;街へ
*town
[cm][stop_bgm][set_black][eval exp="f.last_act='town'" ]
[if exp="f.step<=4" ][f/nt][elsif exp="f.step==5" ][f/s_nt]
[elsif exp="f.step==6" ][f/s_nt][elsif exp="f.love>1000 && f.step>=6" ][f/sp_nt][endif]
[bg_town][bgm_OB][set_weather][show_stand]
[_]到鎮子上了、要去哪裏呢。[l]
[if exp="f.step<=5" ][jump storage="intro/town.ks" target="*choise_intro" ][endif]

;;街中選択肢
*choise
[if exp="f.act<=2" ][eval exp="f.lunch_yet=1" ][endif]
[act_win_stand][mod_win st="o/win/sub_win.png" ]

[if exp="f.act<=4" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" width=461 x="888" y="310" ][endif]
[if exp="f.act==3 || f.act==4" ]
[button storage="act_with/cafe.ks" target="*cafe" graphic="s_menu/cafe.png" width=461 x="888" y="240" ][endif]
[button storage="act_with/market.ks" target="*market" graphic="s_menu/market.png" width=461 x="888" y="170" ]
[button storage="act_with/hiroba.ks" target="*hiroba" graphic="s_menu/stay_hiroba.png" width=461 x="888" y="100" ]
[button target="*back_home" graphic="s_menu/go_home.png" width=461 x="888" y="380" ][s]

*back_home
[cm][_]（買些生活必需品今天就回去吧…。[p_]
[stop_bgm][jump target="*after_town" ]

;;帰宅時
*after_town
[_][chara_stop][stop_bgm][black]…[p][eval exp="f.act=f.act+1" ][eval exp="f.out=1" ]
[bgm_SG][return_bace]
