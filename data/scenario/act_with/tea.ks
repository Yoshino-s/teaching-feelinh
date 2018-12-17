;;
*tea
[cm][_]（飯後。來喝一杯茶吧。[p_]
[eval exp="f.tea_time=1" ][eval exp="f.last_act='tea'" ]
[if exp="f.flower_b>=1" ][else][eval exp="f.flower_b=0" ][endif]
[if exp="f.flower<=0 && f.flower_b<=0 || f.lust<=5" ][jump target="*normal" ][endif]

（要放入什麽香料呢。[p_]
所持数-桃紅色的花（[emb exp="f.flower"]、藍色的花（[emb exp="f.flower_b"]
[if exp="f.flower>=1" ][button target="*tea-p" graphic="menu/t_pink.png" x="645" y="140" ][endif]
[if exp="f.flower_b>=1" ][button target="*tea-b" graphic="menu/t_blue.png" x="645" y="225" ][endif]
[button target="*normal" graphic="menu/t_non.png" x="645" y="310" ][cancelskip][s]

*flower_talk
[syl][f/]你是在沏茶嗎？[lr_]
[f/re]如果你說的話我準備了…。[p_]
[f/s]但是、謝謝你。[lr_]
[f/re]那麼一起吧。[p_]
[f/cl_nt]…。[p_][return]

;;桃紅色的花
*tea-p
[cm]
（放入多少？[p_]
所持数-桃紅色的花（[emb exp="f.flower"]
[if exp="f.mood=='calm'" ][eval exp="f.mood='def'" ][endif]
[button target="*little-p" graphic="menu/t_little.png" x="645" y="140" hint="花を1つ使います" ]
[if exp="f.flower>=3" ][button target="*mid-p" graphic="menu/t_mid.png" x="645" y="225" hint="花を3つ使います" ][endif]
[if exp="f.flower>=5" ][button target="*lot-p" graphic="menu/t_lot.png" x="645" y="310" hint="花を5つ使います" ][endif][cancelskip][s]

*little-p
[cm][call target="*flower_talk" ][eval exp="f.flower=f.flower-1" ][eval exp="f.lust_act=f.lust_act+4" ]
[eval exp="f.lust=f.lust+5" ]
[f/s]是微微甜香味的茶啊。[lr_]
[f/re]非常美味…。[p_]
[after_tea]
*mid-p
[cm][call target="*flower_talk" ][eval exp="f.flower=f.flower-3" ][eval exp="f.lust_act=f.lust_act+6" ]
[eval exp="f.lust=f.lust+20" ]
[f/s]甘甜的香味、非常的美味。[lr_]
[f/sp]總覺得身體暖和起來了。[p_]
[after_tea]
*lot-p
[cm][call target="*flower_talk" ][eval exp="f.flower=f.flower-5" ][eval exp="f.lust_act=f.lust_act+9" ]
[eval exp="f.lust=f.lust+50" ]
[f/sp]又甜又好喝。[lr_]
[f/p]…已經喝了好多呢、[r]
感覺稍微有點熱起來了呢。[p_]
[f/re]屋子裏太熱了吧。[p_]
[after_tea]

;;青い花
*tea-b
[cm][eval exp="f.sexless=f.sexless-1" ][eval exp="f.lust_act=0" ][eval exp="f.mood='calm'" ]
要放入什麽香料呢？[p_]
所持数-藍色的花（[emb exp="f.flower_b"]
[button target="*little-b" graphic="menu/t_little.png" x="645" y="140" hint="花を1つ使います" ]
[if exp="f.flower_b>=3" ][button target="*mid-b" graphic="menu/t_mid.png" x="645" y="225" hint="花を3つ使います" ][endif]
[if exp="f.flower_b>=5" ][button target="*lot-b" graphic="menu/t_lot.png" x="645" y="310" hint="花を5つ使います" ][endif][cancelskip][s]

*little-b
[cm][call target="*flower_talk" ][eval exp="f.flower_b=f.flower_b-1" ]
[eval exp="f.lust=f.lust-10" ]
[f/s]這樣的茶水。[lr_]
[f/re]非常好喝。[p_]
[jump target="*after_tea" ]
*mid-b
[cm][call target="*flower_talk" ][eval exp="f.flower_b=f.flower_b-3" ]
[eval exp="f.lust=f.lust-20" ]
[f/s]茶的味道好香啊。[lr_]
[f/re]我很平靜。[p_]
[after_tea]
*lot-b
[cm][call target="*flower_talk" ][eval exp="f.flower_b=f.flower_b-5" ]
[eval exp="f.lust=f.lust-50" ]
[f/s]增強薄荷香味的茶、[lr_]
[f/re]但是我不討厭。[p_]
[f/cl]…呼啊。[p_]
[f/scp]啊、對不起。[lr_]
[f/re]如果暖和了的話、總覺得點發困了…。[p_]
[after_tea]

;;導入
*normal
[cm]
[syl][f/s]茶嗎？[lr_]
[f/ss]好吧、我去準備。[p_]
[f/re][name]請等我一下。[p_]
[_][black]…[p_]
（過了一會兒、希露薇拿著兩人份的茶具從廚房回來了。[p_]
[set_sit][f/s][show_sit]
[syl]讓你久等了。[lr_]
[eval exp="f.love=f.love+1" ][eval exp="f.lust=f.lust-1" ]

[if exp="f.miyage=='non' || f.miyage=='nothing'" ][else]
[f/re]剛才[name]買來的[miyage]也一起吃了吧。[p_]
[f/cl_nt]…。[p_][eval exp="f.tea_time=2" ][endif]

[if exp="f.miyage=='曲奇'" ][jump target="*cookie" ]
[elsif exp="f.miyage=='甜面包'" ][jump target="*rask" ]
[elsif exp="f.miyage=='草莓蛋糕'" ][jump target="*cake" ]
[elsif exp="f.miyage=='布朗尼'" ][jump target="*blow" ]
[elsif exp="f.miyage=='布丁'" ][jump target="*pding" ]
[elsif exp="f.miyage=='水果蛋撻'" ][jump target="*tarte" ]
[elsif exp="f.miyage=='闪电泡芙'" ][jump target="*eclair" ]
[elsif exp="f.miyage=='瑞士卷'" ][jump target="*rollcake" ]
[elsif exp="f.miyage=='銅鑼燒'" ][jump target="*dorayaki" ]
[elsif exp="f.miyage=='羊羹'" ][jump target="*youkan" ]
[elsif exp="f.miyage=='泡芙'" ][jump target="*puff" ][endif]

[f/re]就好了。[p_]
[f/scl_nt]…。[p_]
[random_8]
[if exp="f.r==1" ][jump target="*tea1" ][elsif exp="f.tea==2" ][jump target="*tea2" ]
[elsif exp="f.r==3" ][jump target="*tea3" ][elsif exp="f.r==4" ][jump target="*tea4" ]
[elsif exp="f.r==5" ][jump target="*tea5" ][elsif exp="f.r==6" ][jump target="*tea6" ]
[elsif exp="f.r==7" ][jump target="*tea7" ][elsif exp="f.r==8" ][jump target="*tea8" ][endif]

;;トーク
*tea1
[f/cl]當初我知道要成為[name]的東西的時候還有些不安呢。[p_]
[f/ss]但是、現在我感到的全都是溫暖、安心、幸福和快樂…。[p_]
[after_tea]
*tea2
[f/scl]現在很安靜呢…。[p_]
[f/ss]只是茶的話、[name]也來一起喝吧？[p_]
[after_tea]
*tea3
[f/cl]呼唔…。[p_]
[f/s]只要是和喜歡的人一起喝茶、[r]
就感覺到了溫暖和怯意呢。[p_]
[after_tea]
*tea4
[f/c]啊嗚…。[p_]
[f/]啊、沒關系的。只是喝的有點快、[p_]
[f/s]請[name]也要註意哦。[p_]
[f/cl]呼唔ー… 呼唔ー…。[p_]
[after_tea]
*tea5
[f/]嗯、感覺有點淡呢…。[lr_]
[f/c]很抱歉。[r]茶葉的量還有熱水的溫度都沒有掌握好。[p_]
[f/]…美味…嗎？[lr_]
[f/re]那樣就好。[p_]
[f/s]下次我一定會沖泡得更美味的。[p_]
[after_tea]
*tea6
[f/]要稍微放些糖嗎？[lr_]
[f/re]雖然直接喝也不錯、但是感覺稍微甜一些更好呢…。[p_]
[f/cl]…。[p_]
[f/ss]呼呼…好甜…♡[p_]
[after_tea]
*tea7
[f/s]雖然茶很美味、但是感覺還是配一些餅乾更好呢。[p_]
[f/scl]我一直在想、我什麼時候能做出美味的甜點[r]
經常夢見和[name]一起、分享呢…。[p_]
[f/s]開玩笑的、那種事不可能吧…[p_]
[after_tea]
*tea8
[f/cl]呼唔…。[lr_]
[f/s]這樣安穩的時光、在以前是完全不敢想象的。[p_]
[f/cl]現在的我實在太幸福了、偶爾會流出眼淚來…。[p_]
[after_tea]

;;お茶請けトーク
*cookie
[cm][eval exp="f.tea_cookie=1" ]
[f/s]剛剛烤好的曲奇餅配茶挺合適的。[lr_]
[f/scl]好吃…。[p_]
[f/s]…。[p_]
[f/c]…啊、對不起。[lr_]
[f/re]全吃了沒有分給[name]你。[p_][ate]
*rask
[cm][eval exp="f.tea_rask=1" ]
[f/scl]嗯…非常鬆脆。[lr_]
[f/s]普通的餅乾配茶也是非常好的點心。[p_]
[f/]這樣的我也會做…。[p_][ate]
*cake
[cm][eval exp="f.tea_cake=1" ]
[f/cl]…啊姆。[lr_]
[f/s]呵呵…好吃。[p_]
[f/sp]在店裡吃的氣氛也很好、[r]
但是我還是喜歡和[name]兩個人一起靜靜的吃。[p_][ate]
*blow
[cm][eval exp="f.tea_blow=1" ]
[f/scl]啊姆…、很好吃。[lr_]
[f/s]茶的香味很好地配合了苦澀的巧克力的香味。[p_]
[f/scl]比蛋糕稍微硬一些讓人覺得喝些茶更好呢。[p_][ate]
*pding
[cm][eval exp="f.tea_pding=1" ]
[f/scl]嗯…很甜。[p_]
[f/s]布丁和紅茶都是甜食的呢。[lr_]
[f/scl]真好吃…。[p_]
[f/s]不吃的話待會兒可就沒有了哦。[p_][ate]
*tarte
[cm][eval exp="f.tea_tarte=1" ]
[f/scl]…真好吃。[p_]
[f/s]能吃到各種各樣的水果呢。[p_]
[f/re]平常要是買這麽多的水果的話在放壞了之前可是吃不完的呢、[lr_]
[f/re]做成甜點的水果跟普通的水果比起來感覺味道不太一樣呢。[p_][ate]
*eclair
[cm][eval exp="f.tea_eclair=1" ]
[f/scl]…阿姆。[lr_]
[f/ss]阿哈、阿嗯…。[p_]
[f/clp]嗯…嗯。[lr_]
[f/p]對不起、這麼沒禮貌。[p_]
[f/s]但是、大口的吃甜食感覺心情非常好。[lr_]
[f/scl]蓬松的、奶油和巧克力在口中混合…。[p_]
[f/ss]呼呼…。[p_][ate]
*rollcake
[cm][eval exp="f.tea_rollcake=1" ]
[f/scl]阿姆…。[lr_]
[f/ss]质地蓬松美味…。[p_]
[f/s]味道優美、但不浮华。[lr_]
[f/re]相比其它的甜食它像海綿一樣濕軟。[p_][ate]
*puff
[cm][eval exp="f.tea_puff=1" ]
[f/scl]阿姆。[p_]
[f/ssp]嗯、表面上充滿了大量的奶油、[lr_]
[f/re]這一組合非常好吃…。[p_]
[f/sp]創作點心的人很厲害啊。[p_][ate]
*youkan
[cm][if exp="f.tea_youkan==1" ][jump target="*youkan_" ][endif]
[eval exp="f.tea_youkan=1" ]

[f/]羊羹…這是外國的點心啊？[lr_]
[if exp="f.tea_dorayaki==1" ][f/re]這個和“銅鑼燒”是同一個國家的嗎。[p_][endif]
[f/re]黑色的光澤…我想最初以為是巧克力或果凍那樣的東西、[r]
像巧克力的味道、有种不同的感觉。[p_]
[f/re]總之、先給我看看吧…。[p_]
[f/cl]阿姆…。[lr_]
[f/s]嗯、好甜。[p_]
[if exp="f.tea_dorayaki==1" ][f/re]這個和“銅鑼燒”有點相似嗎？[lr_][else]
[f/re]到現在為止沒有吃過的味道。[lr_][endif]
[f/s]雖然有不可思議的味道、但是很好吃呢。[p_]
[f/re]量不多卻沉甸甸的、[r]
一邊喝點茶一邊吃東西好嗎。[p_][ate]

*youkan_
[f/cl]嗯…。[lr_]
[f/s]雖然味道很少見、但是很好吃呢。[p_]
[f/re]一口吃很多[r]
比起味道、感覺氣味的感覺更强烈。[lr_]
[f/re]是那樣的食物嗎？[p_][ate]

*dorayaki
[cm][if exp="f.tea_dorayaki==1" ][jump target="*dorayaki_" ][endif]
[eval exp="f.tea_dorayaki=1" ]

[f/]銅鑼燒…這是異國的點心嗎？[lr_]
[if exp="f.tea_youkan==1" ][f/re]這和“羊羹”是同一個國家的東西嗎。[lr_][endif]
[f/re]好像是小的烤餅、夾著什麽東西[p_]
[f/s]那麼、給我嘗一下看看吧。[p_]
[f/cl]阿姆…。[lr_]
[f/s]嗯、軟綿綿的部份非常甜…。[lr_]
[f/]之間有什麼黑色甜的東西、是豆沙嗎？[p_]
[if exp="f.tea_youkan==1" ]這和上次的“羊羹”非常像？[lr_][else]總覺得有不可思議的味道。[lr_][endif]
[f/ss]說不定會相當喜歡。很好吃。[p_][ate]

*dorayaki_
[cm][f/scl]阿姆…。[lr_]
[f/s]好吃。[p_]
[f/re]這是糊狀的甜美部分、[r]
其它的點心沒有的不可思議的味道啊。[lr_]
[f/re]吃得有點有趣。[p_][ate]

;;end
*ate
[cm][eval exp="f.love=f.love+1" ]
*after_tea
[eval exp="f.love=f.love+1" ][eval exp="f.act=f.act+1" ]
[eval exp="f.lust_act=f.lust_act-1" ]
[return_menu]




