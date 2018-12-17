;;
*step3
[eval exp="f.step=3" ][eval exp="f.act=2" ][eval exp="f.nade=1" ]
[eval exp="f.talk=1" ][eval exp="f.out=1" ][eval exp="f.day=f.day+1" ][bgm_SG]

*show_bace
[cm][clearstack][set_sit][f/nt][set_time_r][show_sit][show_repeat_role_room]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG][syl][f/]…早上好、主人。[p_][endif]
[_]

*before_menu
[if exp="f.act>=7" ][jump target="*night" ][endif]
[set_time_r][show_button_intro]

*night
[eval exp="f.last_act='awake'" ]
[eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][eval exp="f.out=0" ][stop_bgm]
[_]…。[p_]（已經到晚上了…準備睡覺吧。[p_][syl][f/]…晚安。[p_]
[if exp="f.day>=16" ][jump storage="intro/event.ks" target="*to_step4" ][else]
[_][black]…。[p_][jump target="*show_bace" ][endif]

;;トーク
*talk_lead3
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[elsif exp="f.talk==9" ][jump target="*talk9" ][elsif exp="f.talk==10" ][jump target="*talk10" ]
[elsif exp="f.talk==11" ][jump target="*talk11" ][elsif exp="f.talk==12" ][jump target="*talk12" ]
[elsif exp="f.talk==13" ][jump target="*talk13" ][elsif exp="f.talk==14" ][eval exp="f.talk=0" ][jump target="*talk14" ]
[endif]

*talk1
[if exp="f.intro_flag=='alone'" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/nt]…。[p_]
[_]（希露薇看著窗外。[lr_]
似乎是在想要外出呢。[p_][after_talk]
*talk2
[syl][f/nt]…？[p_]
（雖然把視線投向了這裡、但還是什麽都沒說。[p_][after_talk]
*talk3
[syl][f/]主人是醫生大人吧。[p_]
[f/re]…是鄉村醫生？[lr_]
[f/re]有什麽區別嗎？[p_][after_talk]
*talk4
[syl][f/cl]主人…大概、是很「溫柔」的人吧？[p_][after_talk]
*talk5
[if exp="f.shop==0" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/]你還會打算帶我出去買東西嗎？[p_][after_talk]
*talk6
[if exp="f.intro_flag=='alone'" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/]那樣的外出還是第一次呢、[lr_]
[f/sclc]大概…很開心、我覺得。[p_][after_talk]
*talk7
[syl][f/c]…為什麽主人願意接收我呢？[p_][after_talk]
*talk8
[syl][f/]有什麽能讓我幫忙的事情嗎？[p_][after_talk]
*talk9
[syl][f/cl]主人你能接受我…非常…感謝。[lr_]
[f/c]但是、這裏的生活…有些可怕呢…。[p_][after_talk]
*talk10
[syl][f/clc]心什麽的、要是沒有就好了…[p_][after_talk]
*talk11
[if exp="f.sand==1" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/s]我、喜歡甜味。[lr_]
[f/cl]因為一直以來沒怎麽嘗過這種味道呢。[p_][after_talk]
*talk12
[syl][f/]我沒怎麽見過和主人工作相關以外的人呢。[p_][after_talk]
*talk13
[if exp="f.intro_flag=='alone'"][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/c]能讓我出去看看外面的人嗎？[p_][after_talk]
*talk14
[syl][f/cl]…果然、就算是醫生也沒法消除這個傷痕呢。[p_][after_talk]

;;撫で
*nade_lead3
[if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][jump target="*nade8" ]
[elsif exp="f.nade==9" ][jump target="*nade9" ][elsif exp="f.nade==10" ][jump target="*nade10" ]
[elsif exp="f.nade==11" ][jump target="*nade11" ][elsif exp="f.nade==12" ][jump target="*nade12" ]
[elsif exp="f.nade==13" ][jump target="*nade13" ][elsif exp="f.nade==14" ][eval exp="f.nade=0" ][jump target="*nade14" ][endif]

*nade1
[f/nt][show_nade][syl]…。[p_]
[_]（通過頭髮我感覺到了希露薇的體溫。[p_][after_nade]
*nade2
[f/cl_nt][show_nade][syl]…。[p_]
[_]（希露薇慢慢的閉上了眼睛。[p_][after_nade]
*nade3　
[f/nt][show_nade][syl]…。[p_]
[f/re]撫摸的感覺很好嗎？[lr_]
[f/re]雖然我不認為頭髮是那麽漂亮的東西…。[p_][after_nade]
*nade4
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]說不定、我已經稍微習慣了呢。[p_][after_nade]
*nade5
[f/nt][show_nade][syl]…。[p_]
[f/cl]這時候我應該有反應了吧…。[p_][after_nade]
*nade6
[f/nt][show_nade][syl]…。[p_]
[f/re]…你很好奇呢。[p_][after_nade]
*nade7
[f/nt][show_nade][syl]…。[p_]
[f/re]做這樣的事情、說明我在主人心裏已經有印象了嗎？[p_][after_nade]
*nade8
[f/nt][show_nade][syl]…。[p_]
[f/clc]稍微、有點困了呢。[p_][after_nade]
*nade9
[f/nt][show_nade][syl]…。[p_]
[f/c]我應該有怎麽樣的反應呢…。[p_][after_nade]
*nade10
[f/c_nt][show_nade][syl]…。[p_]
[f/c]主人？[p_][after_nade]
*nade11
[f/cl_nt][show_nade][syl]…。[p_]
[f/]這就是所謂的「溫柔」嗎？[p_][after_nade]
*nade12
[f/nt][show_nade][syl]…。[p_]
[f/cl]有一種難以言喻的舒適呢。[p_][after_nade]
*nade13
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]…我說不定不討厭這種事呢。[p_][after_nade]
*nade14
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]「非常感謝」、[lr_]
[f/sc]我應該這樣說嗎？[p_][after_nade]

;;広場
*hiroba_lead3
[cm][syl][if exp="f.hiroba_t==1" ][jump target="*hiroba1" ][elsif exp="f.hiroba_t==2" ][jump target="*hiroba2" ]
[elsif exp="f.hiroba_t==3" ][jump target="*hiroba3" ][elsif exp="f.hiroba_t==4" ][jump target="*hiroba4" ]
[elsif exp="f.hiroba_t==5" ][eval exp="f.hiroba_t=0" ][jump target="*hiroba5" ][endif]

*hiroba1
[f/nt]…。[p_]
[_]（希露薇什麽都沒說靜靜的呆著。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba2
[f/cl_nt]…。[p_]
[_]（沈一直很安靜希露薇好像哪裡不舒服的樣子。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba3
[f/c]…那個、你的要緊事辦完了嗎？[p_]
[_]（忍無可忍的沉默讓希露薇喃喃自語。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba4
[f/nt][_]（希露薇眺望著這個城市。[p_]
沒辦法從她的表情裡看出她在想什麽。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba5
[f/nt][_]（雖然希露薇不說話的樣子和在家的時候一樣、[r]
但是看得出來她好像很不安。[p_]
[jump storage="intro/town.ks" target="*choice" ]

*hiroba6




