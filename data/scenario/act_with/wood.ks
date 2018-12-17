;;
*wood
[cm][stop_bgm][_][set_black][f/s_nt]
[bg_outside][set_weather][show_stand][bgm_AT]
[act_win_stand][eval exp="f.out=1"]

[if exp="f.wood==0" ][eval exp="f.wood=1" ]
	[_]（這裏的森林的草藥還有能供使用的野菜以及水果都很豐富。[p_]
	（如果往深處走的話還說不定會遇到危險的野生動物呢。[lr_]
	（我帶著希露薇在散步。[p_]
	[syl][f/s]也會有這種事情啊。[lr_]
	[f/re]那麽、請讓我和你一起。[p_]
[else]
	[syl][f/s]要在森林裏散步嗎？[lr_]
	[f/ss]好的、請讓我和你一起。[p_]
[endif]


*choice
[_][eval exp="f.act=f.act+1" ][eval exp="f.love=f.love+1" ][eval exp="f.daily_wood=f.daily_wood+1" ]
[if exp="f.act==6" ][set_weather]（太陽差不多要下山了…。[p_][jump target="*go_home" ][endif]

[set_time][set_weather]
[if exp="f.repeat_mode==1 && f.last_act=='wood'" ][jump target="*re" ][endif]
[mod_win st="o/win/sub_win.png" ]
[button target="*re" graphic="s_menu/walk_again.png" width=461 x="888" y="115" ]
[if exp="f.book==1" ][button target="*find" graphic="s_menu/find.png" width=461 x="888" y="195" ][endif]
[if exp="f.last_act!='wood_rest'" ][button target="*walk_H" graphic="s_menu/get_rest.png" width=461 x="888" y="275" ][endif]
[button target="*go_home" graphic="s_menu/go_home.png" width=461 x="888" y="355" ]
[s]

*re
[cm][mod_win st="00.png" ][eval exp="f.last_act='wood'" ]
[if exp="f.book=='non'" ][random_33][jump target="*walk" ]
[else][random_35][jump target="*walk" ][endif]


*go_home
[cm][mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ][stop_bgm]
[_]（今天就到這裡了差不多應該要回家了。[p_]
[f/s][syl]好的、那我们现在回家吗。[p_]
[bgm_SG][return_bace]

*find
[cm][mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ][random_7]
[if exp="f.r>=1 && f.r<=3" ][jump target="*walk_flower" ]
[elsif exp="f.r>=4 && f.r<=6" ][jump target="*walk_flower_b" ]
[else][jump target="*re" ][endif]

*walk
[syl][if exp="f.r==1" ][jump target="*walk1" ][elsif exp="f.r==2" ][jump target="*walk2" ]
[elsif exp="f.r==3" ][jump target="*walk3" ][elsif exp="f.r==4" ][jump target="*walk4" ]
[elsif exp="f.r==5" ][jump target="*walk5" ][elsif exp="f.r==6" ][jump target="*walk6" ]
[elsif exp="f.r==7" ][jump target="*walk7" ][elsif exp="f.r==8" ][jump target="*walk8" ]
[elsif exp="f.r==9" ][jump target="*walk9" ][elsif exp="f.r==10" ][jump target="*walk10" ]
[elsif exp="f.r==11" ][jump target="*walk11" ][elsif exp="f.r==12" ][jump target="*walk12" ]
[elsif exp="f.r==13" ][jump target="*walk13" ][elsif exp="f.r==14" ][jump target="*walk14" ]
[elsif exp="f.r==15" ][jump target="*walk15" ][elsif exp="f.r==16" ][jump target="*walk16" ]
[elsif exp="f.r==17" ][jump target="*walk17" ][elsif exp="f.r==18" ][jump target="*walk18" ]
[elsif exp="f.r==19" ][jump target="*walk19" ][elsif exp="f.r==20" ][jump target="*walk20" ]
[elsif exp="f.r==21" ][jump target="*walk21" ][elsif exp="f.r==22" ][jump target="*walk22" ]
[elsif exp="f.r==23" ][jump target="*walk23" ][elsif exp="f.r==24" ][jump target="*walk24" ]
[elsif exp="f.r==25" ][jump target="*walk25" ][elsif exp="f.r==26" ][jump target="*walk26" ]
[elsif exp="f.r==27" ][jump target="*walk27" ][elsif exp="f.r==28" ][jump target="*walk28" ]
[elsif exp="f.r==29" ][jump target="*walk29" ][elsif exp="f.r==30" ][jump target="*walk30" ]
[elsif exp="f.r==31" ][jump target="*walk31" ][elsif exp="f.r==32" ][jump target="*walk32" ]
[elsif exp="f.r==33" ][jump target="*walk33" ]
[elsif exp="f.r==34" ][jump target="*walk_flower_b" ][else][jump target="*walk_flower" ][endif]

;;トーク
*walk1
[f/s]啊、那裏、有一只麻雀。[lr_]
[f/re]它看起來好可愛的麻雀。[p_]
[jump target="*choice" ]
*walk2
[f/s]啊、那邊有蝴蝶在飛呢。[lr_]
[f/re]好漂亮…。[p_]
[jump target="*choice" ]
*walk3
[f/s][name]、你看那裏有只松鼠、[lr_]
[f/re]好可愛啊。[p_]
[f/c]啊、走掉了…。[p_]
[jump target="*choice" ]
*walk4
[f/c]啊、是毛蟲…。[lr_]
[f/re]它蠕動的樣子…看上去好嚇人啊。[p_]
[jump target="*choice" ]
*walk5
[f/c]啊、是鼻涕蟲…。[lr_]
[f/re]說起來、這一帶比其它地方潮濕呢。[p_]
[f/re]…要去其它地方看看嗎？[p_]
[jump target="*choice" ]
*walk6
[f/s]小鳥的聲音好美妙。[lr_]
[f/scl]從各個方向傳來了呢…。[p_]
[jump target="*choice" ]
*walk7
[f/s]這裏、有水在流呢。[p_]
[_]（這裏有水流在小河裏流淌著[p_]
[syl][f/scl]發出的閃光還有水聲都好棒…。[p_]
[jump target="*choice" ]
*walk8
[f/]啊、哦。[p_]
[_]（我抱住了險些摔倒的希露薇。[p_]
[syl][f/c]很抱歉、我有些走神…。[lr_]
[f/sp]非常感謝。[p_]
[jump target="*choice" ]
*walk9
[f/]這個蘑菇的顏色好鮮艷呢。[lr_]
[f/c]這個肯定、是有毒的吧。[p_]
[jump target="*choice" ]
*walk10
[f/]好大的蘑菇啊。[lr_]
[f/s]這可是能吃的蘑菇、所以要盡量多吃哦。[p_]
[jump target="*choice" ]
*walk11
[f/]這個、似乎在在書架的圖鑒裏見過呢。[lr_]
[name]、這是有用的東西嗎？[p_]
[_]（這個…很抱歉是雜草。[p_]
[syl][f/c]是這樣啊…我還以為是什麽有用的東西呢…。[p_]
[jump target="*choice" ]
*walk12
[f/]這個、似乎在在書架的圖鑒裏見過呢。[lr_]
[f/re][name]、這是有用的東西嗎？[p_]
[_]（這是…能做藥材料的草藥。[p_]
[syl][f/s]真的嗎？[lr_]
[f/ssp]我、[name]幫忙了嗎？[p_]
[jump target="*choice" ]
*walk13
[f/nt][_]（下雨了…。[p_]
[f/]啊、下雨了。[lr_]
[f/re]不過是小雨、看來很快就會停了…。[lr_]
[f/s]我們在樹下雨淋不到的地方玩吧。[p_]
[jump target="*choice" ]
*walk14
[f/s]雖然太陽很強、但是在樹蔭下依然涼爽呢。[p_]
[jump target="*choice" ]
*walk15
[f/s]這裏能從樹葉的縫隙裏看到天空呢。[lr_]
[f/re]太陽的光芒很美…。[p_]
[jump target="*choice" ]
*walk16
[f/s]風吹地好涼快啊。[lr_]
[f/re]在有樹的地方和街裏的風完全不一樣呢。[p_]
[jump target="*choice" ]
*walk17
[f/sp]和街道不同這裏很少有人會來、所以感覺就像是在和[name]獨處一樣…[p_]
[jump target="*choice" ]
*walk18
[f/s]…風停了、好安靜啊。[lr_]
[f/sp]簡直像是整個世界就只有我和[name]兩個人…。[p_]
[jump target="*choice" ]
*walk19
[f/]…那邊有什麽在動呢。[lr_]
[f/re]是什麽動物嗎…？[p_]
[jump target="*choice" ]
*walk20
[f/s]啊、好漂亮的花。[lr_]
[f/re]長著有趣的形狀、是在街裏完全看不到的花呢。[p_]
[jump target="*choice" ]
*walk21
[f/s]這裏沒有人也沒有建築物、[lr_]
[f/re]和在街裏散步的感覺完全不一樣呢。[p_]
[jump target="*choice" ]
*walk22
[f/]好大的樹啊。[lr_]
[f/re]要長這麽大一定花了很多年吧。[p_]
[jump target="*choice" ]
*walk23
[f/]大樹倒下來了。[lr_]
[f/re]不過不像是有人切斷的。[p_]
[_]（已經倒下很久的樣子了。[lr_]
可能是因為雷擊吧）[p_]
[jump target="*choice" ]
*walk24
[f/scl]在大自然裏被風吹拂著散步、[r]
[f/re]從沒想象過這種事呢。[p_]
[jump target="*choice" ]
*walk25
[f/s]在大自然裏散步也不錯呢。[lr_]
[f/sclp]如果是一個人的話感覺相當害怕、[r]
[f/re]但是和[name]在一起的話就感覺很棒呢。[p_]
[jump target="*choice" ]
*walk26
[f/]這裏的樹木已經完全把太陽遮住了、有一點昏暗。[lr_]
[f/clc]這裏有沒有可怕的蟲子讓人很在意呢。[p_]
[jump target="*choice" ]
*walk27
[f/p][name]、那個…能和我牽手嗎？[p_]
[jump target="*choice" ]
*walk28
[f/c]因為樹木占據了道路、開始變得很難走了。[lr_]
[f/re]我害怕摔倒…。[p_]
[jump target="*choice" ]
*walk29
[f/s]真的是很漂亮的森林呢。[lr_]
[f/c]但是、這裏沒有路燈、如果落日的話肯定是一片漆黑吧？[lr_]
[f/clc]那樣的話、好可怕呢…。[p_]
[jump target="*choice" ]
*walk30
[f/]我長大的地方的旁邊也有一片森林。[lr_]
[f/cl]但是、那裏據說經常有野狗。[p_]
[f/re]所以這種野外的地方一次都沒有去過的[p_]
[jump target="*choice" ]
*walk31
[f/]以前、森林給我的印象很可怕。[lr_]
[f/cl]…大概不只是森林吧。[p_]
[f/re]對於未知的事物多多少少都有些害怕。[lr_]
[f/sp]不過現在有、[name]在我身邊、我已經開始期待新的東西了。[p_]
[jump target="*choice" ]
*walk32
[f/s]這個東西這麽紅好漂亮呢。[lr_]
[f/]…這是有毒的嗎？[lr_]
[f/c]明明很好吃的樣子、真遺憾啊。[p_]
[jump target="*choice" ]
*walk33
[f/c]那裏、感覺有很多蟲子在飛來飛去。[p_]
[_]（似乎有動物的屍體、還是繞一下路吧。[p_]
[jump target="*choice" ]

*walk_flower
[_]（發現了桃紅色的花。[p_]
[syl][f/]相當鮮艷的花朵呢。[p_]
[if exp="f.book==1" ][random_5][eval exp="f.flower=f.flower+f.r" ]
[_]（上次得到的書上好像提到過這種藥草[lr_]再摘一些吧。[p_]
[jump target="*choice" ]
[else]
[_]（據說這個是用來做什麽的原料、不過是做什麽藥來著。[lr_]
似乎因為忙於工作忘掉了…。[p_]
[jump target="*choice" ][endif]

*walk_flower_b
[_]（發現了藍色的花。[p_]
[syl][f/s]柔和顏色漂亮的花呢。[p_]
[_]（這個植物能起到放松的效果。[lr_]
能沏茶也可以入藥。多摘一些吧。[p_]
[random_5][eval exp="f.flower_b=f.flower_b+f.r" ]
[jump target="*choice" ]

;;休憩
*walk_H
[cm][eval exp="f.last_act='wood_rest'" ]
[f/s]這裏、似乎能用來休息。[p_]
[_]（這裡比較寬敞。坐在這裡休息一下吧。[p]
[syl][f/re][name]、漫步一下吧。[p_]
[f/scl_nt]
[_]（我和希露薇兩人坐在了幹凈的草坪上。[p_]
（和希露薇依靠在身邊、緊緊抱住了我的手臂…。[p_]
[if exp="f.dress>=21 && f.dress<=29 && f.lust>=10" ]
[button target="*hand" graphic="s_menu/h_hand.png" width=461 x="888" y="200" ]
[button target="*H_wood" graphic="s_menu/kiss.png" width=461 x="888" y="300" ][s]
[else][eval exp="f.love=f.love+2" ]
…。[p_]
（和希露薇一起品味了自然的味道…。[p_]
[jump target="*choice" ][endif]

*hand
[cm][syl][f/ssp_nt]…ん。[p_]
[f/re][name]這樣做的話在家的外面也能很放鬆…。[p_]
[eval exp="f.love=f.love+2" ][jump target="*choice" ]


*H_wood
[cm][_]（正面一把抱住希露薇吻上了她的嘴唇。[p]
[syl][f/clp_nt]嗯…。[p_]
[stop_bgm]

[if exp="f.mood=='calm' && f.lust>=200 && f.m_wood>=2" ]
	（舌頭侵入到希露薇的小嘴中同時她也用小舌頭在回應著。[p_]
	[f/p]嗯…[name_h]…。[p_]
	[f/re][sex_name]…要做嗎？[p_]
	[f/sp]好、好的那麽就…。[p_]
[elsif exp="f.mood=='calm'" ]
	[f/p]…[name]？[p_]
	[f/re]或許、可以在這裏？[p_]
	[f/clp]雖然很害羞、[name]但是如果想做的話…。[p_]

[elsif exp="f.lust>=600 && f.m_wood>=2 || f.mood=='lust' && f.m_wood>=2" ]
	（嘴唇剛剛接觸她就把舌頭伸出來了。[p_]
	（托起希露薇的臉頰頭、品嘗這希露薇努力投入的悠遠的舌吻。[p_]
	[syl][f/cq]唔嗯…[name_h]。[p_]
	[f/re]我、忍不住了…。[p_]
	[sex_name]請開始吧…。[r]
	[f/re]現在就在這裏、請開始吧…。[p_]
[elsif exp="f.lust>=200 && f.m_wood>=1 || f.mood=='lust' && f.m_wood>=1" ]
	（舌頭侵入到希露薇的小嘴中同時她也用小舌頭回應這著。[p_]
	[f/p]嗯…[name_h]…。[p_]
	[f/re][sex_name]…要做嗎？[p_]
	[f/sp]好、那麼…。[p_]
[else]
	[f/p]…[name]？[p_]
	[f/re]或許、可以在這裏？[p_]
	[f/clp]雖然很害羞、[name]但是如果想做的話…。[p_]
[endif][bgm_MT]

[button storage="H/wood_f.ks" target="*select_c" graphic="ch/wood-front.png" x="0" y="200" ]
[button storage="H/wood_b.ks" target="*select_c" graphic="ch/wood-back.png" x="0" y="350" ][s]

[bgm_MT]
