;;
*step2
[eval exp="f.step=2" ][eval exp="f.act='non'" ]
[eval exp="f.nade=1" ][eval exp="f.talk=1" ][eval exp="f.day=f.day+1" ][bgm_SG]

*show_bace
[cm][clearstack][set_sit][f/r_nt][set_time_r][show_sit][show_repeat_role_room]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG][syl][f/cl]…早上好、主人。[p_][endif]
[_]

*before_menu
[if exp="f.act>=7" ][jump target="*night" ][endif]
[set_time_r][show_button_intro]

*night
[eval exp="f.last_act='awake'" ][eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][stop_bgm]
[_][f/r_nt]…。[p_]（已經到晚上了…準備睡覺吧。[p_]

[if exp="f.day>=9" ][syl][f/r]…晚安。[p_][jump storage="intro/event.ks" target="*to_step3" ]

[else][syl][f/r]…晚安。[p_]
[_][black]…。[p_][jump target="*show_bace" ][endif]

;;トーク
*talk_lead2
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[elsif exp="f.talk==9" ][jump target="*talk9" ][elsif exp="f.talk==10" ][jump target="*talk10" ]
[elsif exp="f.talk==11" ][jump target="*talk11" ][else][eval exp="f.talk=0" ][jump target="*talk12" ][endif]

*talk1
[f/a_r_nt][syl]…。[p_]
[_]（希露薇盯著空中。[p_][after_talk]
*talk2
[syl][f/r]…有什麽事嗎？[p_]
[_]（她似乎在注意著我。[p_][after_talk]
*talk3
[syl][f/cl]疼痛什麽的…只會在最初有感覺而已、現在我已經習慣了。[p_][after_talk]
*talk4
[syl][f/cr]那個、什麽都不做嗎…？[p_][after_talk]
*talk5
[syl][f/r]只要你發出命令、無論是什麽事情我都會盡力去做的…。[p_][after_talk]
*talk6
[syl][f/cl]一切如主人你所願。[lr_]
[f/clc]因為我是奴隸。[p_][after_talk]
*talk7
[syl][f/r]面無表情…嗎？[p_]
[f/cl]很抱歉、我沒有做表情的習慣。[p_][after_talk]
*talk8
[if exp="f.intro_flag=='pet'" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[f/r]主人準備的食物、真的是很漂亮呢。[p_]
[_]（是和麵包和水相比的吧。[p_][after_talk]
*talk9
[syl][f/cl]心什麽的、要是沒有就好了…。[p_][after_talk]
*talk10
[syl][f/cl]主人的想法、我只有接受。[lr_]
[f/re]我明白我這個奴隸沒有拒絕的權力。[p_][after_talk]
*talk11
[syl][f/r]你不會像我的前主人一樣對待我嗎？[p_][after_talk]
*talk12
[syl][f/cl]因為我無法做重體力活、所以被打到慘叫就是我的工作。[p_][after_talk]

;;撫で
*nade_lead2
[if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][jump target="*nade8" ]
[elsif exp="f.nade==9" ][jump target="*nade9" ][elsif exp="f.nade==10" ][jump target="*nade10" ]
[elsif exp="f.nade==11" ][jump target="*nade11" ][elsif exp="f.nade==12" ][eval exp="f.nade=0" ][jump target="*nade12" ][endif]

*nade1
[f/clc_nt][show_nade][syl]…。[p_]
[f/cr]你在撫摸嗎？[lr_]
[f/re]我不是很理解呢…。[p_][after_nade]
*nade2
[f/cl_nt][show_nade][syl]…。[p_]
[_]（手上傳來了頭髮軟軟的觸感。）[p_][after_nade]
*nade3
[f/cr_nt][show_nade][syl]…？[p_]
[_]（她的表情很困惑呢。[p_][after_nade]
*nade4
[f/a_r_nt][show_nade][syl]…。[p_]
[f/r]…這個、有什麽含義嗎？[p_][after_nade]
*nade5
[f/a_r_nt][show_nade][syl]…。[p_]
[f/cr]這個、我不認為有什麽可以高興的呢…。[p_][after_nade]
*nade6
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]如果主人想做的話…請你做吧。[p_][after_nade]
*nade7
[f/cr_nt][show_nade][syl]…。[p_]
[f/re]…你很開心嗎？[p_][after_nade]
*nade8
[f/a_r_nt][show_nade][syl]…。[p_]
[f/r]只要撫摸…就能讓你開心嗎？[p_][after_nade]
*nade9
[f/clc_nt][show_nade][syl]…。[p_]
[f/re]我、不明白呢…。[p_][after_nade]
*nade10
[f/a_r_nt][show_nade][syl]…。[p_]
[_]（沒什麽反應。[p_][after_nade]
*nade11
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]並不是討厭…。[p_][after_nade]
*nade12
[f/cl_nt][show_nade][syl]…。[p_]
[f/cr]你沒有什麽讓我來做的嗎？[p_][after_nade]



