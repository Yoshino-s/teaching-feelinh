;;
*a
[iscript]
delete f.hiroba_t; delete f.cafe; delete f.shop; delete f.first_wear; delete f.nade; delete f.intro_flag; delete f.trust; delete f.rape; delete f.talk;
[endscript]
[eval exp="f.step=6" ][eval exp="f.act='non'" ]
[if exp="f.m_first==1" ][eval exp="f.sex=1" ][eval exp="f.heavn=1" ][eval exp="f.cum=1" ][endif]

;;day_start
*day_start
[cm][day_reset][limit_status][clearstack]
;;台所イベント分岐--------------------------------------------------------------------------------
[if exp="f.act=='sexmax'" ]
[elsif exp="f.dress==0 && f.under_p==0 && f.under_b==0 && f.lust>=15 && f.neck>=11 && f.neck<=14" ][jump storage="H/morning.ks" target="*morning" ]
[elsif exp="f.neck==0 && f.under_p==0 && f.under_b==0 && f.lust>=15 && f.dress>=1000 && f.dress<=1029" ][jump storage="H/morning.ks" target="*morning" ][endif]
;;日始めのムード変更-----------------------------------------------------------------------------
*day_start_
[if exp="f.act=='sex' || f.act=='sexxx' || f.act=='morning' || f.act=='wood' || f.act=='nurse' || f.act=='sexmax'" ]
[eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][endif]

[eval exp="f.mood='def'" ]
[if exp="f.sexless_c==3" ][eval exp="f.r=1" ]
[elsif exp="f.sexless_c==2 || f.lust>=2000" ][random_3]
[elsif exp="f.sexless_c==1 || f.lust>=1000" ][random_6]
[else][eval exp="f.r=0" ][endif]
[if exp="f.r==1" ][eval exp="f.mood='lust'" ][endif]

[if exp="f.sexless_c>=2 || f.lust>=2000" ][jump target="*show_bace" ][endif]
[if exp="f.sexless==0 && f.sexless_c==0" ][random_3]
[elsif exp="f.lust>=1500" ][random_10]
[elsif exp="f.lust>=1000" ][random_8]
[else][random_6][endif]
[if exp="f.r==1" ][eval exp="f.mood='calm'" ][endif]

;;キャラ表示-----------------------------------------------------------------------------------------
*show_bace
[cm][limit_status][clearstack]
*show_syl
[cm][set_sit][f/s_nt][set_time_r][show_sit][show_repeat_role_room]
[if exp="f.last_act=='dress_up' && f.system_act==0" ][jump storage="talk/dress_talk.ks" target="*check" ][endif]
;;朝トーク--------------------------------------------------------------------------------------------
[if exp="f.act>=0 && f.act<=8" ][else][syl][bgm_SG][endif]

[if exp="f.act=='non'" ][eval exp="f.act=0" ]
	[f/ss]…早上好、[name][p_]
[elsif exp="f.act=='nonp'" ][eval exp="f.act=0" ]
	[f/p]…早上好、[name][p_]
[elsif exp="f.act=='wine'" ][eval exp="f.act=0" ]
	[f/p]…早上好、[name][p_]
	[f/clc]那個、昨天對不起。[lr_]
	[f/cp]我想因為是酒的原因、總覺得好像太放鬆了…。[p_]
[elsif exp="f.act=='sex'" ]
[eval exp="f.act=0" ]
	[f/clp]…早上好、[name][p_]
	[f/p]昨天…那個…、因為我太舒服了…[p_][f/re]似乎不知不覺就失去意識了呢。[p_]
	[f/clp]回過神來的時候、已經是早上了…。[lr_][f/re]很抱歉。[p_]
[elsif exp="f.act=='sexxx'" ]
[eval exp="f.act=0" ]
	[f/clp]…早上好、[name][p_]
	[f/cp]昨天、那個…擅自做了那種事…真對不起。[lr_]
	[f/clcp]我實在是抑制不住自己…。[p_]
	[f/clp]不過、昨天的[name]真的好厲害啊…♡[p_]
	[f/p]雖然已經記不清詳細的事情了…[r]
	但是…總感覺做了好多呢。[p_]
	[f/re]…我的腿現在還使不上力氣。[lr_]
	[f/clcp]今天要在家休息嗎？[p_]
[elsif exp="f.act=='morning'" ][eval exp="f.daily_act='apron_sex'" ]
[eval exp="f.act=3" ]
	[f/p]…已經,冷靜下來了。[lr_]
	[f/re]再一次早上好。[p_]
	[f/clp]已經接近中午了。[lr_]
	[f/re][name]從早上開始就在做…。[p_]
	[f/p]…雖然不討厭。[p_]
[elsif exp="f.act=='wood'" ]
[eval exp="f.act=0" ]
	[f/clp]…早上好、[name][p_]
	[f/p]非常感謝你昨天把我搬回家裏來。[p_]
	[f/re]可是、我居然在回家的路上累到睡著了…。[lr_]
	[f/clp]真的對不起啊…。[p_]
[elsif exp="f.act=='nurse'" ]
[eval exp="f.act=0" ]
	[f/clp]…早上好、[name][p_]
	[f/p]昨天把診療所的一張床單、弄髒了…。[lr_]
	[f/clp]儘量早起來在家裡洗…。[p_]
[elsif exp="f.act=='sexmax'" ]
[eval exp="f.act=3" ][eval exp="f.out='syl'" ]
	[f/clp]…早上好、[name][p_]
	[f/p]結果、一直做到了早上…。[p_]
	[f/clp]已經中午了…要吃什麽好呢。[p_]
	…。[p_]
	[f/cp]嗯…很抱歉、我暫時站不起來了。[lr_]
	[f/re]其實應該說、我的身體還在抖個不停呢…。[p_]
[endif]

;;メニュー表示--------------------------------------------------------------------------------------
*before_menu
[-][if exp="f.act>=7" ][jump target="*night" ][endif]
[mood_calc][set_time_r]
[clickable_touch][clickable_touch_scar][clickable_touch_hair]
[show_button]

;;夜分岐-----------------------------------------------------------------------------------------------
*night
[-][stop_bgm][eval exp="f.act='non'" ]

[if exp="f.mood=='lust'" ][eval exp="f.sexless=f.sexless+2" ]
[elsif exp="f.mood=='calm'" ][jump target="*day_end" ]
[else][eval exp="f.sexless=f.sexless+1" ][endif]

[if exp="f.v_wait==1 || f.v_wait==2" ][to_sexless2]
[elsif exp="f.v_wait==3 || f.v_wait==4" ][jump target="*cant_wait" ][endif]

[if exp="f.lust<=30" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][jump target="*day_end" ]
[elsif exp="f.lust<=500" ][jump target="*x" ][elsif exp="f.lust<=1000" ][jump target="*xx" ]
[else][jump target="*xxx" ][endif]


*x
[if exp="f.sexless>=4 && f.sexless_c==0" ][to_day_end_h]
[elsif exp="f.sexless>=4 && f.sexless_c==1" ][to_sexless1]
[elsif exp="f.sexless>=4 && f.sexless_c==2" ][to_sexless2]
[elsif exp="f.sexless>=4 && f.sexless_c==3" ][jump target="*cant_wait" ]
[elsif exp="f.sexless>=3 && f.sexless_c==3" ][jump target="*day_end_h" ]
[else][jump target="*day_end" ][endif]

*xx
[if exp="f.sexless>=3 && f.sexless_c==0" ][to_day_end_h]
[elsif exp="f.sexless>=3 && f.sexless_c==1" ][to_sexless1]
[elsif exp="f.sexless>=3 && f.sexless_c==2" ][to_sexless2]
[elsif exp="f.sexless>=3 && f.sexless_c==3" ][jump target="*cant_wait" ]
[elsif exp="f.sexless>=2 && f.sexless_c==3" ][jump target="*day_end_h" ]
[else][jump target="*day_end" ][endif]

*xxx
[if exp="f.sexless>=2 && f.sexless_c==0" ][to_day_end_h]
[elsif exp="f.sexless>=2 && f.sexless_c==1" ][to_sexless1]
[elsif exp="f.sexless>=2 && f.sexless_c==2" ][to_sexless2]
[elsif exp="f.sexless>=2 && f.sexless_c==3" ][jump target="*cant_wait" ]
[elsif exp="f.sexless>=1 && f.sexless_c==3" ][jump target="*day_end_h" ]
[else][jump target="*day_end" ][endif]

;;夜トーク--------------------------------------------------------------------------------------------
*day_end
[_]…[p_]（已經是晚上了…準備睡覺吧[p_]
[syl][f/s]…那麼睡覺吧。[lr_]
[if exp="f.wine_act=='done'" ]
[f/cl]啊恩…。[lr_]
[f/p]嗯、因為酒的緣故變得好困。[p_]
[elsif exp="f.daily_out=='cafe'" ]
[f/s]聽說咖啡果凍甜點很好吃。[lr_]
[f/ss]可以的話還想再一起去。[p_]
[elsif exp="f.daily_out=='dinner'" ]
[f/s]剛剛的店裡東西都很好吃呢。[lr_]
[f/ss]吃的飽飽的好像能夠很快睡著。[p_]
[elsif exp="f.daily_out=='shop_d'" ]
[f/s]今天又給我買衣服了謝謝。[lr_]
[f/ss]明天穿著這些衣服和[name]一起出門…就好了。[p_]
[elsif exp="f.daily_out=='shop_a'" ]
[f/s]今天又給我買了頭飾、謝謝。[lr_]
[f/ss]明天能戴著這些和[name]一起外出…就好了。[p_]
;[elsif exp="f.daily_out=='alone'" ]
;今天買東西辛苦了。[lr_]
;我也有好好的看家…
;[elsif exp="f.daily_out=='picnic'" ]
[elsif exp="f.work_c==1" ]
[f/s]今天工作辛苦了。[lr_]
[elsif exp="f.tea_time==2" ]
[f/s]今天下午泡了茶…是稍微悠閒的一天呢。[lr_]
[f/ss][name]買給我的[miyage]也很好吃。[p_]
[elsif exp="f.tea_time==1" ]
[f/s]今天下午泡了茶…是稍微悠閒的一天呢。[p_]
[elsif exp="f.daily_nade>=4" ]
[f/s]今天怎麼回事[name]一直撫摸我。[lr_]
[f/scp]我這麼的幸福真的可以嗎…。[p_]
[elsif exp="f.daily_wood>=2" ]
[f/ss]今天和[name]一起外出很開心。[lr_]
[f/s]在綠蔭中散步的時候好像覺得心情都變好了。[p_]
[elsif exp="f.daily_market>=4" ]
[f/ss]今天和[name]一起外出很開心。[lr_]
[f/s]那个市场每次去的时候都是不同的店、去过好几次都很新鲜呢。[p_]
[elsif exp="f.daily_hiroba>=4" ]
[f/ss]今天和[name]一起外出很開心。[lr_]
[f/s]在那個廣場里慢悠悠的度過真的很好呢。[p_]
[elsif exp="f.daily_act=='apron_sex'" ]
[f/clp]今天那個…[lr_]
[f/p]只有下午才能活動感覺時間有點短呢。[p_]
[elsif exp="f.daily_talk>=4" ]
[f/s]也不是說今天做了什麼[r]
和[name]聊了很多很開心呢。[p_]
[else]
[f/p]今天也一起…。[endif]

[f/ss]晚安…。[p_]
[_][black]…[p_][jump target="*day_start" ]

*day_end_h
…[p_]（已經到晚上了…準備睡覺吧[p_]
[syl][f/p_nt]…[p_]
[f/cl]啊、什麽事都沒有。[lr_]
[f/s]差不多該睡覺了呢。[p_]
[_][black]…[p_][jump target="*day_start" ]

*cant_wait
[f/cp_nt]…[p_]（已經到晚上了…準備睡覺吧[p_]
[syl][f/clcp]…[p_]
[_][jump storage="H/sexless3.ks" target="*sexless3" ]


;;トーク-----------------------------------------------------------------------------------------------
*talk1
[f/s][name]？[lr_]
[f/ssp]…最喜歡你了。[p_][after_talk]
*talk2
[f/clc]要一直、在一起哦…。[p_][after_talk]
*talk3
[f/scl]雖然出門很開心、但是這樣兩人在一起也很能讓人安心呢。[p_]
[eval exp="f.lust=f.lust-1" ][after_talk]
*talk4
[f/s]我、特別地幸福呢。[lr_]
[f/scl]只要能和[name]在一起、就算想起以前的事也不會痛苦。[p_][after_talk]
*talk5
[f/sp]…[name]。[p_][after_talk]
*talk6
[f/sp_nt]…。[p_]
[f/ssp_nt]…。[p_]
[_]（她微笑著面對著我[p_][after_talk]
*talk7
[f/clp_nt]…[p_]
[_]（她什麽都沒說地把身體靠了過來。[p_][after_talk]
*talk8
[f/s]只要能和[name]在一起我就能忘掉以前的事情。[p_][after_talk]
*talk9
[f/clc]只要[name]不在身邊的適合、我就會稍微有些不安呢。[lr_]
[f/c]你能盡可能地與我在一起嗎？[p_][after_talk]
*talk10
[f/clc]好討厭一個人的夜晚…。[lr_]
[f/c]請一定要和我在一起。[p_][after_talk]
*talk11
[f/s]只要能和[name]在一起、去哪裏我都很開心。[p_][after_talk]
*talk12
[f/scl][name]给我的東西全部是我的寶物。[lr_]
[f/sp]無論是物品、心境、還是回憶[p_]
[eval exp="f.lust=f.lust-1" ][after_talk]
*talk13
[f/sp]我一定會變成[name]更喜歡的樣子的。[lr_]
[f/re]我、一定會加油的。[p_][after_talk]
*talk14
[f/c]我的疤痕很醜嗎？[lr_]
[f/re][name]討厭的話、我會盡可能地隱藏的…[p_]
[eval exp="f.lust=f.lust-1" ][after_talk]
*talk15
[f/sclp]請不要離開我…。[p_][after_talk]
*talk16
[f/s]你想、讓我變成什麽樣呢？[lr_]
[f/re]只要[name]希望我怎麽做都可以。[p_][after_talk]
*talk17
[f/s]你渴了嗎？[lr_]
[f/re]需要我給你拿一些喝的東西嗎？[p_][after_talk]
*talk18
[f/s]你肚子餓了嗎？[lr_]
[f/re]如果是簡單的東西的話我還是會做的。[p_][after_talk]
*talk19
[f/]掃除、洗衣服、還有做飯、都好想做得更好…。[lr_]
[f/cl]我還能做些什麽呢…。[p_][after_talk]
*talk20
[f/s]如果不給你添麻煩的話、[name]工作上的事情我也能來幫忙嗎？[p_][after_talk]
*talk21
[f/c]那個服裝店的店員、感覺有點可怕吧？[lr_]
[f/re]怎麽說呢、感覺完全捉摸不透呢…。[p_][after_talk]
*talk22
[f/c][name]果然、也是喜歡艷麗豐滿而且充滿魅力的女人吧？[lr_]
[f/clc]初次和那個服裝店的店員小姐見面時、總感覺自己的身材好淒慘呢…。[p_][after_talk]
*talk23
[f/]如果再次與那個商人見面的話、一定要好好感謝他呢。[p_]
[f/cl]雖然他不算溫柔、但是並沒有對我做過分的事情、[lr_]
[f/s]而且、他能把我帶到這裏來真的是感激不盡呢。[p_][after_talk]
*talk24
[f/cl_nt]…。[p_]
[_]（…。[p_]
[syl][f/cp]…啊、很抱歉。[lr_]
[f/re]我稍微迷糊了一會兒[p_]
[eval exp="f.lust=f.lust-1" ][after_talk]
*talk25
[f/c]雖然能出來很開心、但是覺得[name]以外的人都有點可怕呢…。[p_][after_talk]
*talk26
[f/s]能被[name]收養、我真的是太幸運了。[lr_]
[f/sclp]以前的不幸還在我的心中徘徊…。[p_][after_talk]
*talk27
[f/]我可以看書架上的書嗎？[lr_]
[f/re]只是讀寫的話我還是會的。[p_]
[f/re]如果有知識的話也能更好地幫助[name]吧。[p_][after_talk]
*talk28
[f/][name]你沒有為自己買衣服嗎？[p_]
[f/c]明明為我買了這麽多衣服呢…。[p_][after_talk]
*talk
[f/s]無論是能有漂亮的衣服、[r]
還是能得到美味甜點的款待都讓人很開心呢。[p_]
[f/]你不這麽費心也是可以的哦？[lr_]
[f/ssp]我的話、只要有[name]在我身邊就足夠幸福了。[p_][after_talk]
*talk29
[f/]來這裏的患者們都沒什麽大病或者大傷呢、[r]
這個街真是和平呢。[p_]
[f/cl]我成長的地方的治安非常地差呢。[p_][after_talk]
*talk30
[f/]在來到這裏之前和我在一個房間的奴隸也有很多。[p_]
[f/c]有勞動的雜務奴隸。[lr_]
[f/re]還有晚上對象的奴隸。[lr_]
[f/clc]而我、只是為了享樂而被虐待的奴隸。[p_][after_talk]
*talk31
[f/]之前飼養我的人。[lr_]
[f/cl]說是因為事故而去世的、實際上是謊言。[p_]
[f/re]那個人被很多很多的人怨恨著…。[p_]
[after_talk]
*talk32
[f/]之前飼養我的人、[r]
在我之前也虐待著很多的奴隸並以此為樂。[p_]
[f/clc]…如果事件發生地再晚一些的話、[r]
我和那些人恐怕下場就一樣了吧。[p_][after_talk]
*talk33
[f/cl]自從我懂事的時候我就是一個人、完全不知道家人的存在。[lr_]
[f/c]…[name]、我把你當做家人、不會給你添麻煩吧？[p_][after_talk]
*talk34
[f/c]我的身體、雖然很窮酸、不過你不討厭吧？[lr_]
[f/re]不過、我認為我還在成長中哦…。[p_][after_talk]
*talk35
[f/s]只要想起[name]、我就非常開心。[lr_]
[f/clcp]因為太幸福簡直都要痛苦了。[p_][after_talk]
*talk36
[f/cp][name]…。[lr_]
[f/re]你可以…擁抱我嗎？[p_][after_talk]
;一線超えた;-----------------------;-----------------------;-----------------------;-----------------------
*talk37
[f/clp_nt]嗯…[p_]
[_]（嘴唇突然重疊在了一起[p_]
[mouth_up_little][after_talk]
*talk38
[f/cp]只是這樣在一起、身體就像火燒一樣灼熱…。[p_]
[after_talk]
*talk39
[f/sp]我是[name]的東西。[lr_]
[f/re]無論是心、還是身體…。[p_][after_talk]
*talk40
[f/cl]如果我出生在普通的家庭的話、說不定就不會有那麽辛酸的過去了吧。[lr_]
[f/re]可是、如果那樣的話就沒法和[name]相遇了呢。[p_]
[f/s]這麽想的話、我是孤兒這件事還真棒呢。[p_][after_talk]
*talk41
[f/ssp]只要有[name]在身旁、不管在哪裏做著什麽都幸福。[p_]
[after_talk]
*talk42
[f/clp]只要有[name]在身旁、過去的事情怎麽樣都好。[p_][after_talk]
*talk43
[f/clp]就算是奴隸也好、請讓我一直在你的旁邊。[p_][after_talk]
*talk44
[f/clp][name]。[lr_]
[f/re]如果想要我做那個的話、請千萬不要有任何的顧慮。[lr_]
[f/sp]我會盡最大努力侍奉的。[p_][after_talk]
*talk45
[f/]那個服裝店、不普通的衣服、不是衣服的東西也都有在賣呢。[p_]
[f/sp]如果[name]有什麽想讓我穿的話、我一定會穿的。[p_][after_talk]
*talk46
[f/cl][name]給予我了各種各樣的事情呢。[p_]
[f/s]溫柔、溫暖、甘甜、愉悅。[lr_]
[f/clp]…還有、舒服。[p_][after_talk]
;淫乱トーク;-----------------------;-----------------------;-----------------------;-----------------------
*talk47
[f/cp]最近…只要碰一下[name]、[r]
就感覺腹部下方就一緊呢。[p_][after_talk]
*talk48
[f/cp_nt]
[_]（她扭扭捏捏地摩擦著大腿[p_]
[syl]…。[p_]
（目光相對的時候眼睛變得更紅。[p_][after_talk]
*talk49
[f/cp][name]…　[p_]
[_]（她靠在了身邊、發出了一些奇怪的喃喃細語[p_][after_talk]
*talk50
[f/cp][name]、那個…。[lr_]
[f/clcp]…什麽…都沒有。[p_]
[_]（似乎有什麽事情不安。[lr_]
她喘個不停。[p_]
[after_talk]
*talk51
[f/clp_nt]恩…[p_]
[_]（突然嘴唇重疊在了一起。[lr_]
伴隨灼熱的吐息舌頭伸了進來。[p_]
[syl][f/re]ちゅ…れる[p_]
[mouth_up_little][after_talk]
*talk52
[f/clp_nt]嗯…[p_]
[_]（她什麽都沒說突然抱住了我的後背。[lr_]
有點高的體溫和焦躁的心跳聲從後背傳了過來。[p_][after_talk]
*talk53
[f/cp]請、和我在做、可以嗎？[p_]
[_]（在回答之前我抱住了她。[p_]
[syl][f/clp_nt]呼唔…嗯…。[p_]
[_]（我們的身體抱在了一起、[r]
小腹貼在我的身上慢慢的摩擦。[p_]
[add_lust_act][after_talk]
*talk54
[f/p_nt]
[_]（…[p_]
（我蹲下身把她的頭靠在了我的肩上、手撫摸著她的臉頰。[p_]
[syl][f/p]…啊姆[p_]
[_]（希露薇突然吮吸起我的手指[p_]　
[syl][f/clp_nt]嗯、揪…。[lr_]
[f/re]哈啊…揪…。[p_]　
[_]（就像嬰幼一樣開始吮吸起我的手指。[p_]
[mouth_up_little][after_talk]
*talk55
[f/cp]我現在、已經不能沒有[name]了…。[lr_]
[f/re]無論…什麽時候…。[p_]
[after_talk]
*talk56
[f/cp]我現在經常做向[name]請求的事情呢。[lr_]
[f/re]無論是心、還是身體…[p_][after_talk]
*talk57
[f/cp]最近、就算是大白天我也在想被[name]抱緊時候的樣子…。[lr_]
[f/re]我的陰道…已經忍受不了了…。[p_]
[after_talk]
*talk58
[f/p][name]？[lr_]
[f/re]只要[name]想要我的話什麽時候都可以…。[p_]
[f/p]只要稍微有一點那種想法的話、[r]
就千萬不要客氣哦？[p_][after_talk]
*talk59
[f/clcp]那個…其實我有件事瞞著[name]、那個…。[lr_]
[f/cp]我有在做自慰。[p_]
[f/clcp]可是、完全無法滿足、[lr_]
[f/re]這種多余的事情實在是太辛苦了…。[lr_]
[f/cp]如果[name]再不和我做的話我真的受不了…。[p_]
[after_talk]
*talk60
[f/cp][name]…。[p_]
[_]（希露薇從正面抱了過來。[p_]
[f/re][name]…。[name]…。[p_]
（反復地稱呼著我的名字[r]
她仰望著我、濕潤的瞳孔像是想要傳達什麽。[p_]
[eval exp="f.h_b=f.h_b+1" ][after_talk]
*talk61
[f/]外出時候大家都盯著我們、果然是因為這些疤痕吧…[p_]
[f/cl]不過只要[name]不在意的話我完全沒關系的。[p_]
[f/sp]對我來說[name]就是我的全部。[p_][after_talk]
*talk62
[f/cp]我有時候也認為自己都不像自己了…。[p_]
[f/re]…[name]你討厭這樣的女孩嗎？[r]
果然在迷茫吧…？[p_]
[after_talk]
*talk63
[f/cp]現在…只要我和[name]在一起就只在考慮H的事情了…。[p_]
[f/clcp]可是、當你不在的時候我又會很不安…。[p_][after_talk]
*talk64
[f/p]比起自己動、感覺還是讓[name]來做比較自然呢。[p_]
[f/clp]我的身體、已經是[name]的東西了…。[p_][after_talk]
*talk65
[f/p][name]做得越激烈、我就越感覺我是[name]的東西。[p_]
[f/clp]而且會因此感到控制不了的喜悅、果然很奇怪吧…。[p_][after_talk]
*talk66
[f/cp]我已經沒有其它的容身場所了、[r]
我已經不得不和[name]在一起了。[p_]
[f/re]請永遠和我在一起吧。永遠…永遠…。[p_][after_talk]
*talk67
[f/sp]只要[name]在我身邊我就很開心、只要被[name]觸摸我就感覺很幸福。[p_][after_talk]
*talk68
[f/][name]喜歡什麽樣的女人呢？[p_]
言語？姿態？舉止[r]
[f/c]我、到底應該怎麽做才能變成你喜歡的類型呢？[p_][after_talk]
