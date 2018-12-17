
*choise_intro
[set_weather][_][mod_win st="o/win/sub_win.png" ]
;[chara_show name="window" time="1" wait="false" left="886" top="0" ]
;[chara_show name="other" time="0" wait="false" left="886" top="0" ]
[act_win_stand][mod_win st="o/win/sub_win.png" ]

[if exp="f.act<=4 && f.shop==1 && f.first_wear==1" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" width=461 x="888" y="275" ]
[elsif exp="f.act<=4 && f.shop==1" ]
[button storage="intro/event.ks" target="*shop_second" graphic="s_menu/shop.png" width=461 x="888" y="275" ]
[elsif exp="f.act<=4" ]
[button storage="intro/event.ks" target="*shop_first" graphic="s_menu/road_s.png" width=461 x="888" y="275" ][endif]

[if exp="f.act==3 && f.cafe==1 || f.act==4 && f.cafe==1" ]
[button storage="act_with/cafe.ks" target="*cafe" graphic="s_menu/cafe.png" width=461 x="888" y="195" ]
[elsif exp="f.act==3 || f.act==4" ]
[button storage="intro/event.ks" target="*cafe_first" graphic="s_menu/road_l.png" width=461 x="888" y="195" ][endif]

[button target="*hiroba" graphic="s_menu/stay_hiroba.png" width=461 x="888" y="115" ]
[button target="*back_home" graphic="s_menu/go_home.png" width=461 x="888" y="345" ]
[cancelskip][s]

*back_home
[cm][_]（今天就只買生活必需品然後回去吧…。[p_]
[stop_bgm][jump storage="act_with/go_out.ks" target="*after_town" ]


*hiroba
[cm][bgm_ST][set_stand][f/nt][bg_town][set_weather][show_stand]
[act_win_stand]
[_]（在這裡稍微休息一下吧。[lr]
（坐在噴水池的邊緣向希露薇招手讓她坐在我身邊。[p]

*re
[cm][eval exp="f.last_act='hiroba'" ][mod_win st="00.png" ]
[eval exp="f.hiroba_t=f.hiroba_t+1" ]
[if exp="f.step==3" ][jump storage="intro/step3.ks" target="*hiroba_lead3" ]
[elsif exp="f.step==4" ][jump storage="intro/step4.ks" target="*hiroba_lead4" ]
[else][jump storage="intro/step5.ks" target="*hiroba_lead5" ][endif]


*choice
[cm][eval exp="f.act=f.act+1" ][eval exp="f.love=f.love+1" ]
[_][if exp="f.act==6" ][set_weather]
（天色漸漸的暗了下來。[p_][jump target="*go_home" ][endif]

[set_time][set_weather]
[if exp="f.repeat_mode==1 && f.last_act=='hiroba'" ][jump target="*re" ][endif]

[mod_win st="o/win/sub_win.png" ]
[if exp="f.act<=4 && f.shop==1 && f.first_wear==1" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" width=461 x="888" y="275" ]
[elsif exp="f.act<=4 && f.shop==1" ]
[button storage="intro/event.ks" target="*shop_second" graphic="s_menu/shop.png" width=461 x="888" y="275" ]
[elsif exp="f.act<=4" ]
[button storage="intro/event.ks" target="*shop_first" graphic="s_menu/road_s.png" width=461 x="888" y="275" ][endif]

[if exp="f.act==3 && f.cafe==1 || f.act==4 && f.cafe==1" ]
[button storage="act_with/cafe.ks" target="*cafe" graphic="s_menu/cafe.png" width=461 x="888" y="195" ]
[elsif exp="f.act==3 || f.act==4" ]
[button storage="intro/event.ks" target="*cafe_first" graphic="s_menu/road_l.png" width=461 x="888" y="195" ][endif]

[button target="*re" graphic="s_menu/stay_hiroba.png" width=461 x="888" y="115" ]
[button target="*go_home" graphic="s_menu/go_home.png" width=461 x="888" y="345" ]
[cancelskip][s]


*go_home
[cm][mod_win st="00.png" ]
[_]（今天就到此為止吧。[p_]
[eval exp="f.out=1"][black]…[p_][bgm_SG]
[return_bace]

