;;
*step1
[set_sit][f/a_r_nt][show_sit][show_repeat_role_room][bgm_SG][_]（啊、怎麼了嗎…。[p_][jump target="*before_menu" ]

*show_bace
[cm][clearstack][set_sit][f/a_r_nt][set_time_r][show_sit][show_repeat_role_room]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG][syl][f/cl]…早上好、主人。[p_][endif]
[_]

*before_menu
[if exp="f.act>=7" ][jump target="*night" ][endif]
[set_time_r][show_button_intro]

*night
[eval exp="f.last_act='awake'" ][eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][stop_bgm]
[if exp="f.intro_flag==0" ][jump storage="intro/event.ks" target="*feed" ][endif]
[if exp="f.day>=4" ][jump storage="intro/event.ks" target="*to_next" ][endif]

[f/a_r_nt][_]…。[p_]（已經到晚上了…準備睡覺吧。[p_]
[syl][f/r]…晚安。[p_][_][black]…。[p_]
[jump target="*show_bace" ]

;;トーク
*talk_lead1
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[else][eval exp="f.talk=0" ][jump target="*talk9" ][endif]

*talk1
[syl]…。[p_]
[_]（希露薇什麽都沒有做只是坐在那裡。[p_][after_talk]
*talk2
[syl][f/r]…什麽？[p_]
[_]（她在窺探著這裏。[p_][after_talk]
*talk3
[_]（白皙肌膚上赤紅的疤痕映入眼簾。[p_]
[syl][f/r]這個傷痕嗎？[lr_]
[f/cl]這已經是以前的事情了、現在不會痛了。[p_]
[_]（仔細看這並不是新鮮的傷所以沒有纏繃帶的必要。[p_][after_talk]
*talk4
[syl][f/r]要會話嗎？[lr_]
[f/a_r]我不是很明白那種事…。[p_]
[_]（她似乎不打算把對話進行下去。[p_][after_talk]
*talk5
[_]（她以前的生活究竟是什麽樣的呢。[p_]
[syl][f/r]我在以前的主人那裏的時候嗎？[lr_]
[f/cl]每天都要被鞭打、還有各種各樣的虐待。[p_][after_talk]
*talk6
[syl][f/r]沒有可以依靠的親屬、之前飼養我的主人對也我很差。[lr_]
[f/cl]特別的事情…？[p_]
[_]（沒有什麽其它話題嗎。[p_][after_talk]
*talk7
[_]（我觀察著希露薇的疤痕…。[p_]
[syl][f/r]皮膚上的疤痕是被塗上能腐蝕肌膚的特殊藥品後留下的。[lr_]
[f/clc]我、不太想回憶那種事。[p_][after_talk]
*talk8
[syl][f/cl]我雖然很討厭疼痛的事…。[lr_]
[f/re]但是我無法做出違抗主人的事。[p_]
[_]（她似乎並沒有厭惡我。[p_][after_talk]
*talk9
[_][f/a_r_nt]（她纖弱嬌小的身體穿著極其破爛的布衣。[lr_]
頭髮和瞳孔都透露著冷靜。[p_]
[syl][f/r]…怎麽了嗎？[p_][after_talk]

;;撫で
*nade_lead1
[_]
[if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][eval exp="f.nade=1" ][jump target="*nade8" ][endif]

*nade1
[f/a_r_nt][show_nade][_]
（我試著撫摸希露薇的頭頂。[p_]
[syl][f/r]…啊那個、做什麽？[p_]
[f/re]在摸頭嗎？[lr_]
[f/re]雖然的確是那樣…。[p_][after_nade]
*nade2
[f/a_cr_nt][show_nade]
[syl]…？[p_]
[_]（她看起來很困惑。[p_][after_nade]
*nade3
[f/cl_nt][show_nade]
[syl]…。[p_]
[_]（她沒什麽反應。[p_][after_nade]
*nade4
[f/cl_nt][show_nade]
[syl]…。[p_]
[f/r]…這有什麽含義嗎？[p_][after_nade]
*nade5
[f/cr_nt][show_nade]
[syl]…。[p_]
[f/re]我、不太理解呢。[p_][after_nade]
*nade6
[f/r_nt][show_nade]
[syl]…。[p_]
[f/re]…你很開心…嗎？[p_][after_nade]
*nade7
[f/r_nt][show_nade]
[syl]…。[p_]
[_]（手上傳來了她頭髮柔軟的感覺。[p_][after_nade]
*nade8
[f/cl_nt][show_nade]
[syl]…。[p_]
[f/re]請、隨你喜歡吧…。[p_][after_nade]


