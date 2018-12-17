;;トーク後
*after_talk
[eval exp="f.act=f.act+1,f.last_act='talk'" ]
[if exp="f.step==6" ][eval exp="f.love=f.love+1" ][eval exp="f.daily_talk=f.daily_talk+1" ]
[elsif exp="f.step>=4" ][eval exp="f.love=f.love+1" ][eval exp="f.talk=f.talk+1" ]
[else][eval exp="f.talk=f.talk+1" ][endif][return_menu]

*after_touch
[cm][eval exp="f.act=f.act+1" ][return_bace]

;;撫で後
*after_nade
[eval exp="f.act=f.act+1,f.love=f.love+1,f.last_act='nade_conti'" ]
[set_time]
[if exp="f.step<=5" ][eval exp="f.nade=f.nade+1" ][endif]
[if exp="f.act>=7" ][jump target="*stop_nade" ][endif]
[if exp="f.step<=5" ][jump target="*nade1_5" ][else]
[eval exp="f.love=f.love+1,f.daily_nade=f.daily_nade+1" ][endif]

[if exp="f.nade_c==2 || f.nade_c==3" ][else][eval exp="f.nade_c=1" ][endif]
[if exp="f.repeat_mode==1 && f.nade_c==1" ][jump target="*nade_continue_" ]
[elsif exp="f.repeat_mode==1 && f.nade_c==2" ][jump target="*nade_continue2_" ]
[elsif exp="f.repeat_mode==1 && f.nade_c==3" ][jump target="*nade_continue3_" ][endif]

[mod_win st="o/win/sub_win.png" ]
[if exp="f.nade_c==1" ]
[button target="*nade_continue_" graphic="s_menu/conti.png" width=461 x="0" y="118" ][else]
[button target="*nade_continue" graphic="s_menu/head.png" width=461 x="0" y="118" ][endif]
[if exp="f.nade_c==2" ]
[button target="*nade_continue2_" graphic="s_menu/conti.png" width=461 x="0" y="198" ]
[elsif exp="f.love>=200" ]
[button target="*nade_continue2" graphic="s_menu/cheek.png" width=461 x="0" y="198" ][endif]
[if exp="f.nade_c==3" ]
[button target="*nade_continue3_" graphic="s_menu/conti.png" width=461 x="0" y="278" ]
[elsif exp="f.love>=500 && f.lust>=300" ]
[button target="*nade_continue3" graphic="s_menu/mouth.png" width=461 x="0" y="278" ][endif]
[button target="*stop_nade" graphic="s_menu/stop.png" width=461 x="0" y="358" ][s]

*nade1_5
[cm][if exp="f.repeat_mode==1" ][jump target="*nade_continue_" ][endif]
[mod_win st="o/win/sub_win.png" ]
[button target="*nade_continue_" graphic="s_menu/conti.png" width=461 x="0" y="198" ]
[button target="*stop_nade" graphic="s_menu/stop.png" width=461 x="0" y="278" ][s]

*nade_continue
[cm][mod_win st="00.png" ]
[_]（伸手撫摸著希露薇柔軟的秀髮。[p]

*nade_continue_
[cm][mod_win st="00.png" ]
[eval exp="f.nade_conti=1" ][eval exp="f.nade_c=1" ]
[chara_mod name="hand_R" time="200" storage="o/hand/m-n-hand.png" ]
[jump target="*nade" ]

*nade_continue2
[cm][mod_win st="00.png" ]
[_]（手接觸著希露薇光滑的臉頰感受著溫暖的觸感。[p]
*nade_continue2_
[cm][mod_win st="00.png" ]
[eval exp="f.nade_conti=1,f.nade_c=2" ]
[chara_mod name="hand_R" time="200" storage="o/hand/m-n-hand-.png" ]
[jump target="*nade6b" ]
*nade_continue3
[cm][mod_win st="00.png" ]
[eval exp="f.nade_conti=1,f.nade_c=3" ]
[set_nade][nade_li_n][y/def][e/close_p][show_nade]
[syl]嗯…[p]
[_][if exp="f.last_act=='touch_mouth'" ][eval exp="f.last_act='nade_conti'" ]
（手指伸入希露薇的唇內、她一言不發的吸吮著手指[p]
[else]
（希露薇輕輕握住放在臉頰上的手開始吸吮手指[p]
[endif]
[add_lust_act][mouth_up_little]
[jump target="*after_nade" ]

*nade_continue3_
[cm][eval exp="f.nade_conti=1,f.nade_c=3" ]
[jump target="*nade6c" ]

*stop_nade
[cm][eval exp="f.last_act='nade',f.nade_conti=0,f.nade_c=0" ][return_bace]


;;トーク（ステップ分岐-------------------
*talk
[cm][eval exp="f.last_act='talk'" ]
[if exp="f.step==1" ][jump storage="intro/step1.ks" target="*talk_lead1" ]
[elsif exp="f.step==2" ][jump storage="intro/step2.ks" target="*talk_lead2" ]
[elsif exp="f.step==3" ][jump storage="intro/step3.ks" target="*talk_lead3" ]
[elsif exp="f.step==4" ][jump storage="intro/step4.ks" target="*talk_lead4" ]
[elsif exp="f.step==5" ][jump storage="intro/step5.ks" target="*talk_lead5" ]
[elsif exp="f.step==6" ][jump target="*talk6" ][endif]

*lust_talk
[random_3]
[if exp="f.r==1" ][random_68]
[elsif exp="f.r==2" ][random_32][eval exp="f.r=f.r+36" ]
[else][random_22][eval exp="f.r=f.r+46" ][endif]
[jump target="*talk6_" ]

*talk6
[cm][if exp="f.lust<=100 || f.mood=='calm'" ][random_36][jump target="*talk6_" ]
[elsif exp="f.lust<=300" ][random_46][jump target="*talk6_" ][endif]

[if exp="f.mood=='lust'" ][jump target="*lust_talk" ][endif]

[if exp="f.lust>=5000" ][random_2][elsif exp="f.lust>=3000" ][random_3]
[elsif exp="f.lust>=2000" ][random_5][elsif exp="f.lust>=1000" ][random_7]
[elsif exp="f.lust>=500" ][random_9][else][random_12][endif]

[if exp="f.lust>=150 && f.r==1" ][random_68]
[else][random_46][endif]

*talk6_
[cm][syl][if exp="f.r==1" ][jump storage="talk/step6.ks" target="*talk1" ][elsif exp="f.r==2" ][jump storage="talk/step6.ks" target="*talk2" ]
[elsif exp="f.r==3" ][jump storage="talk/step6.ks" target="*talk3" ][elsif exp="f.r==4" ][jump storage="talk/step6.ks" target="*talk4" ]
[elsif exp="f.r==5" ][jump storage="talk/step6.ks" target="*talk5" ][elsif exp="f.r==6" ][jump storage="talk/step6.ks" target="*talk6" ]
[elsif exp="f.r==7" ][jump storage="talk/step6.ks" target="*talk7" ][elsif exp="f.r==8" ][jump storage="talk/step6.ks" target="*talk8" ]
[elsif exp="f.r==9" ][jump storage="talk/step6.ks" target="*talk9" ][elsif exp="f.r==10" ][jump storage="talk/step6.ks" target="*talk10" ]
[elsif exp="f.r==11" ][jump storage="talk/step6.ks" target="*talk11" ][elsif exp="f.r==12" ][jump storage="talk/step6.ks" target="*talk12" ]
[elsif exp="f.r==13" ][jump storage="talk/step6.ks" target="*talk13" ][elsif exp="f.r==14" ][jump storage="talk/step6.ks" target="*talk14" ]
[elsif exp="f.r==15" ][jump storage="talk/step6.ks" target="*talk15" ][elsif exp="f.r==16" ][jump storage="talk/step6.ks" target="*talk16" ]
[elsif exp="f.r==17" ][jump storage="talk/step6.ks" target="*talk17" ][elsif exp="f.r==18" ][jump storage="talk/step6.ks" target="*talk18" ]
[elsif exp="f.r==19" ][jump storage="talk/step6.ks" target="*talk19" ][elsif exp="f.r==20" ][jump storage="talk/step6.ks" target="*talk20" ]
[elsif exp="f.r==21" ][jump storage="talk/step6.ks" target="*talk21" ][elsif exp="f.r==22" ][jump storage="talk/step6.ks" target="*talk22" ]
[elsif exp="f.r==23" ][jump storage="talk/step6.ks" target="*talk23" ][elsif exp="f.r==24" ][jump storage="talk/step6.ks" target="*talk24" ]
[elsif exp="f.r==25" ][jump storage="talk/step6.ks" target="*talk25" ][elsif exp="f.r==26" ][jump storage="talk/step6.ks" target="*talk26" ]
[elsif exp="f.r==27" ][jump storage="talk/step6.ks" target="*talk27" ][elsif exp="f.r==28" ][jump storage="talk/step6.ks" target="*talk28" ]
[elsif exp="f.r==29" ][jump storage="talk/step6.ks" target="*talk29" ][elsif exp="f.r==30" ][jump storage="talk/step6.ks" target="*talk30" ]
[elsif exp="f.r==31" ][jump storage="talk/step6.ks" target="*talk31" ][elsif exp="f.r==32" ][jump storage="talk/step6.ks" target="*talk32" ]
[elsif exp="f.r==33" ][jump storage="talk/step6.ks" target="*talk33" ][elsif exp="f.r==34" ][jump storage="talk/step6.ks" target="*talk34" ]
[elsif exp="f.r==35" ][jump storage="talk/step6.ks" target="*talk35" ][elsif exp="f.r==36" ][jump storage="talk/step6.ks" target="*talk36" ]
[elsif exp="f.r==37" ][jump storage="talk/step6.ks" target="*talk37" ][elsif exp="f.r==38" ][jump storage="talk/step6.ks" target="*talk38" ]
[elsif exp="f.r==39" ][jump storage="talk/step6.ks" target="*talk39" ][elsif exp="f.r==40" ][jump storage="talk/step6.ks" target="*talk40" ]
[elsif exp="f.r==41" ][jump storage="talk/step6.ks" target="*talk41" ][elsif exp="f.r==42" ][jump storage="talk/step6.ks" target="*talk42" ]
[elsif exp="f.r==43" ][jump storage="talk/step6.ks" target="*talk43" ][elsif exp="f.r==44" ][jump storage="talk/step6.ks" target="*talk44" ]
[elsif exp="f.r==45" ][jump storage="talk/step6.ks" target="*talk45" ][elsif exp="f.r==46" ][jump storage="talk/step6.ks" target="*talk46" ]
[elsif exp="f.r==47" ][jump storage="talk/step6.ks" target="*talk47" ][elsif exp="f.r==48" ][jump storage="talk/step6.ks" target="*talk48" ]
[elsif exp="f.r==49" ][jump storage="talk/step6.ks" target="*talk49" ][elsif exp="f.r==50" ][jump storage="talk/step6.ks" target="*talk50" ]
[elsif exp="f.r==51" ][jump storage="talk/step6.ks" target="*talk51" ][elsif exp="f.r==52" ][jump storage="talk/step6.ks" target="*talk52" ]
[elsif exp="f.r==53" ][jump storage="talk/step6.ks" target="*talk53" ][elsif exp="f.r==54" ][jump storage="talk/step6.ks" target="*talk54" ]
[elsif exp="f.r==55" ][jump storage="talk/step6.ks" target="*talk55" ][elsif exp="f.r==56" ][jump storage="talk/step6.ks" target="*talk56" ]
[elsif exp="f.r==57" ][jump storage="talk/step6.ks" target="*talk57" ][elsif exp="f.r==58" ][jump storage="talk/step6.ks" target="*talk58" ]
[elsif exp="f.r==59" ][jump storage="talk/step6.ks" target="*talk59" ][elsif exp="f.r==60" ][jump storage="talk/step6.ks" target="*talk60" ]
[elsif exp="f.r==61" ][jump storage="talk/step6.ks" target="*talk61" ][elsif exp="f.r==62" ][jump storage="talk/step6.ks" target="*talk62" ]
[elsif exp="f.r==63" ][jump storage="talk/step6.ks" target="*talk63" ][elsif exp="f.r==64" ][jump storage="talk/step6.ks" target="*talk64" ]
[elsif exp="f.r==65" ][jump storage="talk/step6.ks" target="*talk65" ][elsif exp="f.r==66" ][jump storage="talk/step6.ks" target="*talk66" ]
[elsif exp="f.r==67" ][jump storage="talk/step6.ks" target="*talk67" ][elsif exp="f.r==68" ][jump storage="talk/step6.ks" target="*talk68" ]
[elsif exp="f.r==69" ][jump storage="talk/step6.ks" target="*talk69" ][elsif exp="f.r==70" ][jump storage="talk/step6.ks" target="*talk70" ]
[endif]

;;撫で（ステップ分岐-------------------
*nade
[cm][eval exp="f.last_act='nade'" ][set_nade][show_repeat_role_nade]
[chara_mod name="hand_R" time="0" storage="o/hand/m-n-hand.png" ]
[if exp="f.step==1" ][jump storage="intro/step1.ks" target="*nade_lead1" ][elsif exp="f.step==2" ][jump storage="intro/step2.ks" target="*nade_lead2" ]
[elsif exp="f.step==3" ][jump storage="intro/step3.ks" target="*nade_lead3" ][elsif exp="f.step==4" ][jump storage="intro/step4.ks" target="*nade_lead4" ]
[elsif exp="f.step==5" ][jump storage="intro/step5.ks" target="*nade_lead5" ][elsif exp="f.step==6" ][jump target="*nade6" ][endif]

*lust_nade
[random_2]
[if exp="f.r==1" ][random_54][else][random_22][eval exp="f.r=f.r+32" ][endif]
[jump target="*nade6_" ]

*nade6
[cm][if exp="f.nade_c==0" ][eval exp="f.nade_c=1" ][endif]
[if exp="f.lust<=150 || f.mood=='calm'" ][random_32][jump target="*nade6_" ][endif]
[if exp="f.mood=='lust'" ][jump target="*lust_nade" ][endif]

[if exp="f.lust>=5000" ][random_2][elsif exp="f.lust>=3000" ][random_3]
[elsif exp="f.lust>=2000" ][random_5][elsif exp="f.lust>=1000" ][random_7]
[elsif exp="f.lust>=500" ][random_9][else][random_12][endif]

[if exp="f.lust>=150 && f.r==1" ][random_54][else][random_46][endif]

*nade6_
[cm][if exp="f.r==1" ][jump storage="talk/nade.ks" target="*nade1" ][elsif exp="f.r==2" ][jump storage="talk/nade.ks" target="*nade2" ]
[elsif exp="f.r==3" ][jump storage="talk/nade.ks" target="*nade3" ][elsif exp="f.r==4" ][jump storage="talk/nade.ks" target="*nade4" ]
[elsif exp="f.r==5" ][jump storage="talk/nade.ks" target="*nade5" ][elsif exp="f.r==6" ][jump storage="talk/nade.ks" target="*nade6" ]
[elsif exp="f.r==7" ][jump storage="talk/nade.ks" target="*nade7" ][elsif exp="f.r==8" ][jump storage="talk/nade.ks" target="*nade8" ]
[elsif exp="f.r==9" ][jump storage="talk/nade.ks" target="*nade9" ][elsif exp="f.r==10" ][jump storage="talk/nade.ks" target="*nade10" ]
[elsif exp="f.r==11" ][jump storage="talk/nade.ks" target="*nade11" ][elsif exp="f.r==12" ][jump storage="talk/nade.ks" target="*nade12" ]
[elsif exp="f.r==13" ][jump storage="talk/nade.ks" target="*nade13" ][elsif exp="f.r==14" ][jump storage="talk/nade.ks" target="*nade14" ]
[elsif exp="f.r==15" ][jump storage="talk/nade.ks" target="*nade15" ][elsif exp="f.r==16" ][jump storage="talk/nade.ks" target="*nade16" ]
[elsif exp="f.r==17" ][jump storage="talk/nade.ks" target="*nade17" ][elsif exp="f.r==18" ][jump storage="talk/nade.ks" target="*nade18" ]
[elsif exp="f.r==19" ][jump storage="talk/nade.ks" target="*nade19" ][elsif exp="f.r==20" ][jump storage="talk/nade.ks" target="*nade20" ]
[elsif exp="f.r==21" ][jump storage="talk/nade.ks" target="*nade21" ][elsif exp="f.r==22" ][jump storage="talk/nade.ks" target="*nade22" ]
[elsif exp="f.r==23" ][jump storage="talk/nade.ks" target="*nade23" ][elsif exp="f.r==24" ][jump storage="talk/nade.ks" target="*nade24" ]
[elsif exp="f.r==25" ][jump storage="talk/nade.ks" target="*nade25" ][elsif exp="f.r==26" ][jump storage="talk/nade.ks" target="*nade26" ]
[elsif exp="f.r==27" ][jump storage="talk/nade.ks" target="*nade27" ][elsif exp="f.r==28" ][jump storage="talk/nade.ks" target="*nade28" ]
[elsif exp="f.r==29" ][jump storage="talk/nade.ks" target="*nade29" ][elsif exp="f.r==30" ][jump storage="talk/nade.ks" target="*nade30" ]
[elsif exp="f.r==31" ][jump storage="talk/nade.ks" target="*nade31" ][elsif exp="f.r==32" ][jump storage="talk/nade.ks" target="*nade32" ]
[elsif exp="f.r==33" ][jump storage="talk/nade.ks" target="*nade33" ][elsif exp="f.r==34" ][jump storage="talk/nade.ks" target="*nade34" ]
[elsif exp="f.r==35" ][jump storage="talk/nade.ks" target="*nade35" ][elsif exp="f.r==36" ][jump storage="talk/nade.ks" target="*nade36" ]
[elsif exp="f.r==37" ][jump storage="talk/nade.ks" target="*nade37" ][elsif exp="f.r==38" ][jump storage="talk/nade.ks" target="*nade38" ]
[elsif exp="f.r==39" ][jump storage="talk/nade.ks" target="*nade39" ][elsif exp="f.r==40" ][jump storage="talk/nade.ks" target="*nade40" ]
[elsif exp="f.r==41" ][jump storage="talk/nade.ks" target="*nade41" ][elsif exp="f.r==42" ][jump storage="talk/nade.ks" target="*nade42" ]
[elsif exp="f.r==43" ][jump storage="talk/nade.ks" target="*nade43" ][elsif exp="f.r==44" ][jump storage="talk/nade.ks" target="*nade44" ]
[elsif exp="f.r==45" ][jump storage="talk/nade.ks" target="*nade45" ][elsif exp="f.r==46" ][jump storage="talk/nade.ks" target="*nade46" ]
[elsif exp="f.r==47" ][jump storage="talk/nade.ks" target="*nade47" ][elsif exp="f.r==48" ][jump storage="talk/nade.ks" target="*nade48" ]
[elsif exp="f.r==49" ][jump storage="talk/nade.ks" target="*nade49" ][elsif exp="f.r==50" ][jump storage="talk/nade.ks" target="*nade50" ]
[elsif exp="f.r==51" ][jump storage="talk/nade.ks" target="*nade51" ][elsif exp="f.r==52" ][jump storage="talk/nade.ks" target="*nade52" ]
[elsif exp="f.r==53" ][jump storage="talk/nade.ks" target="*nade53" ][elsif exp="f.r==54" ][jump storage="talk/nade.ks" target="*nade54" ]
[endif]



*lust_nade_b
[random_2]
[if exp="f.r==1" ][random_54][else][random_22][eval exp="f.r=f.r+32" ][endif]
[jump target="*nade6b_" ]

*nade6b
[cm][if exp="f.lust<=150 || f.mood=='calm'" ][random_32][jump target="*nade6b_" ][endif]
[if exp="f.mood=='lust'" ][jump target="*lust_nade_b" ][endif]

[if exp="f.lust>=5000" ][random_2][elsif exp="f.lust>=3000" ][random_3]
[elsif exp="f.lust>=2000" ][random_5][elsif exp="f.lust>=1000" ][random_7]
[elsif exp="f.lust>=500" ][random_9][else][random_12][endif]

[if exp="f.lust>=150 && f.r==1" ][random_54][else][random_46][endif]

*nade6b_
[cm][if exp="f.r==1" ][jump storage="talk/nade.ks" target="*nade1" ][elsif exp="f.r==2" ][jump storage="talk/nade.ks" target="*nade2" ]
[elsif exp="f.r==3" ][jump storage="talk/nade.ks" target="*nade3" ][elsif exp="f.r==4" ][jump storage="talk/nade.ks" target="*nade4" ]
[elsif exp="f.r==5" ][jump storage="talk/nade.ks" target="*nade5" ][elsif exp="f.r==6" ][jump storage="talk/nade.ks" target="*nade6" ]
[elsif exp="f.r==7" ][jump storage="talk/nade.ks" target="*nade7" ][elsif exp="f.r==8" ][jump storage="talk/nade.ks" target="*nade8" ]
[elsif exp="f.r==9" ][jump storage="talk/nade.ks" target="*nade9" ][elsif exp="f.r==10" ][jump storage="talk/nade.ks" target="*nade10" ]
[elsif exp="f.r==11" ][jump storage="talk/nade.ks" target="*nade11" ][elsif exp="f.r==12" ][jump storage="talk/nade.ks" target="*nade12" ]
[elsif exp="f.r==13" ][jump storage="talk/nade.ks" target="*nade13" ][elsif exp="f.r==14" ][jump storage="talk/nade.ks" target="*nade14" ]
[elsif exp="f.r==15" ][jump storage="talk/nade.ks" target="*nade15" ][elsif exp="f.r==16" ][jump storage="talk/nade.ks" target="*nade16" ]
[elsif exp="f.r==17" ][jump storage="talk/nade.ks" target="*nade17" ][elsif exp="f.r==18" ][jump storage="talk/nade.ks" target="*nade18" ]
[elsif exp="f.r==19" ][jump storage="talk/nade.ks" target="*nade19" ][elsif exp="f.r==20" ][jump storage="talk/nade.ks" target="*nade20" ]
[elsif exp="f.r==21" ][jump storage="talk/nade.ks" target="*nade21" ][elsif exp="f.r==22" ][jump storage="talk/nade.ks" target="*nade22" ]
[elsif exp="f.r==23" ][jump storage="talk/nade.ks" target="*nade23" ][elsif exp="f.r==24" ][jump storage="talk/nade.ks" target="*nade24" ]
[elsif exp="f.r==25" ][jump storage="talk/nade.ks" target="*nade25" ][elsif exp="f.r==26" ][jump storage="talk/nade.ks" target="*nade26" ]
[elsif exp="f.r==27" ][jump storage="talk/nade.ks" target="*nade27" ][elsif exp="f.r==28" ][jump storage="talk/nade.ks" target="*nade28" ]
[elsif exp="f.r==29" ][jump storage="talk/nade.ks" target="*nade29" ][elsif exp="f.r==30" ][jump storage="talk/nade.ks" target="*nade30" ]
[elsif exp="f.r==31" ][jump storage="talk/nade.ks" target="*nade31" ][elsif exp="f.r==32" ][jump storage="talk/nade.ks" target="*nade32" ]
[elsif exp="f.r==33" ][jump storage="talk/nade.ks" target="*nade33" ][elsif exp="f.r==34" ][jump storage="talk/nade.ks" target="*nade34" ]
[elsif exp="f.r==35" ][jump storage="talk/nade.ks" target="*nade35" ][elsif exp="f.r==36" ][jump storage="talk/nade.ks" target="*nade36" ]
[elsif exp="f.r==37" ][jump storage="talk/nade.ks" target="*nade37" ][elsif exp="f.r==38" ][jump storage="talk/nade.ks" target="*nade38" ]
[elsif exp="f.r==39" ][jump storage="talk/nade.ks" target="*nade39" ][elsif exp="f.r==40" ][jump storage="talk/nade.ks" target="*nade40" ]
[elsif exp="f.r==41" ][jump storage="talk/nade.ks" target="*nade41" ][elsif exp="f.r==42" ][jump storage="talk/nade.ks" target="*nade42" ]
[elsif exp="f.r==43" ][jump storage="talk/nade.ks" target="*nade43" ][elsif exp="f.r==44" ][jump storage="talk/nade.ks" target="*nade44" ]
[elsif exp="f.r==45" ][jump storage="talk/nade.ks" target="*nade45" ][elsif exp="f.r==46" ][jump storage="talk/nade.ks" target="*nade46" ]
[elsif exp="f.r==47" ][jump storage="talk/nade.ks" target="*nade47" ][elsif exp="f.r==48" ][jump storage="talk/nade.ks" target="*nade48" ]
[elsif exp="f.r==49" ][jump storage="talk/nade.ks" target="*nade49" ][elsif exp="f.r==50" ][jump storage="talk/nade.ks" target="*nade50" ]
[elsif exp="f.r==51" ][jump storage="talk/nade.ks" target="*nade51" ][elsif exp="f.r==52" ][jump storage="talk/nade.ks" target="*nade52" ]
[elsif exp="f.r==53" ][jump storage="talk/nade.ks" target="*nade53" ][elsif exp="f.r==54" ][jump storage="talk/nade.ks" target="*nade54" ]
[endif]

*nade6c
[cm][random_7]
[if exp="f.r==1" ][jump storage="talk/nade.ks" target="*yubi1" ][elsif exp="f.r==2" ][jump storage="talk/nade.ks" target="*yubi2" ]
[elsif exp="f.r==3" ][jump storage="talk/nade.ks" target="*yubi3" ][elsif exp="f.r==4" ][jump storage="talk/nade.ks" target="*yubi4" ]
[elsif exp="f.r==5" ][jump storage="talk/nade.ks" target="*yubi5" ][elsif exp="f.r==6" ][jump storage="talk/nade.ks" target="*yubi6" ]
[elsif exp="f.r==7" ][jump storage="talk/nade.ks" target="*yubi7" ][endif]

