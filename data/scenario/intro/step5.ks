;;
*a
[eval exp="f.step=5" ][eval exp="f.act='non'" ][eval exp="f.nade=1" ]
[eval exp="f.talk=1" ][eval exp="f.day=f.day+1" ]

*show_bace
[cm][clearstack][set_sit][f/s_nt][set_time_r][show_sit][show_repeat_role_room]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG]
[syl][f/s]早上好、主人。[p_][endif]
[_]

*before_menu
[if exp="f.act>=7" ][jump target="*night" ][endif]
[set_time_r][show_button_intro]

*night
[eval exp="f.last_act='awake'" ][eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][eval exp="f.out=0" ][stop_bgm]

[if exp="f.day>=35" ][jump storage="intro/event.ks" target="*to_step6" ]
[else][_]…。[p_]（已經到晚上了…準備睡覺吧。[p_][syl][f/s]晚安、主人。[p_]
[_][black]…。[p_]
[jump target="*show_bace" ][endif]

;;トーク
*talk_lead5
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[elsif exp="f.talk==9" ][jump target="*talk9" ][elsif exp="f.talk==10" ][jump target="*talk10" ]
[elsif exp="f.talk==11" ][jump target="*talk11" ][elsif exp="f.talk==12" ][jump target="*talk12" ]
[elsif exp="f.talk==13" ][eval exp="f.talk=0" ][jump target="*talk13" ][endif]

*talk1
[syl][f/nt]…。[p_]
[f/s_nt]…？[p_]
[_]（希露薇的臉上浮現出了微笑。[p_][after_talk]
*talk2
[syl][f/s]…主人？[p_]
[_]（和以前相比她似乎開朗了很多。[p_][after_talk]
*talk3
[syl][f/cl]主人你無論我哭或笑、都不會對我做過分的事情呢。[p_][after_talk]
*talk4
[syl][f/s]主人、你能教我做飯嗎？[lr_]
[f/re]我也想為主人準備飯食…。[p_][after_talk]
*talk5
[syl][f/scl]]能被主人做收養、我真的是太幸運了。[lr_][after_talk]
*talk6
[syl][f/cl]我是奴隸這件事、有時甚至會忘記呢。[p_]
[f/c]…我可以忘記這件事嗎？[p_][after_talk]
*talk7
[syl][f/clc]主人、請你務必不要拋棄我。[p_][after_talk]
*talk8
[syl][f/cl]你能給我準備美味的飯菜、[lr_]
[f/re]給我買很棒的衣服、[lr_]
[f/re]在我感冒的時候帶我去看病。[p_]
[f/s]實在是太感謝了。[lr_]
[f/sc]真的、太感謝了。[p_][after_talk]
*talk9
[syl][f/scl]只要有主人的「溫柔」。現在我已經什麽都不怕了。[p_][after_talk]
*talk10
[syl][f/p]那個、我能坐的離你近一些嗎？[p_][after_talk]
*talk11
[syl][f/clc]以前的毆打真的很痛。[lr_]
[f/re]我不想再有那種事了。[p_][after_talk]
*talk12
[syl][f/c]當我開心的時候、我總想笑出來呢？[lr_]
[f/sc]你能允許我做那種事嗎？[p_][after_talk]
*talk13
[syl][f/s]掃除以外的家務我也想為主人幫忙。[lr_]
[f/re]我要盡力為主人做一些事情。[p_][after_talk]

;;撫で
*nade_lead5
[if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][jump target="*nade8" ]
[elsif exp="f.nade==9" ][jump target="*nade9" ][elsif exp="f.nade==10" ][jump target="*nade10" ]
[elsif exp="f.nade==11" ][jump target="*nade11" ][elsif exp="f.nade==12" ][jump target="*nade12" ]
[elsif exp="f.nade==13" ][eval exp="f.nade=0" ][jump target="*nade13" ][endif]

*nade1
[f/scl_nt][show_nade][syl]…。[p_]
[_]（她看起來很放鬆呢。[p_][after_nade]
*nade2
[f/scl_nt][show_nade][syl]…。[p_]
[f/sc]我已經、很習慣這裡了。[p_][after_nade]
*nade3　
[f/cl_nt][show_nade][syl]…。[p_]
[f/sc]你可以再繼續做這種事嗎？[p_][after_nade]
*nade4
[f/s_nt][show_nade][syl]…。[p_]
[f/re]我已經、什麽都不怕了…。[p_][after_nade]
*nade5
[f/s_nt][show_nade][syl]…。[p_]
[f/re]總感覺、很安心。[p_][after_nade]
*nade6
[f/scl_nt][show_nade][syl]…。[p_]
[f/s]這種感覺…。[r]好想讓主人也感覺到。[p_][after_nade]
*nade7
[f/s_nt][show_nade][syl]…。[p_]
[f/re]主人的手、好大呢。[p_][after_nade]
*nade8
[f/scl_nt][show_nade][syl]…。[p_]
[f/s]我第一次感覺到這種溫暖。[p_][after_nade]
*nade9
[f/scl_nt][show_nade][syl]…。[p_]
[f/p]和別人接觸、原來是這種感覺嗎。[lr_]
[f/c]明明我還在為一直以來的疼痛害怕…。[p_][after_nade]
*nade10
[f/scl_nt][show_nade][syl]…。[p_]
[f/s]好困啊。[p_][after_nade]
*nade11
[f/s_nt][show_nade][syl]…。[p_]
[f/re]被做這種事。我很…喜歡。[p_][after_nade]
*nade12
[f/scl_nt][show_nade][syl]…。[p_]
[f/s]好溫柔、好暖…。[p_][after_nade]
*nade13
[f/s_nt][show_nade][syl]…。[p_]
[f/re]感覺非常的輕柔呢…。[p_][after_nade]

;;廣場
*hiroba_lead5
[cm][syl][if exp="f.hiroba_t==1" ][jump target="*hiroba1" ][elsif exp="f.hiroba_t==2" ][jump target="*hiroba2" ]
[elsif exp="f.hiroba_t==3" ][jump target="*hiroba3" ][elsif exp="f.hiroba_t==4" ][jump target="*hiroba4" ]
[elsif exp="f.hiroba_t==5" ][jump target="*hiroba5" ][elsif exp="f.hiroba_t==6" ][eval exp="f.hiroba_t=0" ][jump target="*hiroba6" ][endif]

*hiroba1
[f/s_nt]…。[p_]
[_]（比起之前希露薇坐的位置離我更近了。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba2
[f/]…在我來之前也[name]坐得這麼近嗎？[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba3
[_][f/nt]（一下子跟希露薇對上眼。[p_]
[syl][f/s_nt]…？[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba4
[_]（希露薇眺望著流雲。[p_]
[f/s]…這是能夠很好的眺望天空的廣場。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba5
[f/s_nt]…[p_]
[_]（希露薇佷鎮定地望著街道。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba6
[f/s]在擁擠的人群中[name]只要在你身邊的話[r]
就不會感到那麼的不安。[p_]
[jump storage="intro/town.ks" target="*choice" ]





