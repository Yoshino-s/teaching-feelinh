;;
*step4
[eval exp="f.step=4" ][eval exp="f.act='non'" ][eval exp="f.nade=1" ]
[eval exp="f.talk=1" ][eval exp="f.intro_flag='lost'" ][eval exp="f.day=f.day+1" ][bgm_SG]

*show_bace
[cm][clearstack][set_sit][f/s_nt][set_time_r][show_sit][show_repeat_role_room]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG]
[syl][f/s]早上好、主人。[p_][endif]
[_]

*before_menu
[set_time_r][if exp="f.act>=7" ][jump target="*night" ][endif]
[show_button_intro]

*night
[eval exp="f.last_act='awake'" ][eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][eval exp="f.out=0" ]
[stop_bgm][f/nt][_]…。[p_]（已經晚上了…準備睡覺吧。[p_]

[if exp="f.intro_flag=='bed'" ][jump storage="intro/event.ks" target="*remind" ]
[elsif exp="f.day>=28 && f.intro_flag=='trust'" ][jump storage="intro/event.ks" target="*to_step5" ]
[elsif exp="f.day>=25 && f.intro_flag=='lost'" ][jump storage="intro/event.ks" target="*ask" ]

[else][syl][f/s]晩安。[p_]
[_][black]…。[p_]
[jump target="*show_bace" ][endif]

;;トーク
*talk_lead4
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[elsif exp="f.talk==9" ][jump target="*talk9" ][elsif exp="f.talk==10" ][jump target="*talk10" ]
[elsif exp="f.talk==11" ][jump target="*talk11" ][elsif exp="f.talk==12" ][jump target="*talk12" ]
[elsif exp="f.talk==13" ][jump target="*talk13" ][elsif exp="f.talk==14" ][jump target="*talk14" ]
[elsif exp="f.talk==15" ][jump target="*talk15" ][elsif exp="f.talk==16" ][eval exp="f.talk=0" ][jump target="*talk16" ][endif]

*talk1
[syl][f/nt]…。[p_]
[_]（陷入某种沉思的表情。[p_][after_talk]
*talk2
[syl][f/]…主人？[lr_]
[f/s]你怎麼了？[p_]
[_]（與之前相比感覺到語調的柔和度。[p_][after_talk]
*talk3
[syl][f/cl]和疼痛相比感冒明明不算什麽的、[lr_]
[f/clc]但是我一個人睡的話、會有些膽怯啊。[p_]
[f/sc]但是主人在我身邊、總感覺能有些安心了呢。[p_][after_talk]
*talk4
[syl][f/cl]主人…大概、你很「溫柔」吧？[p_][after_talk]
*talk5
[syl][f/]真不愧是醫生呢。[lr_]
[f/scl]能得到主人的看護、我真的很高興。[p_]
[f/s]無論是身…還是心。[p_][after_talk]
*talk6
[syl][f/]以前身體剛開始不舒服的時候。[p_]
[f/cl]沒有吃過什麽藥、也沒有好好的有休息過一次、[lr_]
[f/clc]一想到治病就會被嚴厲的責備、病情就會變得更嚴重吧…。[p_][after_talk]
*talk7
[syl][f/]我會注意不會讓我身體變壞的。[lr_]
[f/sc]而且也是為了不給主人添麻煩。[p_][after_talk]
*talk8
[syl][f/c]那個、主人…。[lr_]
[f/re]你不會、拋棄我吧？[p_]
[f/clc]…很抱歉、請忘記這些話。[p_][after_talk]
*talk9
[syl][f/c]主人你為什麽這麽溫柔呢？[p_][after_talk]
*talk10
[syl][f/c]主人你已經對我有印象了吧？[p_][after_talk]
*talk11
[syl][f/clc]如果抱有積極的希望的話、[lr_]
[f/re]無論是痛苦還是悲傷、都會是開心的事情吧？[p_]
[f/clc]可是…。[p_][after_talk]
*talk12
[syl][f/c]主人、你不會對我做…過分的事情吧？[p_][after_talk]
*talk13
[syl][f/clc]我可以、相信主人你嗎…。[p_][after_talk]
*talk14
[syl][f/clc]我、應該怎麽做才好呢…。[p_][after_talk]
*talk15
[syl][f/c]能得到這麽漂亮的衣服…。[lr_]
[f/re]簡直要忘掉我是奴隸這件事情呢…。[p_][after_talk]
*talk16
[syl][f/clc]主人是不是對我太過溫柔了啊…。[p_][after_talk]

;;撫で
*nade_lead4
[if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][jump target="*nade8" ]
[elsif exp="f.nade==9" ][jump target="*nade9" ][elsif exp="f.nade==10" ][jump target="*nade10" ]
[elsif exp="f.nade==11" ][jump target="*nade11" ][elsif exp="f.nade==12" ][jump target="*nade12" ]
[elsif exp="f.nade==13" ][jump target="*nade13" ][elsif exp="f.nade==14" ][eval exp="f.nade=0" ][jump target="*nade14" ][endif]

*nade1
[f/s_nt][show_nade][syl]…？[p_][after_nade]
*nade2
[f/s_nt][show_nade][syl]…。[p_]
[_]（之前感覺到的警戒心現在已經沒有了。[p_][after_nade]
*nade3　
[f/nt][show_nade][syl]…。[p_]
[f/sclc]我似乎、習慣了這裏呢。[p_][after_nade]
*nade4
[f/nt][show_nade][syl]…。[p_]
[f/clp]那個、感覺不錯呢…。[p_][after_nade]
*nade5
[f/nt][show_nade][syl]…。[p_]
[f/re]…那個、[lr_]
[f/s]非常感謝。[p_][after_nade]
*nade6
[f/cl_nt][show_nade][syl]…。[p_]
[f/cl]主人你做的事情、我非常喜歡。[p_]
[f/s]…我也、喜歡呢。[p_][after_nade]
*nade7
[f/cl_nt][show_nade][syl]…。[p_]
[f/clp]我似乎冷靜了一些。[p_][after_nade]
*nade8
[f/nt][show_nade][syl]…。[p_]
[f/sc]主人？[p_][after_nade]
*nade9
[f/nt][show_nade][syl]…。[p_]
[f/sc]主人你…好奇心非常強啊。[p_][after_nade]
*nade10
[f/nt][show_nade][syl]…。[p_]
[f/sc]對我做這樣的事情的話、主人覺得我有用嗎？[p_][after_nade]
*nade11
[f/nt][show_nade][syl]…。[p_]
[f/cl]我應該做什麽樣的反應才能讓主人開心呢？[p_][after_nade]
*nade12
[f/nt][show_nade][syl]…。[p_]
[f/re]只是這樣的話…。[lr_]
[f/cl]我就很…開心了。[p_][after_nade]
*nade13
[f/nt][show_nade][syl]…。[p_]
[f/cl]主人真溫柔呢。[p_][after_nade]
*nade14
[f/sclp][show_nade]
[syl]呼呼。[p_]
[f/p]啊…那個。[lr_]
[f/clp]……沒什麽。[p_][after_nade]

;;広場
*hiroba_lead4
[cm][syl][if exp="f.hiroba_t==1" ][jump target="*hiroba1" ][elsif exp="f.hiroba_t==2" ][jump target="*hiroba2" ]
[elsif exp="f.hiroba_t==3" ][jump target="*hiroba3" ][elsif exp="f.hiroba_t==4" ][jump target="*hiroba4" ]
[elsif exp="f.hiroba_t==5" ][eval exp="f.hiroba_t=0" ][jump target="*hiroba5" ][endif]

*hiroba1
[f/nt]…。[p_]
[_]（希露薇好像在擔心著什麽一直發呆。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba2
[f/nt]…怎麼了嗎？[p_]
[_]（頭轉過來的希露薇對上眼。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba3
[f/nt][_]（希露薇眺望著這個城市。[p_]
那個表情比之前安穩了許多。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba4
[f/cl_nt][_]（雖然比起在家的時候她的樣子有點不安、[r]
也不像是受到了什麽拘束。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba5
[f/nt][_]（雖然有時在環顧四周、但是不怎麼抬頭。[lr_]
好像在逃避著整個城市的人的視線。[p_]
[jump storage="intro/town.ks" target="*choice" ]
