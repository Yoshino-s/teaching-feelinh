;;
*market
[cm][set_black][f/s_nt][bg_market][set_weather]
[act_win_stand][show_stand][bgm_AS]

[if exp="f.market==0" ][eval exp="f.market=1" ]
[_]（我們來到了從食品到加工品各種各樣的東西都能買到的集市。[p_]
（雖然普通的生活用品在附近就能直接買到、[r]
但是和希露薇一起的話就算只是看看珍奇的東西也很不錯呢。[p_]
[syl][f/]這裏居然有一個市場啊。[lr_]
[f/re]人好多…。[p_]
[f/s]好像會有好多東西啊。[p_]
[else][_]（來到了市場。[p_][endif]

*choice
[cm][eval exp="f.act=f.act+1" ][eval exp="f.love=f.love+1" ][eval exp="f.daily_market=f.daily_market+1" ]
[_][if exp="f.act==6" ][set_weather]
（星星點點的攤位開始進入我們的眼中…。[p_][jump target="*go_home" ][endif]
[set_time][set_weather]
[if exp="f.repeat_mode==1 && f.last_act=='market'" ][jump target="*re" ][endif]

[mod_win st="o/win/out_win_s.png" ]
[button target="*re" graphic="s_menu/look_around.png" width=461 x="888" y="140" ]
[button target="*leave" graphic="s_menu/leave_market.png" width=461 x="888" y="230" ]
[button target="*go_home" graphic="s_menu/go_home.png" width=461 x="888" y="320" ]
[cancelskip][s]

*re
[cm][eval exp="f.last_act='market'" ][mod_win st="00.png" ]
[random_5][if exp="f.book=='non' && f.r<=1" ][jump target="*book_event" ][endif]
[random_30][jump target="*market_lead" ]

*go_home
[cm][mod_win st="00.png" ]
[_]（今天就這樣結束吧。[p_]
[f/s][syl]好的、那我们现在回去吧。[p_]
[black]…[p_][bgm_SG][eval exp="f.out=1"][return_bace]

*market_lead
[cm][syl][if exp="f.r==1" ][jump target="*market1" ][elsif exp="f.r==2" ][jump target="*market2" ]
[elsif exp="f.r==3" ][jump target="*market3" ][elsif exp="f.r==4" ][jump target="*market4" ]
[elsif exp="f.r==5" ][jump target="*market5" ][elsif exp="f.r==6" ][jump target="*market6" ]
[elsif exp="f.r==7" ][jump target="*market7" ][elsif exp="f.r==8" ][jump target="*market8" ]
[elsif exp="f.r==9" ][jump target="*market9" ][elsif exp="f.r==10" ][jump target="*market10" ]
[elsif exp="f.r==11" ][jump target="*market11" ][elsif exp="f.r==12" ][jump target="*market12" ]
[elsif exp="f.r==13" ][jump target="*market13" ][elsif exp="f.r==14" ][jump target="*market14" ]
[elsif exp="f.r==15" ][jump target="*market15" ][elsif exp="f.r==16" ][jump target="*market16" ]
[elsif exp="f.r==17" ][jump target="*market17" ][elsif exp="f.r==18" ][jump target="*market18" ]
[elsif exp="f.r==19" ][jump target="*market19" ][elsif exp="f.r==20" ][jump target="*market20" ]
[elsif exp="f.r==21" ][jump target="*market21" ][elsif exp="f.r==22" ][jump target="*market22" ]
[elsif exp="f.r==23" ][jump target="*market23" ][elsif exp="f.r==24" ][jump target="*market24" ]
[elsif exp="f.r==25" ][jump target="*market25" ][elsif exp="f.r==26" ][jump target="*market26" ]
[elsif exp="f.r==27" ][jump target="*market27" ][elsif exp="f.r==28" ][jump target="*market28" ]
[elsif exp="f.r==29" ][jump target="*market29" ][elsif exp="f.r==30" ][jump target="*market30" ]
[elsif exp="f.r==31" ][jump target="*market31" ][elsif exp="f.r==32" ][jump target="*market32" ]
[elsif exp="f.r==33" ][jump target="*market33" ][endif]

;;トーク
*market1
[f/]這裏居然還賣酒呢。[p_]
[if exp="f.wine_c>=1" ]
[f/s]有嗎？我也會喝的。[p_]
[else][f/re]我雖然沒有喝過酒、不過應該很好喝吧？[p_]
[f/re]等以後長大了真想嘗一嘗呢。[p_][endif]
[jump target="*choice" ]
*market2
[f/c]這個地瓜？又長又紅呢。[p_]
[f/]甜薯？[lr_]
[f/re]地瓜、是甜的吧？[p_]
[f/re]要怎麽用它做菜呢…。[p_]
[jump target="*choice" ]
*market3
[f/]這裏在賣西紅柿呢。[p_]
[f/c]生的西紅柿…我不太喜歡呢。[p_]
[f/re]如果是西紅柿醬的話倒可以。[p_]
[jump target="*choice" ]
*market4
[f/s]咖啡的味道好香…。[lr_]
[f/re]這裏在賣咖啡豆呢。[p_]
[f/c]明明聞起來很香、泡出的咖啡卻那麽苦…。[p_]
[f/re]好羨慕能把它美味地喝下去的人。[p_]
[jump target="*choice" ]
*market5
[f/]這裏有紅蘿蔔呢…。[p_]
[f/re]紅蘿蔔是十字花科植物吧？[lr_]
[f/s]橙黃色的根莖真是不可思議呢。[p_]
[jump target="*choice" ]
*market6
[f/]好多種顏色的辣椒呢…。[p_]
[f/s]明明都是辣椒顏色卻這麽豐富、好有趣呢。[p_]
[f/re]而且這顏色看上去像是用油畫顏料塗上去呢。[lr_]
[f/cl]是不是用顏料作肥料來…怎麼可能。[p_]
[jump target="*choice" ]
*market7
[f/c]人真的好多啊。[lr_]
[f/p]可以、牽一下我的手嗎？[p_]
[jump target="*choice" ]
*market8
[f/s]在賣各種各樣的東西呢。[lr_]
[f/re]野菜、果物、罐頭還有其它小玩意。[p_]
[f/re]貨架上的東西豐富多彩散發出各種味道…。[p_]
[jump target="*choice" ]
*market9
[f/s]好多樣啊。[lr_]
[f/re]很多種的菜都會用到它吧？[p_]
[f/re]我也好想以後能做很多種菜。[p_]
[jump target="*choice" ]
*market10
[f/s]好大的南瓜呀。[p_]
[f/]不過想來想去它只能做餡餅這一種東西呢、[r]
還有什麽其它做法嗎？[p_]
[f/ss]如果把一個南瓜都做成餡餅的話、我和[name]是絕對吃不完的呢。[p_]
[jump target="*choice" ]
*market11
[f/]這裏有好多的香料呢。[p_]
[f/re]只有一點的話味道很棒、[r]
[f/re]但是這裏的味道好濃呢。[p_]
[f/c]各種意義上我都要被熏暈了。[p_]
[jump target="*choice" ]
*market12
[f/c]芹菜…說實話不喜歡它的味道呢。[p_]
[f/cl]竹筍什麽的、也有像這樣的青草味道吧？[lr_]
[f/c]不太喜歡草一樣的味道…。[p_]
[jump target="*choice" ]
*market13
[f/s]啊、擺着各種的果醬呢…。[p_]
[f/ss]瓶子裏的果醬有各種各樣的顏色真漂亮啊、[r]
只是想想它的味道都好開心、讓人忍不住了呢。[p_]
[jump target="*choice" ]
*market14
[f/]啊、有個橙子落在了這裏…。[lr_]
[f/re]嘿休、[p_]
[f/s]把它放回原來的地方吧。[p_]
[jump target="*choice" ]
*market15
[f/]這個是橙子[lr_]
[f/re]…不是呢。[p_]
[f/c]橙子？[lr_]
[f/re]看起來比橙子小、這個好吃嗎？[p_]
[jump target="*choice" ]
*market16
[f/s]紅彤彤的蘋果、味道好好聞呢。[p_]
[f/re]蘋果就這樣排在一起看着的話、[r]
真想不削皮就那樣直接咬下去呢[p_]
[jump target="*choice" ]
*market17
[f/s]啊、哈密瓜好便宜啊。[p_]
[f/cl]但是提着會好重[r]
[f/re]不是散步時順便買的東西呢。[p_]
[jump target="*choice" ]
*market18
[f/]完整的菠蘿…好大呢。[p_]
[f/c]這個、即使就這樣買回家的話似乎也很難削皮…。[lr_]
[f/re]不用特殊工具之類的能削掉嗎。[p_]
[jump target="*choice" ]
*market19
[f/s]這裏擺着好多葡萄呢…。[p_]
[f/re]誒、可以嘗一口嗎？[p_]
[f/ssp]…嗯好甜…♡[p_]
[jump target="*choice" ]
*market20
[f/s]好多草莓啊。[p_]
[f/re]雖然直接吃也很美味…[lr_]
[f/ss]想起蛋糕上的草莓了呢。[p_]
[jump target="*choice" ]
*market21
[f/]形狀有趣的水果？這個是。[lr_]
[f/re]楊桃？[p_]
[f/s]啊、可以切出星星的形狀。真的好有意思…。[p_]
[jump target="*choice" ]
*market22
[f/]這裏擺著很多香蕉呢。[p_]
[f/s]就算不用刀叉也可以直接吃好棒呢。[p_]
[f/re]好像也能用來做松餅或者蛋糕哦。[lr_]
[f/ss]以後我一定會試著給[name]做的。[p_]
[jump target="*choice" ]
*market23
[f/]啊、是櫻桃[lr_]
[f/re]…不是呢。[p_]
[f/c]這個是什麼？[lr_]
[f/re]…针叶樱桃？[p_]
[f/]香味和櫻桃也差好多呢。[lr_]
[f/re]不知道好不好吃？[p_]
[jump target="*choice" ]
*market24
[f/]這個有好多刺而且看起來好堅硬呢…。[lr_]
[f/re]叫什麽來著？[p_]
[f/re]榴蓮？[lr_]
[f/c]…聞起來雖然臭、味道卻是甜的嗎？[p_]
[f/re]無法想象是什麽味道呢…。[lr_]
[f/cl]雖然想嘗一嘗味道、但是這個東西的樣子真的好噁心…。[p_]
[jump target="*choice" ]
*market25
[f/s]感覺有好多顏色很漂亮呢、這個是什麽。[p_]
[f/re]啊、仔細看的話是蠟燭呢。[p_]
[f/]熏香蠟燭？[lr_]
[f/re]和為了發光做的蠟燭不一樣呢。[p_]
[jump target="*choice" ]
*market26
[f/s]這裏排着玻璃廚具呢。[p_]
[f/s]閃閃發光的好漂亮…。[p_]
[f/c]但是这么精致的话、[r]
[f/re]平時用起來有點提心吊膽呢。[p_]
[jump target="*choice" ]
*market27
[f/]啊、我們已經到盡頭了。[lr_]
[f/re]看來店鋪就到這裏了。[p_]
[f/s]我們回去看看別的地方吧。[p_]
[jump target="*choice" ]
*market28
[f/s]啊、這裏有各種茶葉在賣呢。[p_]
[f/re]雖然我喝不了咖啡、[r]
[f/re]但是能喝茶能夠想象味道真是很開心呢。[p_]
[jump target="*choice" ]
*market29
[f/]這個怪怪的是…裝飾品？這種東西也會有人賣呢。[p_]
[f/re]雖然看起來很有趣但是…[r]
[f/re]但是無論哪一個裝飾在家裏都不太合適呢。[p_]
[jump target="*choice" ]
*market30
[f/]這裏有香辛料的香味呢…。[p_]
[f/re]啊、這裏在賣肉幹。[lr_]
[f/c]…不過相當貴呢。[p_]
[f/cl]因爲自己做起來會很麻煩、所以考慮到社會平均勞動時間的話說不定會值這個價格呢。[p_]
[jump target="*choice" ]

;;医学書イベント
*book_event
[black][bgm_IF][set_weather][bg_market]
[chara_mod name="sub" time="1" storage="o/sub/smile.png" ]
[chara_show name="sub" time="100" wait="true" ]
#怪異的男人
哦呀、醫生你好啊。[p_]
[_]（我看向聲音傳來的地方、前些時候的男人就出現在那裏。[p_]
#怪異的男人
看起來、你和那個相處的很順利呢。[p_]
[_]（從他說話時瞥了希露薇一眼這點来看「那個」指的是她吧。[p_]
#怪異的男人
最近在這裏的生意相當順利。[lr_]
我會偶爾在這裏出入。[p_]
可能以後還會在這裏見面呢。[p_]
[chara_mod name="sub" time="1" storage="o/sub/def.png" ]
不過今日我遇到了一些小麻煩、[r]
我得特地把一部分貨物運到這裏來…。[p_]
現在正等著對方呢。[p_]
[_]（男人把手放在旁邊放著的大堆的貨物上、有些不爽地皺著眉頭。[p_]
[chara_mod name="sub" time="1" storage="o/sub/smile.png" ]
#怪異的男人
對了、機會難得你也來看看嗎？[p_]
我暫時走不開、[r]買家沒有預定的東西的話什麼都可以賣給你哦。[p_]
先生你感興趣的東西的話、是啊…這個怎麽樣？[p_]
[_]（男人從貨物堆中取出了一本書。[p_]
#怪異的男人
這個似乎是國外的藥物學的譯本、在這裏可是很少見的哦。[p_]
[_]（草草的翻開看了下、目光停留在某個條目上。[p_]
[_]（雖然大部份材料是沒聽說過的植物、[r]
但這種藥的話用附近可以得到的材料就能夠做出來…。[p_]
#怪異的男人
看來你很有興趣呢。[p_]
這個雖然不便宜…但多少會賣你便宜些的。[p_]
[_]（還有希露薇的事情還沒感謝他、就當作把多拿的治療費還給他來買書吧…。[p_]
#怪異的男人
哎呀呀。非常感謝你的購買。[p_]
哦、正好接我的人好像也到了。[p_]
如果有機會的話就再見吧。[p_]
[chara_hide name="sub" time="100" wait="true" ]
[_]（男人離開了。[p_]
[bgm_AS][set_stand][f/s_nt][bg_market][show_stand]
[act_win_stand][eval exp="f.book=1" ]
[jump target="*choice" ]

;;end
*leave
[cm][set_black][_]（離開了市場。[p_][eval exp="f.act=f.act-1" ]
[f/s_nt][bgm_ST][bg_town][set_weather][act_win_stand][show_stand]
[jump storage="act_with/hiroba.ks" target="*choice" ]

