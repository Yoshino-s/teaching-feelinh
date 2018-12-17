;;
*work
[cm][f/ss]
[if exp="f.dress>=51 && f.dress<=53 " ]好、我明白了。[p_]
[else]好、那就換衣服了。[p_][endif]

[mod_win st="00.png" ]
[set_work][f/nt][show_work][set_time][show_repeat_role_work]
[chara_show name="window" time="0" wait="false"  left="886" top="0" zindex=22 ]
[chara_show name="time" time="1" wait="false" left="887" top="0" ]

[eval exp="f.work_c=1" ]
[syl][f/s]努力協助你的工作。[p_]
[_]（希露薇做助手帮我处理简单的工作。[p_]

*re
[cm][eval exp="f.last_act='work'" ]
[mod_win st="00.png" ]
[random_15]
[jump target="*talk" ]

*choice
[eval exp="f.act=f.act+1" ][eval exp="f.love=f.love+1" ]
[_][if exp="f.act>=6" ][jump target="*stop" ][endif]
[set_time]
[if exp="f.repeat_mode==1" ][jump target="*re" ][endif]
[mod_win st="o/win/sub_win_s.png" ]
[button target="*re" graphic="s_menu/conti.png" width=461 x="888" y="135" ]
[button target="*stop" graphic="s_menu/stop.png" width=461 x="888" y="225" ][s]

*talk
[cm]
[syl][if exp="f.r==1" ][jump target="*work1" ][elsif exp="f.r==2" ][jump target="*work2" ]
[elsif exp="f.r==3" ][jump target="*work3" ][elsif exp="f.r==4" ][jump target="*work4" ]
[elsif exp="f.r==5" ][jump target="*work5" ][elsif exp="f.r==6" ][jump target="*work6" ]
[elsif exp="f.r==7" ][jump target="*work7" ][elsif exp="f.r==8" ][jump target="*work8" ]
[elsif exp="f.r==9" ][jump target="*work9" ][elsif exp="f.r==10" ][jump target="*work10" ]
[elsif exp="f.r==11" ][jump target="*work11" ][elsif exp="f.r==12" ][jump target="*work12" ]
[elsif exp="f.r==13" ][jump target="*work13" ][elsif exp="f.r==14" ][jump target="*work14" ]
[elsif exp="f.r==15" ][jump target="*work15" ][elsif exp="f.r==16" ][jump target="*work16" ]
[elsif exp="f.r==17" ][jump target="*work17" ][elsif exp="f.r==18" ][jump target="*work18" ]
[elsif exp="f.r==19" ][jump target="*work19" ][elsif exp="f.r==20" ][jump target="*work20" ][endif]

*stop
[cm][_]（今天就到這裡了吧…。[p_]
[syl][f/]現在要回去了嗎？[p_]
[f/s]好。你也累了、[name]。[p_]
[black]
[if exp="f.mood=='calm'" ]
[elsif exp="f.sexless_c>=1 && f.lust>=200 && f.act>=6 || f.sexless_c>=1 && f.mood=='lust' && f.act>=6" ]
[jump storage="H/nurse.ks" target="*nurse" ][endif]
…[p_][return_bace]

;;トーク
*work1
[f/][name]、檔案应该放那裡？[p_]
[jump target="*choice" ]
*work2
[f/]雖說是工作、但也沒有那麼忙。[p_]
[f/s]這就是因為社會安定了啊。[p_]
[jump target="*choice" ]
*work3
[f/s]總有一天我會好好地記住了藥的調和比例的、[lr_]
[f/sp]為了能更好的做好助手的工作…。[p_]
[jump target="*choice" ]
*work4
[f/s]把架子稍微整理一下。[p_]
[f/]然后再固定倾斜的文件和医药包、以免改变顺序…。[p_]
[jump target="*choice" ]
*work5
[f/c]這個架子有點儿臟啊。[p_]
[f/s]請輕輕地打掃一下。[p_]
[jump target="*choice" ]
*work6
[f/s]今天確實是預約了檢查喲。[p_]
[f/]那個是病歷啊？…這個是？[p_]
[jump target="*choice" ]
*work7
[f/ss]我沒關係的、[r]
穿上這件衣服我就是你的助手爲你分享心情的。[p_]
[jump target="*choice" ]
*work8
[f/]…有什麼需要幫忙的嗎？[p_]
[jump target="*choice" ]
*work9
[f/]備用紗布可能不夠用了。[p_]
[f/s]今天再出去買一些吧。[p_]
[jump target="*choice" ]
*work10
[f/s]我、有幫到[name]忙的嗎？[p_]
[jump target="*choice" ]
*work11
[f/cl]今天沒有病人剩餘時間很多。[p_]
[jump target="*choice" ]
*work12
[f/c]嗯、當醫生、果然很辛苦啊…。[p_]
[_]（翻开医学书籍就露出了一脸难色。[lr_]
这些东西如果没有提前储备相关知识应该是读不懂的吧…。[p_]
[jump target="*choice" ]
*work13
[f/c]患者不多時、[name]一人就完成了所有工作嗎？[p_]
[f/sp]今後我會幫你的。[p_]
[jump target="*choice" ]
*work14
[f/]這個藥放在這個架子上好嗎？[p_]
[jump target="*choice" ]
*work15
[f/s]現在只能做雜物、[r]
但是我會努力成為你的左右手的。[p_]
[jump target="*choice" ]

