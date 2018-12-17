;;call
*last_line
[r][r][link target="*select" ]【回去】[link target="*end_talk" ]【算了】
[endlink][resetdelay][endnolog][cancelskip][return]

;;区別選択
*select
[commu_text][-]
[link target="*like" ]【好意】[link target="*hi" ]【問候】[link target="*want" ]【期望】[link target="*sylvie" ]【評價】[r]
[link target="*negative" ]【洩氣話】[link target="*action" ]【行動】[link target="*ask" ]【詢問】[r]
[link target="*other" ]【其它】[if exp="f.sex>=1" ][link target="*lust" ]【♡♡♡】[endif][link target="*command" ]【特殊】
[r][r]
[call target="*reaction" ][r]
[link target="*end_talk" ]【算了】[endlink][resetdelay][endnolog][cancelskip][s]

;;好意
*like
[commu_text]
[tx_link tg=*好き]【喜歡】[tx_link tg=*ありがとう]【謝謝】[if exp="f.love>=1500" ][tx_link tg=*愛してる]【愛你】[endif][r]
[tx_link tg=*助かってる]【幫忙】[tx_link tg=*嬉しい]【快樂】[tx_link tg=*楽しい]【開心】[r]
[tx_link tg=*幸せ]【幸福】
[call target="*last_line" ][s]

;;挨拶
*hi
[commu_text]
[tx_link tg=*おはよう]【早上好】[tx_link tg=*こんにちは]【你好】[tx_link tg=*こんばんわ]【早晨好】[r]
[tx_link tg=*お疲れ様]【你辛苦了】
[call target="*last_line" ][s]

;;要望
*want
[commu_text]
[tx_link tg=*笑って]【笑】[tx_link tg=*抱きしめて]【想抱住】[tx_link tg=*こっちきて]【過來】[r]
[tx_link tg=*そばにいて]【在一起】[tx_link tg=*応援して]【來幫忙】
;[tx_link tg=*慰めて]【安慰】[r]
[tx_link tg=*撫でていい？]【可以讓我撫摸嗎】[tx_link tg=*手握って]【握手】[tx_link tg=*撫でて]【撫摸】[r]
[tx_link tg=*抱きしめたい]【抱起來】[if exp="f.sex>=1" ][tx_link tg=*キスして]【親吻】[endif]
[call target="*last_line" ][s]

;;評価
*sylvie
[commu_text]
[tx_link tg=*貧乳]【貧乳】[tx_link tg=*ちっちゃい]【好小】[tx_link tg=*可愛い]【可愛】[r]
[tx_link tg=*綺麗]【美麗】[tx_link tg=*笑顔がかわいい]【笑的真可愛】[tx_link tg=*偉い]【偉大】[r]
[tx_link tg=*優しいね]【溫柔】[tx_link tg=*天使]【天使】
[call target="*last_line" ][s]

;;弱音
*negative
[commu_text]
[tx_link tg=*お腹すいた]【肚子餓了】[tx_link tg=*眠い]【睡覺】[r]
;[tx_link tg=*疲れた]【疲れた】
[tx_link tg=*助けて]【幫忙】[tx_link tg=*ごめん]【對不起】
[call target="*last_line" ][s]

;;問いかけ
*ask
[commu_text]
[tx_link tg=*楽しい？]【快樂嗎？】[tx_link tg=*幸せ？]【幸福？】[tx_link tg=*元気？]【健康？】[r]
[tx_link tg=*大丈夫？]【有什麼問題嗎？】[tx_link tg=*欲しいものある？]【有什麼想要的東西？】[r]
[tx_link tg=*痛くない？]【傷口不痛吧？】
[call target="*last_line" ][s]

;;行動
*action
[commu_text]
[tx_link tg=*じー]【靜靜觀察】[r]
[call target="*last_line" ][s]

;;その他
*other
[commu_text]
[tx_link tg=*シルヴィ]【希露薇】[tx_link tg=*料理]【料理】[tx_link tg=*傷跡]【傷痕】[r]
[if exp="f.shop_talk>=1" ][tx_link tg=*オーレリア]【奧蕾莉亞】[endif]
[if exp="f.cafe_talk==1" ][tx_link tg=*ネフィー]【涅芙依】[endif]
[if exp="f.ferrum>=1" ][tx_link tg=*フェルム]【菲魯姆】[endif]
[call target="*last_line" ][s]

;;エロ
*lust
[commu_text]
[if exp="f.lust>=100" ][tx_link tg=*セックス]【上床吧】[endif]
[if exp="f.lust>=300" ][tx_link tg=*えろい]【下流】[endif]
[if exp="f.lust>=100" ][tx_link tg=*脱いで]【脫衣服】[endif]
[r]
[if exp="f.lust>=30" ][link storage="sys/config.ks" target=*h_word]【教說淫語】[endif][font_blue1]
[r][call target="*last_line" ][s]

;;特殊
*command
[commu_text]
[if exp="f.Dc_f[0]=='got' && f.work_c==0 && f.act<=4" ][tx_link tg=*仕事をしよう]【去工作吧】[endif]
[if exp="f.act>=3 && f.act<=4 && f.tea_time==0" ][tx_link tg=*お茶にしよう]【泡茶吧】[endif]
[if exp="f.act>=5" ][tx_link tg=*おやすみ]【睡覺】[endif]
[r]
[if exp="f.act<=4 && f.out==0 || f.act<=4 && f.out=='syl'" ]
[tx_link tg=*出かけよう]【出去吧】[tx_link tg=*出かけてくる]【要出去了】[endif]
[if exp="f.act>=5 && f.step>=6 && f.out==0 && f.love>=200 || f.act>=5 && f.step>=6 && f.out=='syl' && f.love>=200" ]
[tx_link tg=*出かけてくる]【出去了】[endif]
[r]
[tx_link tg=*着替えて]【換衣服】[link storage="sys/config.ks" target=*name_change]【改變稱呼】
[r]
[r][call target="*last_line" ][s]

[if exp="f.act<=4 && f.out==0 || f.act<=4 && f.out=='syl'" ]
[tx_link tg=*出かけよう]【出去吧】[tx_link tg=*出かけてくる]【要出去了】[endif]
[if exp="f.act>=5 && f.step>=6 && f.out==0 && f.love>=200 || f.act>=5 && f.step>=6 && f.out=='syl' && f.love>=200" ]
[tx_link tg=*出かけてくる]【出去了】[endif]

;;返答
*reaction
[r][resetfont]回答-[font_blue1]
[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ]
;	[tx_link tg="*助かる/これからも>ありがとう" ]【謝謝】
	[tx_link tg="*助かる/これからも>十分" ]【這次也做得非常好】[endlink][endif]
[if exp="f.last_act=='c_助かってる/これからも'" ]
	[tx_link tg="*助かる/これからも>期待してる" ]【期待】[endlink][endif]
[if exp="f.last_act=='c_ありがとう/ありがとう'" ]
	[tx_link tg="*ありがとう/ありがとう>どういたしまして" ]【不客氣】[endlink][endif]
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ]
	[tx_link tg="*ありがとう/出来てるかな>出来てる" ]【做得好】
;	[tx_link tg="*ありがとう/出来てるかな>大丈夫" ]【大丈夫】[endlink]
[endif]
[if exp="f.last_act=='c_偉い/何かした？'" ]
	[tx_link tg="*偉い/何かした？>仕事" ]【工作】
	[tx_link tg="*偉い/何かした？>可愛い" ]【可愛】
	[tx_link tg="*偉い/何かした？>家事" ]【家務】[endlink][endif]
[if exp="f.last_act=='c_欲しいもの/ぎゅって'" ]
	[tx_link tg="*欲しいもの/ぎゅって>違う" ]【真的是這樣嗎】
	[tx_link tg="*欲しいもの/ぎゅって>する" ]【擁抱】[endlink][endif]
[if exp="f.last_act=='c_欲しいもの/特に'" ]
	[tx_link tg="*欲しいもの/特に>思いついたら" ]【想要什麼儘管說】[endlink][endif]
[if exp="f.last_act=='c_楽しい？/はい'" ]
;	[tx_link tg="*楽しい？/はい>嬉しい" ]【高興】
;	[tx_link tg="*楽しい？/はい>良かった" ]【那就好】
	[tx_link tg="*楽しい？/はい>こっちも楽しい" ]【我也很快樂】[endlink][endif]
[if exp="f.last_act=='c_幸せ？/ありがとう'" ]
	[tx_link tg="*ありがとう/ありがとう>どういたしまして" ]【不用謝】
	[tx_link tg="*幸せ？/ありがとう>こちらこそ" ]【彼此彼此】[endlink][endif]
;[if exp="f.last_act=='c_幸せ？/ありがとう' || f.last_act=='c_幸せ？/一緒だから'" ]
;	[tx_link tg="*幸せ？/はい>良かった" ]【沒問題就好了】[endlink][endif]
[if exp="f.last_act=='c_幸せ？/怖いぐらい'" ]
	[tx_link tg="*幸せ？/怖いぐらい>大丈夫" ]【沒關係的】
	[tx_link tg="*幸せ？/怖いぐらい>慣れるよ" ]【習慣了吧】[endlink][endif]
;[if exp="f.last_act=='c_元気？/はい'" ]
;	[tx_link tg="*元気？/はい>良かった" ]【那就好】[endlink][endif]
[if exp="f.last_act=='c_無理してない？/はい'" ]
	[tx_link tg="*無理してない？/はい>良かった" ]【那就好了】[endlink][endif]
[if exp="f.last_act=='c_嫉妬'" ]
	[tx_link tg="*嫉妬>ごめん" ]【對不起】[endlink][endif]
[if exp="f.last_act=='c_嫉妬' && f.love>=1500" ]
	[tx_link tg="*嫉妬>愛してる" ]【我愛你】[endlink][endif]

[r][return]

;;end
*end_talk
[_][cm_t][eval exp="f.system_act=1" ][return_menu]

