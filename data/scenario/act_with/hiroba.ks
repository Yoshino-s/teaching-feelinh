;;
*hiroba
[cm][bgm_ST]
[if exp="f.last_act=='town'" ][else]
[set_black][f/s_nt][bg_town]
[set_weather][act_win_stand][show_stand][endif]
[eval exp="f.last_act='hiroba'" ]
[_]在噴水的边上與希露薇悠閒的坐在開廠的長椅上。[p_]

*choice
[cm][eval exp="f.act=f.act+1" ][eval exp="f.love=f.love+1" ][eval exp="f.daily_hiroba=f.daily_hiroba+1" ]
[_][if exp="f.act==6" ][set_weather]
（漸漸的太阳也開始傾斜了。[p_]
[jump target="*go_home" ][endif]

[set_time][set_weather]
[if exp="f.repeat_mode==1 && f.last_act=='hiroba'" ][jump target="*re" ][endif]
[mod_win st="o/win/sub_win.png" ]

[if exp="f.act<=4" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" width=461 x="888" y="310" ][endif]
[if exp="f.act==3 || f.act==4" ]
[button storage="act_with/cafe.ks" target="*cafe" graphic="s_menu/cafe.png" width=461 x="888" y="240" ][endif]
[button storage="act_with/market.ks" target="*market" graphic="s_menu/market.png" width=461 x="888" y="170" ]
[button target="*re" graphic="s_menu/stay_hiroba.png" width=461 x="888" y="100" ]
[button target="*go_home" graphic="s_menu/go_home.png" width=461 x="888" y="380" ]
[cancelskip][s]

*re
[cm][eval exp="f.last_act='hiroba'" ][mod_win st="00.png" ]
[random_21][jump target="*hiroba_lead" ]

*go_home
[cm][mod_win st="00.png" ]
[_]（今天在這裡結束吧。[p_]
[f/s][syl]好的、我们现在回家吧。[p_]
[eval exp="f.out=1"][black]…[p_][bgm_SG]
[return_bace]

*hiroba_lead
[cm]
[syl][if exp="f.r==1" ][jump target="*hiroba1" ][elsif exp="f.r==2" ][jump target="*hiroba2" ]
[elsif exp="f.r==3" ][jump target="*hiroba3" ][elsif exp="f.r==4" ][jump target="*hiroba4" ]
[elsif exp="f.r==5" ][jump target="*hiroba5" ][elsif exp="f.r==6" ][jump target="*hiroba6" ]
[elsif exp="f.r==7" ][jump target="*hiroba7" ][elsif exp="f.r==8" ][jump target="*hiroba8" ]
[elsif exp="f.r==9" ][jump target="*hiroba9" ][elsif exp="f.r==10" ][jump target="*hiroba10" ]
[elsif exp="f.r==11" ][jump target="*hiroba11" ][elsif exp="f.r==12" ][jump target="*hiroba12" ]
[elsif exp="f.r==13" ][jump target="*hiroba13" ][elsif exp="f.r==14" ][jump target="*hiroba14" ]
[elsif exp="f.r==15" ][jump target="*hiroba15" ][elsif exp="f.r==16" ][jump target="*hiroba16" ]
[elsif exp="f.r==17" ][jump target="*hiroba17" ][elsif exp="f.r==18" ][jump target="*hiroba18" ]
[elsif exp="f.r==19" ][jump target="*hiroba19" ][elsif exp="f.r==20" ][jump target="*hiroba20" ]
[elsif exp="f.r==21" ][jump target="*hiroba21" ][elsif exp="f.r==22" ][jump target="*hiroba22" ]
[elsif exp="f.r==23" ][jump target="*hiroba23" ][elsif exp="f.r==24" ][jump target="*hiroba24" ]
[elsif exp="f.r==25" ][jump target="*hiroba25" ][elsif exp="f.r==26" ][jump target="*hiroba26" ]
[elsif exp="f.r==27" ][jump target="*hiroba27" ][elsif exp="f.r==28" ][jump target="*hiroba28" ]
[elsif exp="f.r==29" ][jump target="*hiroba29" ][elsif exp="f.r==30" ][jump target="*hiroba30" ]
;[elsif exp="f.r==31" ][jump target="*hiroba31" ]
;[elsif exp="f.r==32" ][jump target="*hiroba32" ]
;[elsif exp="f.r==33" ][jump target="*hiroba33" ]
[endif]

;;トーク
*hiroba1
[f/s]就這樣子、走在街上覺得很新鮮。[lr_]
[f/re]來到[name]地方之前是沒有這樣的機會的啊。[p_]
[jump target="*choice" ]
*hiroba2
[f/s]和市場相比、這一帶人的流動緩慢。[p_]
[jump target="*choice" ]
*hiroba3
[f/s]…就這樣眺望著街道的風景、總覺得有一種不可思議的感覺。[p_]
[jump target="*choice" ]
*hiroba4
[f/cl]這個廣大的世界、各種各樣的人生存著。[lr_]
[f/]我到[name]的地方來之前的生活很狹窄不自由、[r]
知道這樣沒有真實感。[p_]
[jump target="*choice" ]
*hiroba5
[f/s]人群中有[name]旁邊、不至於那麼不安。[p_]
[jump target="*choice" ]
*hiroba6
[f/c]我不能闊步而行、走長得路有點累。[lr_]
[f/ss]但是、這是第一次注意到腰下才發覺的[name]和我一起出門是快樂的。[p_]
[jump target="*choice" ]
*hiroba7
[f/s]噴泉好漂亮啊。[p_]
[f/re]水噴流出來…[r]
只是這樣就感覺到永遠都會看下去。[p_]
[jump target="*choice" ]
*hiroba8
[f/]第一次來這個街道看噴水。[lr_]
[f/cl]我在以前的地方…。[p_]
[f/]沒有機會看到街道的情况、所以我不知道。[p_]
[jump target="*choice" ]
*hiroba9
[f/]這個街道的氣氛真是不可思議啊。[lr_]
[f/scl]建築物也有很多、人的流動也不慢、[r]
總感覺好像慢慢的時間流逝了。[p_]
[jump target="*choice" ]
*hiroba10
[f/s_nt]…[p_]
[_]（希露薇平靜的臉上眺望著街道。[p_]
[jump target="*choice" ]
*hiroba11
[f/ss]…[name][p_]
[_]（希露薇悄悄地握住了我的手。[p_]
[jump target="*choice" ]
*hiroba12
[f/cl]仔細看這個街上也有貧困的差异。[lr_]
[f/s]但是、偶爾會有人注意到有錢人的人、而生活有困難的人卻不怎麼看到的。[p_]
[jump target="*choice" ]
*hiroba13
[_]（希露薇眺望著流動的雲。[p_]
[f/s]…清楚的看見天空、漂亮的廣場。[p_]
[jump target="*choice" ]
*hiroba14
[f/cl]從前、「這個人不害怕讓人恐怖的事情」、[r]
但是在看不認識的人的時候我會很害怕。[p_]
[f/s]現在那樣的事遺並不是消失了、[r]
不過旁邊有[name]在就少許放心。[p_]
[jump target="*choice" ]
*hiroba15
[f/scl]雖然離開了店但也很開心、[r]
就這樣在行人少的地方慢慢地走、坐著坐著休息的人也很平靜。[p_]
[jump target="*choice" ]
*hiroba16
[_][f/nt]（突然與希露薇的眼睛相接。[p_]
[syl][f/s_nt]…？[p_]
[jump target="*choice" ]
*hiroba17
[f/]現在的我就這樣和你走在一個人的街上嗎。[lr_]
[f/scl]不是誰的奴隸、普通的人。[p_]
[jump target="*choice" ]
*hiroba18
[f/][name]的家是街道開始稍微偏了的地方呢。[lr_]
[f/re]住在人多的地方也有困難的事情嗎？[p_]
[jump target="*choice" ]
*hiroba19
[f/]我的衣服和街是完全不同的景色。[p_]
[f/cl]那個街上有一副可怕的臉和疲勞的人很多、[r]
時常聽到了怒吼的聲音和打架的聲音。[lr_]
[f/]自由出門了也不太想步行…。[p_]
[jump target="*choice" ]
*hiroba20
[f/s]有人在路上彈樂器嗎。[lr_]
[f/]是小提琴…吧？[p_]
[f/s]音樂和樂器的事不瞭解、不過聲音好漂亮的。[p_]
[jump target="*choice" ]
*hiroba21
[f/s_nt]…。[p_]
[_]（微風搖動著希露薇的[p_]
[jump target="*choice" ]
*hiroba22
…
希露薇坐在噴水池上擺動著雙腳。
[jump target="*choice" ]
*hiroba23
從側面吹的風讓希露薇輕輕地的閉上了雙眼。
[jump target="*choice" ]
*hiroba24
[jump target="*choice" ]
*hiroba25
[jump target="*choice" ]
*hiroba26
[jump target="*choice" ]
*hiroba27
[jump target="*choice" ]
*hiroba28
[jump target="*choice" ]
*hiroba29
[jump target="*choice" ]
*hiroba30
[jump target="*choice" ]


