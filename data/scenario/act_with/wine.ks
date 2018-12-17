;;
*wine
[cm][eval exp="f.drunk=0" ][eval exp="f.wine_act=0" ][eval exp="f.situation='drink'" ]
[eval exp="f.last_act='add_wine'" ]
[chara_mod name="window" time="0" storage="o/win/act_win_.png" ]

[_][if exp="f.wine_c==0" ]
（買了酒和希露薇試試看。[p_]
[syl][f/]酒…？[lr_]
[f/s]和我一起嗎？[p_]
[_]（少量的倒入杯中、除以水交给了希露薇。[p_]
[syl][f/]嗯、覺得非常甜。[lr_]
[f/s]好香的味道啊。[p_]
[f/]…泡著罕見水果的甜酒？[lr_]
[f/re]也有那樣的東西嗎。[p_]
[f/s]那麼、我喝了。[lr_]
[f/ss]啊…乾杯。[p_]
[f/cl]嗯…。[p_]
[f/s]感覺好像甜果汁、也有酒的香味。[lr_]
[f/ss]非常好喝美味。[p_][eval exp="f.wine_act=1" ]
[else]
（和希露薇一起享受酒。[p_]
[syl][f/s]可以跟我在一起嗎？[lr_]
好的、我喝了。[p_]
[_]（少量的倒入杯中、加点水交给了希露薇。[p_]
[endif]
[eval exp="f.wine_left=f.wine_left-1" ][eval exp="f.drunk=f.drunk+1" ]

*choice
[cm][if exp="f.wine_act==0" ][eval exp="f.wine_act=1" ]
[syl][f/ss]啊、乾杯。[p_]
[f/cl]唔…。[lr_][f/ssp]真好喝。[p_][endif]

[_][if exp="f.wine_act>=8" ]（已經很晚了。[p_][jump target="*stop" ][endif]
[mood_calc][set_time_w]
[if exp="f.repeat_mode==1 && f.last_act=='wine_talk'" ][jump target="*talk" ][endif]

[clickable_touch]
[if exp="f.drunk<=3" ][clickable_touch_scar][clickable_touch_hair][endif]
[button target="*talk" graphic="s_menu/talk.png" x="750" y="180" ]
[button target="*re" graphic="s_menu/add_alc.png" x="750" y="280" ]
[button target="*stop" graphic="s_menu/finish.png" x="750" y="380" ]
;[if exp="f.mood=='lust' && f.dress>=60 && f.dress<=69" ][button storage="H/kimono.ks" target="*b" graphic="s_menu/bed_x.png" x="750" y="480" ][endif]

[cancelskip][s]

*choice_
[cm][eval exp="f.wine_act=f.wine_act+1" ][eval exp="f.love=f.love+1" ][jump target="*choice" ]

*re
[cm][eval exp="f.last_act='add_wine'" ]
[_][if exp="f.wine_left==0" ][eval exp="f.wine_act=f.wine_act-1" ]（瓶子已經空了。[p_][jump target="*choice_" ][endif]
[if exp="f.drunk>=4" ][eval exp="f.wine_act=f.wine_act-1" ]（不要再喝酒了吧。[p_][jump target="*choice_" ][endif]

[syl][if exp="f.drunk>=3" ][f/sp][else][f/s][endif]
可以再來一瓶嗎？[lr_]
[if exp="f.drunk>=3" ][f/ssp][else][f/ss][endif]
那。謝謝你了。[p_]
[_]（希露薇的玻璃杯里倒入酒。[p_]
[if exp="f.drunk>=3" ][f/sclp_nt][else][f/scl_nt][endif]唔…。[lr_]
[eval exp="f.drunk=f.drunk+1" ][eval exp="f.wine_left=f.wine_left-1" ]
[if exp="f.drunk>=3" ][f/ssp][else][f/ss][endif]嗯、真好喝。[p_]
[jump target="*choice" ]

;;トークリード
*talk
[cm][eval exp="f.last_act='wine_talk'" ]
[if exp="f.drunk>=3 && f.mood>='lust'" ][random_31][jump target="*wine_lead_b" ]
[elsif exp="f.drunk>=3" ][random_22][jump target="*wine_lead_b" ]
[elsif exp="f.wine_c>=2" ][random_20][jump target="*wine_lead_a" ]
[else][random_18][jump target="*wine_lead_a" ][endif]

*wine_lead_a
[cm][syl][if exp="f.r==1" ][jump target="*wine_a1" ][elsif exp="f.r==2" ][jump target="*wine_a2" ]
[elsif exp="f.r==3" ][jump target="*wine_a3" ][elsif exp="f.r==4" ][jump target="*wine_a4" ]
[elsif exp="f.r==5" ][jump target="*wine_a5" ][elsif exp="f.r==6" ][jump target="*wine_a6" ]
[elsif exp="f.r==7" ][jump target="*wine_a7" ][elsif exp="f.r==8" ][jump target="*wine_a8" ]
[elsif exp="f.r==9" ][jump target="*wine_a9" ][elsif exp="f.r==10" ][jump target="*wine_a10" ]
[elsif exp="f.r==11" ][jump target="*wine_a11" ][elsif exp="f.r==12" ][jump target="*wine_a12" ]
[elsif exp="f.r==13" ][jump target="*wine_a13" ][elsif exp="f.r==14" ][jump target="*wine_a14" ]
[elsif exp="f.r==15" ][jump target="*wine_a15" ][elsif exp="f.r==16" ][jump target="*wine_a16" ]
[elsif exp="f.r==17" ][jump target="*wine_a17" ][elsif exp="f.r==18" ][jump target="*wine_a18" ]
[elsif exp="f.r==19" ][jump target="*wine_a19" ][elsif exp="f.r==20" ][jump target="*wine_a20" ][endif]

*wine_lead_b
[cm][syl][if exp="f.r==1" ][jump target="*wine_b1" ][elsif exp="f.r==2" ][jump target="*wine_b2" ]
[elsif exp="f.r==3" ][jump target="*wine_b3" ][elsif exp="f.r==4" ][jump target="*wine_b4" ]
[elsif exp="f.r==5" ][jump target="*wine_b5" ][elsif exp="f.r==6" ][jump target="*wine_b6" ]
[elsif exp="f.r==7" ][jump target="*wine_b7" ][elsif exp="f.r==8" ][jump target="*wine_b8" ]
[elsif exp="f.r==9" ][jump target="*wine_b9" ][elsif exp="f.r==10" ][jump target="*wine_b10" ]
[elsif exp="f.r==11" ][jump target="*wine_b11" ][elsif exp="f.r==12" ][jump target="*wine_b12" ]
[elsif exp="f.r==13" ][jump target="*wine_b13" ][elsif exp="f.r==14" ][jump target="*wine_b14" ]
[elsif exp="f.r==15" ][jump target="*wine_b15" ][elsif exp="f.r==16" ][jump target="*wine_b16" ]
[elsif exp="f.r==17" ][jump target="*wine_b17" ][elsif exp="f.r==18" ][jump target="*wine_b18" ]
[elsif exp="f.r==19" ][jump target="*wine_b19" ][elsif exp="f.r==20" ][jump target="*wine_b20" ]
[elsif exp="f.r==21" ][jump target="*wine_b21" ][elsif exp="f.r==22" ][jump target="*wine_b22" ]
[elsif exp="f.r==23" ][jump target="*wine_c1" ][elsif exp="f.r==24" ][jump target="*wine_c2" ]
[elsif exp="f.r==25" ][jump target="*wine_c3" ][elsif exp="f.r==26" ][jump target="*wine_c4" ]
[elsif exp="f.r==27" ][jump target="*wine_c5" ][elsif exp="f.r==28" ][jump target="*wine_c6" ]
[elsif exp="f.r==29" ][jump target="*wine_c7" ][elsif exp="f.r==30" ][jump target="*wine_c8" ]
[elsif exp="f.r==31" ][jump target="*wine_c9" ][elsif exp="f.r==32" ][jump target="*wine_c10" ][endif]

;;トーク
*wine_a1
[f/]酒也有各種各樣的種類喲。[lr_]
[f/s]要是這種甜的果汁的話就容易喝了。[p_]
[jump target="*choice_" ]
*wine_a2
[f/]喝過、以前喝過一口紅葡萄酒[r]
[f/clc]覺得太涩了没感觉。[p_]
[f/s]但是、覺得味道好香、[r]
[f/re]總有一天舌頭變得成熟、喝葡萄酒也會變得開心起來的。[p_]
[jump target="*choice_" ]
*wine_a3
[f/ss]喝了酒的話總成了大人的感覺。[p_]
[jump target="*choice_" ]
*wine_a4
[f/scl]身體稍微有些暖和了。[p_]
[jump target="*choice_" ]
*wine_a5
[f/scl]明明是冰涼的飲料、經過喉嚨卻覺得溫暖。[lr_]
[f/s]不思議啊。[p_]
[jump target="*choice_" ]
*wine_a6
[f/s][name]你喜歡什麼樣的酒嗎。[lr_]
[f/ss][name]如果你喜歡的話、我也什麼時候嘗試一下…之類的。[p_]
[jump target="*choice_" ]
*wine_a7
[f/ssp_nt]…乎乎♡[p_]
[jump target="*choice_" ]
*wine_a8
[f/ss]和誰一起享受酒、是大人的奢侈感。[p_]
[jump target="*choice_" ]
*wine_a9
[f/cl]嗯…。[lr_]
[f/ssp]非常美味♡[p_]
[jump target="*choice_" ]
*wine_a10
[f/s]一邊喝酒一邊吃東西哦、[lr_]
[f/re]乳酪、橄欖等。[p_]
[f/]與酒的不同配的東西也不同、[r]
[f/s]這種酒是配什麽都合適吧。[p_]
[jump target="*choice_" ]
*wine_a11
[f/]也不是因為以前吃過很多種下酒菜、[lr_]
[f/cl]只不過像茶點如此美味的東西比較少。[p_]
[f/]是我喜好的問題嗎？[p_]
[jump target="*choice_" ]
*wine_a12
[f/clp]感覺有點…困了。[lr_]
[f/p]…迷糊在酒裏嗎？[p_]
[jump target="*choice_" ]
*wine_a13
[f/ss]謝謝你、很美味的酒。[name][p_]
[jump target="*choice_" ]
*wine_a14
[f/cl]聞了瓶子就覺得有些味道。[lr_]
[f/s]是非常濃烈的酒啊、用水稀釋味道也不怎麼薄。[p_]
[jump target="*choice_" ]
*wine_a15
[f/cl]討厭沉溺在酒中的人。[lr_]
[f/s]不用擔心我。[p_]
[jump target="*choice_" ]
*wine_a16
[f/s]我不知道有這麼甜的酒。[lr_]
[f/scl]一定還有很多其它我不知道的酒吧。[p_]
[jump target="*choice_" ]
*wine_a17
[f/]因為酒的不同、酒精强度似乎不同、[r]
這是多少呢？[lr_]
[f/s]我沒那麼強悍所以只能喝這麼多。[p_]
[jump target="*choice_" ]
*wine_a18
[f/s]說酒的玻璃瓶子。[lr_]
[f/re]不同形狀和大小不同的漂亮啊。[p_]
[f/re]空瓶子也不捨得丟棄。[p_]
[jump target="*choice_" ]

*wine_a19
[f/s]雖然說起來喝的量不多、[r]
在現在的地方喝酒的第二天頭疼的事也不是沒有。[p_]
[f/re]很多人第二天好像喝醉了。[p_]
[jump target="*choice_" ]
*wine_a20
[f/cl]最初有點酒和果汁有著不同的不協調感、[lr_]
[f/s]然後就習慣了。[p_]
[jump target="*choice_" ]



*wine_b1
[f/sp][name]？[lr_]
[f/ssp]…什麽都沒有♡[p_]
[jump target="*choice_" ]
*wine_b2
[f/ssp]酒很好喝啊…[name]♡[p_]
[jump target="*choice_" ]
*wine_b3
[f/ssp][name]〜♡[lr_]
[f/shp]…[name]♡[p_]
[jump target="*choice_" ]
*wine_b4
[f/ssp]好喜歡、[name]♡[lr_]
[f/re]因為太喜歡你了所以說喜歡你不行嗎？[p_]
[jump target="*choice_" ]
*wine_b5
[f/sp]可以更緊嗎？[lr_]
[f/ssp]緊跟著呢♡[p_]
[_]（猫狗一樣地摩擦身體…）[p_]
[jump target="*choice_" ]
*wine_b6
[f/sclp]幸福…我是幸福的呦♡[lr_]
[f/sp]因為[name]在的我的♡[p_]
[jump target="*choice_" ]
*wine_b7
[f/clp]曳…。[lr_]
[f/ssp]乎乎、對不起♡[p_]
[jump target="*choice_" ]
*wine_b8
[f/p][name]？有什麼想要做的事嗎？？[p_]
[f/sp]就是我？[lr_]
[f/ssp]我願意聽[name]的♡[p_]
[jump target="*choice_" ]
*wine_b9
[f/clp]有點熱啊…、[lr_]
[f/sp]不熱嗎？[p_]
[jump target="*choice_" ]
*wine_b10
[f/sp][name]如果再喝一瓶如何？[lr_]
[f/ssp]啊、我斟酒嗎♡[p_]
[jump target="*choice_" ]
*wine_b11
[f/ssp][name]…請撫摸我的頭♡[lr_]
[f/sp]啊、就算先…那就請你撫摸我吧♡[p_]
[jump target="*choice_" ]
*wine_b12
[f/ssp]我將來會成為一名醫生为[name]帮忙的。[p_]
[f/cp]…啊、不對。[lr_]
[f/ssp]成為護士小姐幫[name]的忙♡[p_]
[jump target="*choice_" ]
*wine_b13
[f/ssp][name]…♡[p_]
[_]（希露薇從正面向這邊抱住了。[p_]
[jump target="*choice_" ]
*wine_b14
[f/ssp][name]〜♡[p_]
[_]（幸福嬉戏。[p_]
[jump target="*choice_" ]
*wine_b15
[f/clp][name]…♡[p_]
[_]（身子和腳緊緊地抱著軀幹、臉頰在胸口這邊。[p_]
[syl][f/hcp][name]也…也更。[p_]
[jump target="*choice_" ]
*wine_b16
[f/ssp]哪裡都有說你？[lr_]
[f/re]絕對不離開…♡[p_]
[jump target="*choice_" ]
*wine_b17
[f/sclp]總有點發困了啊…♡[p_]
[jump target="*choice_" ]
*wine_b18
[f/ssp]身體和心都溫暖了…♡[p_]
[jump target="*choice_" ]
*wine_b19
[f/sclp]乎乎總覺得…。[lr_]
[f/re]乎乎…。[p_]
[jump target="*choice_" ]
*wine_b20
[f/sclp][name]…♡[p_]
[_]（臉埋在胸口這裡。[p_]
嘻…。[l]
[f/ssp]哎、[name]的味道♡[p_]
[jump target="*choice_" ]
*wine_b21
[f/ssp][name]〜♡[lr_]
[f/re]親親♡我♡[p_]
[jump target="*choice_" ]
*wine_b22
[f/sp]身體已經暖和了。[lr_]
[f/re][name]也讓我們來暖和吧？[lr_]
[f/ssp]嘿♡[p_]
[_]（從抱這邊的希露從薇傳來溫暖的體溫。[p_]
[jump target="*choice_" ]


*wine_c1
[f/ssp][name]、請接吻。[p_]
[f/sclp_nt]…嗯、嗯！。[p_]
[_]（閉上眼睛等待著這邊的反應。[p_]
[jump target="*choice_" ]
*wine_c2
[f/cp][name]、去服裝店看見了服裝店的事情吧…。[lr_]
[f/clp]當然不是店員之類的…。[p_]
[f/cp]啊、好嗎。[p_]
[f/re]我將來也會有那一样的。[lr_]
[f/hcp]所以請只看我。[p_]
[jump target="*choice_" ]
*wine_c3
[f/clp]…[name]♡[p_]
[_]（抱著臉被深深的接吻。[p_]
[syl]…嗯、親。[p_]
哈…這、是…。[p_]
[jump target="*choice_" ]
*wine_c4
[f/ssp]啊姆…♡[p_]
[_]（希露薇一從正面抱住就含住了我的後頸。[p_]
[syl][f/shp]我被…哈。[name]的味道…♡[p_]
[jump target="*choice_" ]
*wine_c5
[f/sp]酒、好喝嗎？[lr_]
[f/shp]這裡的酒、很美味呦。你看♡[p_]
[_]（希露薇就那樣含著酒重疊著嘴唇。[p_]
[syl][f/clp_nt]嗯…嗯啊…♡[p_]
[_]（希露薇直接糾纏著舌頭喝幹從嘴裡流出來的酒。[p_]
[syl]嗯…厄……乎。[lr_]
[f/shp]好喝嗎？[p_]
[lr_]…[name]？[lr_]
[f/ssp]下次我也想[name]喝酒♡[p_]
[jump target="*choice_" ]
*wine_c6
[f/shp][name]？[r]
我這次、更喜歡你了呦♡[p_]
[_]（說這話希露薇就把身體靠了過來。[p_]
[jump target="*choice_" ]
*wine_c7
[f/hcp]身體好熱啊、[name]…。[p_]
[_]（眼睛咪着朝上看了過來。[p_]
[jump target="*choice_" ]
*wine_c8
[f/hcp][name]…♡[name]…♡♡[p_]
[_]（在手腕里露出了小小的難過的聲音。[p_]
[jump target="*choice_" ]
*wine_c9
[f/hcp][name]…摸到了…。[p_]
[f/re]請觸摸…我。[p_]
[jump target="*choice_" ]


*stop
[cm]
（今天就到這裡吧。[p_]
[syl][if exp="f.drunk>=3" ]
[f/p]今天就這樣結束了啊？[lr_]
[f/ssp]好。那就收拾玻璃杯了吧。[p_]
[f/p]哎呀…。[p_]
[f/clp]嗯、因為突然站起來所以脚沒有力氣。[lr_]
[f/sp]沒關係的。[p_]
[eval exp="f.act='wine'" ][eval exp="f.sexless=f.sexless+1" ][eval exp="f.wine_c=f.wine_c+1" ]
[stop_bgm][black]
[_]（…过了一會兒希露薇就睡著了。[p_]
（把她搬到床上自己也去睡覺了。[p_]
…。[p_][day_end]

[else]
[f/]嗯、是嗎？[lr_]
[f/ss]好、那謝謝款待。[p_]
[f/s]玻璃杯我自己整理吧。[p_]
[_][black]…。[p_]
[set_sit][f/s_nt][set_time_r][show_sit]
[eval exp="f.wine_act='done'" ][eval exp="f.wine_c=f.wine_c+1" ]
[jump storage="talk/step6.ks" target="*night" ][endif]

