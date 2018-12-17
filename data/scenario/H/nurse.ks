;;set
*set
[if exp="f.dress_hcg>=51 && f.dress_hcg<=53" ]
[elsif exp="f.dress==52 || f.dress==2" ][eval exp="f.dress_hcg=52" ]
[elsif exp="f.dress==53 || f.dress==3" ][eval exp="f.dress_hcg=53" ]
[else][eval exp="f.dress_hcg=51" ][endif]

[if exp="f.dress_hcg==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1b.png" ]
[elsif exp="f.dress_hcg==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1c.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1a.png" ][endif]

[if exp="f.glasses==1" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a1.png" ][elsif exp="f.glasses==2" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a3.png" ][elsif exp="f.glasses==4" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a5.png" ][elsif exp="f.glasses==6" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a7.png" ][elsif exp="f.glasses==8" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/a9.png" ][elsif exp="f.glasses==11" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b2.png" ][elsif exp="f.glasses==13" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b4.png" ][elsif exp="f.glasses==15" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b6.png" ][elsif exp="f.glasses==17" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b8.png" ][elsif exp="f.glasses==19" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c1.png" ][elsif exp="f.glasses==22" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c3.png" ][elsif exp="f.glasses==24" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c5.png" ][elsif exp="f.glasses==26" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c7.png" ][elsif exp="f.glasses==28" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod wait="false" name="glasses" time="0" storage="H/nurse/glass/c9.png" ][else][chara_mod wait="false" name="glasses" time="0" storage="00.png" ][endif]

[if exp="f.b_acc==1" ][chara_mod wait="false" name="b_acc" time="0" storage="s/b_acc/O/nurse_a1.png" ][elsif exp="f.b_acc==21" ][chara_mod wait="false" name="b_acc" time="0" storage="s/b_acc/O/nurse_b1.png" ]
[elsif exp="f.b_acc==22" ][chara_mod wait="false" name="b_acc" time="0" storage="s/b_acc/O/nurse_b2.png" ][elsif exp="f.b_acc==31" ][chara_mod wait="false" name="b_acc" time="0" storage="s/b_acc/O/nurse_c1.png" ]
[elsif exp="f.b_acc==32" ][chara_mod wait="false" name="b_acc" time="0" storage="s/b_acc/O/nurse_c2.png" ][elsif exp="f.b_acc==41" ][chara_mod wait="false" name="b_acc" time="0" storage="s/b_acc/O/nurse_d1.png" ]
[elsif exp="f.b_acc==42" ][chara_mod wait="false" name="b_acc" time="0" storage="s/b_acc/O/nurse_d2.png" ][else][chara_mod wait="false" name="b_acc" time="0" storage="00.png" ][endif]
[mod_win st="o/win/LR.png" ]
[return]


;;set服差分
*nurse_d1
[if exp="f.dress_hcg==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1b.png" ]
[elsif exp="f.dress_hcg==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1c.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1a.png" ][endif]
*nurse_d2
[if exp="f.dress_hcg==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/2b.png" ]
[elsif exp="f.dress_hcg==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/2c.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/2a.png" ][endif][return]
*nurse_d3
[if exp="f.dress_hcg==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/3b.png" ]
[elsif exp="f.dress_hcg==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/3c.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/3a.png" ][endif][return]
*nurse_d4
[if exp="f.dress_hcg==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/4b.png" ]
[elsif exp="f.dress_hcg==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/4c.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/4a.png" ][endif][return]
*nurse_d5
[if exp="f.dress_hcg==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/5b.png" ]
[elsif exp="f.dress_hcg==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/5c.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/5a.png" ][endif][return]
*nurse_d6
[if exp="f.dress_hcg==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/6b.png" ]
[elsif exp="f.dress_hcg==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/6c.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/6a.png" ][endif][return]

*hat_a1
[if exp="f.hat==1" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a1.png" ]
[elsif exp="f.hat==2" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a2.png" ]
[else][chara_mod wait="false" name="hat" time="0" storage="00.png" ][endif][return]
*hat_a1-
[if exp="f.hat==1" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a1-.png" ]
[elsif exp="f.hat==2" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a2-.png" ]
[else][chara_mod wait="false" name="hat" time="0" storage="00.png" ][endif][return]



;;show_set
*show_set
[chara_show name="glasses" time="0" wait="false" left="0.1" ]
[chara_show name="hat" time="0" wait="false" left="0.1" ]
[chara_show name="b_acc" time="0" wait="false" left="0.1" ]
[if exp="f.nude==0" ][chara_show name="dress" time="0" wait="false" left="0.1" ][endif][return]

;;導入
*nurse
[cm][stop_bgm][set_work]
（希露薇在離開診療所前背對著整理桌子。[lr]
…視線停留在了她翹起的小屁股上。[p]
[f/nt][show_work]
[syl][f/re]…[name]？[p_]
[_]（突然回頭看的希露薇在視線的前頭。[p_]
[syl][f/p]…今天你的工作已經結束了嗎？[lr_]
[f/re]現在、做什麼你說。[p_]
[if exp="f.lust>=500" ]
[f/cp]…[name]？[r]
我…那個…。[p_]

[else]
[f/re]有什麼想做的事嗎？[lr_]
[f/re]我什麽時候都可以和你結合呢、[name]？[p_]
[endif]

[button target="*on_bed" graphic="ch/sex.png" x="0" y="270" ]
[button target="*return" graphic="ch/end-walk.png" x="0" y="420" ][s]

*return
[cm][syl][f/cl]…是嗎。[lr_]
[f/sc]等這裡也收拾好了、再回去吧。[p_]
[black]…[p][bgm_SG][return_bace]

;;回想分岐

*a
[eval exp="f.hist_mode=1" ][jump target="*dress_select" ]
*b
[eval exp="f.hist_mode=2" ][jump target="*dress_select" ]
*a_
[eval exp="f.hist_mode=11" ][jump target="*dress_select" ]
*b_
[eval exp="f.hist_mode=12" ][jump target="*dress_select" ]

*dress_select
[eval exp="f.dress_hcg=0" ][bg storage="H/dress_memory.jpg" time="0" ]
*select
;エプロン
[cm]
;ナース
[if exp="f.Dc_f[0]=='got'" ][button target="*dress_up" graphic="clothe/c_nurse.png" x="680" y="165" ][endif]
[if exp="f.dress_hcg==51" ][button target="*c_f1" graphic="clothe/bc_white.png" x="835" y="165" ]
[elsif exp="f.Dc_f[1]==1" ][button target="*c_f1" graphic="clothe/bc_white-.png" x="835" y="165" ][endif]

[if exp="f.dress_hcg==52" ][button target="*c_f2" graphic="clothe/bc_pink.png" x="890" y="165" ]
[elsif exp="f.Dc_f[2]==1" ][button target="*c_f2" graphic="clothe/bc_pink-.png" x="890" y="165" ][endif]

[if exp="f.dress_hcg==53" ][button target="*c_f3" graphic="clothe/bc_black.png" x="945" y="165" ]
[elsif exp="f.Dc_f[3]==1" ][button target="*c_f3" graphic="clothe/bc_black-.png" x="945" y="165" ][endif]

[if exp="f.dress_hcg=='non'" ][button target="*c_non" graphic="clothe/non.png" x="730" y="118" ]
[else][button target="*c_non" graphic="clothe/non-.png" x="730" y="118" ][endif]

[button target="*end_cg" graphic="m/return.png" height="50" x="690" y="350" ]
[button target="*decide" graphic="m/decide.png" height="50" x="1000" y="350" ][s]

*c_non
[eval exp="f.dress_hcg='non'" ][jump target="*select" ]

*c_f1
[eval exp="f.dress_hcg=51" ][jump target="*select" ]
*c_f2
[eval exp="f.dress_hcg=52" ][jump target="*select" ]
*c_f3
[eval exp="f.dress_hcg=53" ][jump target="*select" ]

*decide
[cm][if exp="f.hist_mode==11" ][jump target="*a_cg" ]
[elsif exp="f.hist_mode==12" ][jump target="*b_cg" ][endif]
[show_message_w][jump target="*on_bed" ]


;;服選択
*on_bed
[cm][show_message_w][black][bgm_MT]
[_]（讓希露薇坐在診療所的床上[p]
[syl]…好。[p]
[_]（希露薇一邊解開己的衣服一邊向我走來[p]
[if exp="f.hist_mode>=1 && f.dress_hcg=='non'" ][jump target="*nude" ]
[elsif exp="f.hist_mode>=1" ][jump target="*wear" ][endif]
[button target="*nude" graphic="ch/nude.png" x="0" y="270" ]
[button target="*wear" graphic="ch/nude_stop.png" x="0" y="420" ][s]

*nude
[cm]（希露薇脫光了衣服[r][eval exp="f.nude=1" ][jump target="*conti" ]

*wear
[cm][syl]就這樣嗎…？[lr]
…我明白了。[p][eval exp="f.nude=0" ]
[_]（希露薇脫下衣服下的內衣、[r]

*conti
面對面坐在這邊的膝蓋上面。[p]
（取出東西摩擦私處時已染上顏色。[lr]
好像是因為沒有了一段時間沒有對方所以焦急等待著。[p]
[reset_effect][call target="*set" ][call target="*hat_a1" ]

[if exp="f.hist_mode==1" ][jump target="*x" ]
[elsif exp="f.hist_mode==2" ][jump target="*xx" ][endif]

[if exp="f.sexless_c>=2 && f.lust>=600 && f.m_nurse>=1 || f.mood=='lust' && f.m_nurse>=1" ]
[jump target="*xx" ][endif]

;;シーン1
*x
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[set_black][h_bg st="H_nurse/a1.jpg" ][se_nloop st="s-wet1.ogg" ]
[call target="*show_set" ][show_effect][hide_black]

（希露薇瞄准目標沒有做任何前戲的沉下腰部。[p]
[syl][if exp="f.sex_name[0]>=1" ][name_h]…好久沒和[sex_name]…♡♡[lr][endif]嗯…哈啊…♡[p]
[_]（狀態良好潤滑的希露薇的秘部直接呑下陰莖。[p]
[h_bg st="H_nurse/a2.jpg" ][call target="*nurse_d2" ]
[chara_mod wait="false" name="se" time="0" storage=00.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_2.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_2.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]


[syl]哈〜♡哈啊…♡[p_name_ex_]♡[p]
[_]（希露薇愉快地放鬆臉頰看向這裡。[lr]
四肢全盤在背上、與全身緊密的貼附著。[p]

[h_bg st="H_nurse/a3.jpg" ][se_loop st="l-wet1.ogg" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_3,4.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_3.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_3.png" ]
[call target="*nurse_d3" ][call target="*hat_a1-" ]

[syl]嗯…♡呼…♡[p]
[_]（希露薇的臀部慢慢的上下搗動著、[r]
陰莖通過熾熱的肉褶开享受触觉的快樂。[p]

[h_bg st="H_nurse/a4.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_4.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_4.png" ]
[syl]啊♡…哈啊…♡♡[v_name_ex]好舒服…♡♡[p]
[_]（希露薇也抵抗不了久違的快感。[lr]
瞳孔在哪裡都看不到了、[r]
恐怕意識是集中在了陰道上吧。[p]
[h_bg st="H_nurse/a5.jpg" ][call target="*nurse_d4" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_5-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_5.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_5.png" ]
[se_loop st="l-wet2.ogg" ]
（…享受著甜蜜的快感、活塞的速度自然的上升了。[p]
[syl]啊！♡…嗯…！♡♡…哈啊！…！♡♡♡[p]
[_]（希露薇滿溢的愛液結合弄濕、粘粘糊糊的水聲響起開始。[p]

[h_bg st="H_nurse/a6.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_6.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_6.png" ]
[syl]哈嗚…！♡[name_h]！！♡♡[name_h]♡！♡！！[p]
[_]（希露薇貼合活塞上下運動著腰部、[r]
在生殖器上的摩擦激烈起來。[p]
（彼此都是以互相為彼此的身體而著迷著…。[p]

[h_bg st="H_nurse/a7.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_7.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_7.png" ]
[se_loop st="l-wet3.ogg" ]
[syl]啊！♡♡我…已經…♡！[if exp="f.x_speak==1" ]要高潮了…♡[endif]♡♡[p]
[_]（漸漸她四肢開始僵硬的用力了。[lr]
就好像接近極限了。[p]
[syl][name_h]♡！♡！！[r]
真…！♡♡[name_h]♡！♡♡！！[p]
[se_nloop st="fin2.ogg" ]
[h_bg st="H_nurse/a8.jpg" ][call target="*nurse_d5" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_8.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_8.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_8.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/2.png" ]

[syl]嗯♡…ー〜！！！啊"！！♡
[if exp="f.x_speak==1" ][v_name_ex]高潮了…[endif]♡♡！♡！！[p]
[_]（最後她屁股深深壓住的、積存的欲望氣勢吐了出來。[p]
[h_bg st="H_nurse/a9.jpg" ][call target="*nurse_d6" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_9.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_9.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_9.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]

[syl]啊啊"ー〜♡♡哈咿"……〜！♡♡♡[p]
[_]（希露薇的絕頂長時間的持續著、緊緊地緊貼著身體。[p]

[if exp="f.hist_mode>=1" ][jump target="*end" ][endif]
[eval exp="f.sex=f.sex+1" ][eval exp="f.h_v=f.h_v+5" ]
[eval exp="f.lust=f.lust+7" ][eval exp="f.love=f.love+15" ]
[eval exp="f.heavn=f.heavn+2" ]
[if exp="f.m_nurse>=1" ][else][eval exp="f.m_nurse=1" ][endif][jump target="*end" ]

;;シーン2
*xx
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_1.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_1.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_1.png" ]
[chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[set_black][h_bg st="H_nurse/b1.jpg" ][call target="*show_set" ][show_effect][hide_black]
[se_nloop st="s-wet1.ogg" ]
（希露薇瞄准目標沒有做任何前戲的沉下腰部。[p]
[syl]
[if exp="f.sex_name[0]>=1 && f.lust>=500" ][p_name_ex]…[sex_name]…♡♡[lr][name_h]と…久しぶりの[sex_name]…♡♡[p]
[elsif exp="f.sex_name[0]>=1" ][name_h]…好久沒有[sex_name]…♡♡[lr][endif]
嗯…呼啊…！♡♡[p]
[_]（狀態良好潤滑的希露薇的秘部直接呑下陰莖。[p]
[h_bg st="H_nurse/b2.jpg" ][call target="*nurse_d2" ]
[chara_mod wait="false" name="se" time="0" storage=00.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_2.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_2.png" ]
[chara_mod wait="false" name="x" time="0" storage=00.png" ]
啊…[name_h]♡…[name_h]的[p_name]♡♡好舒服…♡♡[p]
[_]（只是插入就浮現出幸福的表情的希露薇。[lr]
四肢與身體的軀幹纏繞著、享受著密感。[p]

[h_bg st="H_nurse/b3.jpg" ][call target="*nurse_d4" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_3-7.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_3.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_3.png" ]
[call target="*hat_a1-" ]

[se_loop st="l-wet2.ogg" ]
[syl]哈啊！♡…啊啊！！♡…！♡♡[p]
[_]（因為我這裡也積壓了所以沒有忍耐、以加速的步調開始活塞運動。[p]

[h_bg st="H_nurse/b4.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_4.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_4.png" ]
[syl]啊"！♡！♡♡哈啊…！！♡♡[p]
[_]（像突然的刺激感到驚訝、[r]
拼命用力與腳部的運動保持一致。[lr]
威猛的陰道中、那麽熱纏繞陰莖刺激也感到吃驚。[p]

[h_bg st="H_nurse/b5.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_5.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_5.png" ]
[syl]咿"♡！♡♡…嗯"…！♡♡[r]
…咿…！♡！！♡♡♡ [p]
[_]（彼此的腰部貪圖快感而持續行為。[lr]
與氣勢洶洶的臀肉撞擊聲、結合起來的下流的水聲響徹著的房間[p]

[h_bg st="H_nurse/b6.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_6.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_6.png" ]
[syl]啊"啊"〜…！♡♡哈嗚"！！♡！[r]
啊啊"♡！！♡♡[p]
[_]（在更加氣勢的活塞運動每１次往返上都深深地敲打薇的子宮、[r]
露出的陰部與陰莖根部摩擦著。[p]

[h_bg st="H_nurse/b7.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_7.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_7.png" ]
[se_loop st="l-wet3.ogg" ]
[syl]咿"！♡♡[name_h]嗯！♡♡…〜！！♡♡[p]
[_]（好象彼此的界限逼近。最後的瞬間、動作到了極限。[p]
[syl]…高潮！♡！！♡♡♡咿"…！♡！♡♡♡[p]

[h_bg st="H_nurse/b8.jpg" ][call target="*nurse_d5" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_8.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_8.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_8.png" ]
[chara_mod wait="false" name="x" time="0" storage="H/nurse/x/2.png" ]
[if exp="f.hat==1" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a1.png" ]
[elsif exp="f.hat==2" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a2.png" ]
[else][chara_mod wait="false" name="hat" time="0" storage="00.png" ][endif]
[se_nloop st="fin2.ogg" ]
高"♡♡…潮…♡……ー〜♡♡！！♡♡！♡♡♡♡[p]
[_]（她申手已最大的幅度貼合腰部全身顫抖著迎來大的絕頂。[lr]
陰莖在極限的地方絞動著收縮的子宮、[r]
這裡也積存了一堆精液流入子宮。[p]

[h_bg st="H_nurse/b9.jpg" ][call target="*nurse_d6" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_9.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_9.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_9.png" ]
[chara_mod wait="false" name="x" time="0" storage=00.png" ]

[syl]啊"♡！♡♡…哈……！♡！♡♡[r]
哈…！♡哈……！♡！！♡♡♡[p]
[_]（身体翻滚、不能順利呼吸[r]
這個時候沒有富餘的精力的腰力放在一起[r]
在漫長的絕頂的時候陰道和全身激烈地痙攣。[p]

[if exp="f.hist_mode>=1" ][jump target="*end" ][endif]
[eval exp="f.sex=f.sex+1" ][eval exp="f.h_v=f.h_v+10" ][eval exp="f.heavn=f.heavn+4" ]
[eval exp="f.lust=f.lust+15" ][eval exp="f.love=f.love+20" ]
[if exp="f.m_nurse<=1" ][eval exp="f.m_nurse=2" ][endif]
[jump target="*end" ]

;;エンド
*end
[hide_role][black][_]（在手臂中又强烈的抱著她、幾分鐘就這樣沉浸在餘韻的快感中…。[p]
[if exp="f.hist_mode>=1" ][return_memory][endif]
[eval exp="f.cum=f.cum+1" ][eval exp="f.act='nurse'" ]
[stop_bgm]…[p][day_end]


;;CG1
*a_cg
[if exp="f.dress_hcg=='non'" ][eval exp="f.nude=1" ][else][eval exp="f.nude=0" ][endif]
[cm][black][call target="*set" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[set_black][h_bg st="H_nurse/a1.jpg" ][call target="*show_set" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*a_cg2"][s]

*a_cg1
[cm][h_bg st="H_nurse/a1.jpg" ][call target="*nurse_d1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[h_back tg="*end_cg"][h_next tg="*a_cg2"][s]
*a_cg2
[cm][h_bg st="H_nurse/a2.jpg" ]
[call target="*nurse_d2" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage=00.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_2.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_2.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*a_cg1"][h_next tg="*a_cg3"][s]
*a_cg3
[cm][h_bg st="H_nurse/a3.jpg" ][call target="*nurse_d3" ][call target="*hat_a1-" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_3,4.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_3.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_3.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*a_cg2"][h_next tg="*a_cg4"][s]
*a_cg4
[cm][h_bg st="H_nurse/a4.jpg" ][call target="*nurse_d3" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_3,4.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_4.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_4.png" ]
[h_back tg="*a_cg3"][h_next tg="*a_cg5"][s]
*a_cg5
[cm][h_bg st="H_nurse/a5.jpg" ][call target="*nurse_d4" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_5-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_5.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_5.png" ]
[h_back tg="*a_cg4"][h_next tg="*a_cg6"][s]
*a_cg6
[cm][h_bg st="H_nurse/a6.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_6.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_6.png" ]
[h_back tg="*a_cg5"][h_next tg="*a_cg7"][s]
*a_cg7
[cm][h_bg st="H_nurse/a7.jpg" ][call target="*nurse_d4" ][call target="*hat_a1-" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_5-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_7.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_7.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*a_cg6"][h_next tg="*a_cg8"][s]
*a_cg8
[cm][h_bg st="H_nurse/a8.jpg" ][call target="*nurse_d5" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_8.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_8.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_8.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/2.png" ]
[h_back tg="*a_cg7"][h_next tg="*a_cg9"][s]
*a_cg9
[cm][h_bg st="H_nurse/a9.jpg" ][call target="*nurse_d6" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_9.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_9.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_9.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*a_cg8"][h_next tg="*end_cg"][s]

;;CG2
*b_cg
[if exp="f.dress_hcg=='non'" ][eval exp="f.nude=1" ][else][eval exp="f.nude=0" ][endif]

[black][call target="*set" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[set_black][h_bg st="H_nurse/b1.jpg" ][call target="*show_set" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]

*b_cg1
[h_bg st="H_nurse/b1.jpg" ][call target="*nurse_d1" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]
*b_cg2
[cm][h_bg st="H_nurse/b2.jpg" ][call target="*nurse_d2" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage=00.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_2.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_2.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*b_cg1"][h_next tg="*b_cg3"][s]
*b_cg3
[cm][h_bg st="H_nurse/b3.jpg" ][call target="*nurse_d4" ][call target="*hat_a1-" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_3-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_3.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_3.png" ]
[h_back tg="*b_cg2"][h_next tg="*b_cg4"][s]
*b_cg4
[cm][h_bg st="H_nurse/b4.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_4.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_4.png" ]
[h_back tg="*b_cg3"][h_next tg="*b_cg5"][s]
*b_cg5
[cm][h_bg st="H_nurse/b5.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_5.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_5.png" ]
[h_back tg="*b_cg4"][h_next tg="*b_cg6"][s]
*b_cg6
[cm][h_bg st="H_nurse/b6.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_6.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_6.png" ]
[h_back tg="*b_cg5"][h_next tg="*b_cg7"][s]
*b_cg7
[cm][h_bg st="H_nurse/b7.jpg" ][call target="*nurse_d4" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_3-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_7.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_7.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*b_cg6"][h_next tg="*b_cg8"][s]
*b_cg8
[cm][h_bg st="H_nurse/b8.jpg" ][call target="*nurse_d5" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_8.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_8.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_8.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/2.png" ]
[h_back tg="*b_cg7"][h_next tg="*b_cg9"][s]
*b_cg9
[cm][h_bg st="H_nurse/b9.jpg" ]
[call target="*nurse_d6" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_9.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_9.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_9.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*b_cg8"][h_next tg="*end_cg"][s]

*end_cg
[cm][return_memory]

