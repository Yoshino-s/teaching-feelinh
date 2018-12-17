;;好意
*好き
[cm_t][eval exp="f.talk_love=f.talk_love+1" ][eval exp="f.love=f.love+1" ]
[random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_好き/嬉しい'" ]
	[f/s]謝謝你。[lr_]
	[f/re]你這樣想、我很高興。[p_]
	[f/ssp]…真的。[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_好き/私も'" ]
	[f/s]是啊、我也喜歡[name]。[lr_]
	[f/sp]喜歡就是喜歡、沒有理由。[p_]
[else][eval exp="f.last_act='c_好き/私も'" ]
	[f/s][name]我也、[name]我也喜歡你。[lr_]
	[f/ss]喜歡、我喜歡你♡[p_]
[endif][end_talk]

*愛してる
[if exp="f.love<=1500" ][c_non][endif]
[if exp="f.last_act=='c_嫉妬'" ][jump target="*嫉妬>愛してる" ][endif]
[cm_t][eval exp="f.love=f.love+2" ][eval exp="f.talk_love=f.talk_love+1" ]
[random_4]
[if exp="f.r==1" ][eval exp="f.last_act='c_愛してる'" ]
	[f/clp]…。[p_]
	[f/cp]對不起。[lr_]
	[f/re]高興得、總覺得言語無法形容了…。[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_愛してる'" ]
	[f/sp]謝謝你。[p_]
	我也愛[name]你。[lr_]
	[f/sclp]我愛你…。[p_]
[elsif exp="f.r==3" ][eval exp="f.last_act='c_愛してる'" ]
	[f/cp]…是真的嗎？[lr_]
	[f/re]我能相信嗎？[p_]
	[f/clp]那句話、真的…我會一直喜歡你的。[p_]
[elsif exp="f.r==4" ][eval exp="f.last_act='c_愛してる'" ]
	[f/cp]…“會被被背叛”之類的想法已經不存在了。[p_]
	[f/clp][name]…我愛你。[p_]
[endif][end_talk]

*ありがとう
[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ]
	[jump target="*助かる/これからも>ありがとう" ][endif]
[cm_t][eval exp="f.love=f.love+1" ][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_ありがとう/ありがとう'" ]
	[f/s]是的…但是、說道謝的人其實應該是我。[lr_]
	[f/ss]謝謝你、[name]。[p_]
;	→どういたしまして
[elsif exp="f.r==2" ][eval exp="f.last_act='c_ありがとう/出来てるかな'" ]
	[f/s]“別客氣”就好了嗎？[lr_]
	[f/ss]如果能够做致謝的事情出來的話就好了。[p_]
;	→助かってる/出来てる
[endif][end_talk]

*助かる
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump target="*出来てる" ][endif]
*助かってる
[cm_t][eval exp="f.love=f.love+1" ][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_助かってる/これからも'" ]
	[f/]要幫忙嗎？[lr_]
	[f/cl]但是、現在沒時間。[name]對不起了。[p_]
	[f/s]下次會竭盡全力的。[p_]
;	→お願いする/期待してる、もう十分、ありがとう
[elsif exp="f.r==2" ][eval exp="f.last_act='c_助かってる/もっと頑張る'" ]
	[f/s]雖然是做不好什麼事、不過、稍微有點投入的話就能做好了。[lr_]
	[f/ss]如果在平時有幫手以外的什麼想要的事請就說。[p_]
;	→もう十分、ありがとう
[else][eval exp="f.last_act='c_助かってる/もっと頑張る'" ]
	[f/s]我有幫上忙嗎？[lr_]
	[f/re]但是、我想更努力。[p_]
	[f/ss]如果換成我是[name]的話我也會努力的♡[p_]
[endif][end_talk]

;;問いかけ
*楽しい？
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_楽しい？/はい'" ]
	[f/ss]是的、快樂喲。[lr_]
	[f/s][name]如果能在我身邊的話、無論什麼時候都快樂的。[p_]
;	→良かった、こっちも楽しい、嬉しい
[else][eval exp="f.last_act='c_楽しい？/はい'" ]
	[f/s]是那樣啊。[lr_]
	[f/re]出門啦、做家務、吃好吃的東西。[lr_]
	[f/ss]每天有各種各樣的事很開心。[p_]
;	→良かった、こっちも楽しい、嬉しい
[endif][end_talk]

*幸せ？
[cm_t][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_幸せ？/ありがとう'" ]
	[f/cl]幸福是什麼、以前不太明白…[lr_]
	[f/s]但是我想現在的生活是幸福的。[p_]
	[f/ss]謝謝你、[name]。[p_]
;	→良かった、こっちも幸せ、どういたしまして、こちらこそ
[elsif exp="f.r==2" ][eval exp="f.last_act='c_幸せ？/怖いぐらい'" ]
	[f/s]真的、我很幸福。[lr_]
	[f/cl]與來這裡前的生活相比、太過幸福了。[p_]
;	→こっちも幸せ、大丈夫/安心して、慣れるよ
[else][eval exp="f.last_act='c_幸せ？/一緒だから'" ]
	[f/ss]是的、非常幸福。[lr_]
	[f/s]因為我和你在一起[name]。[p_]
;	→良かった、こっちも幸せ
[endif][end_talk]

*元気？
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_元気？/はい'" ]
	[f/s]是的、我很健康。[lr_]
	[f/re]和過去相比、身體變得健康起來了。[p_]
;	→良かった
[else][eval exp="f.last_act='c_元気？/はい'" ]
	[f/s]是的、哪裡也不痛也沒有不舒服。[lr_]
	[f/ss]非常的健康。[p_]
;	→良かった
[endif][end_talk]

*大丈夫？
*無理してない？
[cm_t][random_2]
[if exp="f.r==1" ]
	[f/s]沒問題的。[lr_]
	而且和從前相比體力要好了、[r]
	[f/re]生活的充實？感覺這樣的東西。[p_]
;	→良かった
[else]
	[f/s]沒有什麼問題吧？[lr_]
	[f/ss]工作和家務也很快樂、雖然有時候覺得身體有點疲勞。[p_]
;	→良かった
[endif][eval exp="f.last_act='c_無理してない？/はい'" ][end_talk]

*欲しいものある？
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_欲しいもの/特に'" ]
	[f/cl]我…沒特別想要的。[lr_]
	[f/s]各種各樣的事情太多了、只享受現在有的東西就竭盡全力了。[p_]
;	→思いついたら言って
[else][eval exp="f.last_act='c_欲しいもの/ぎゅって'" ]
	[f/sp]嗯…那讓我。收集東西可以嗎？[lr_]
	[f/c]…還是說其它的事？[p_]
;	→ギュッとする、違う
[endif][end_talk]

*痛くない？
[cm_t]
[eval exp="f.last_act='c_痛くない？'" ]
	[f/s]是的、幾乎不會痛。[lr_]
	有點敏感、偶爾會擔心它會痛。[p_]
[end_talk]

;;感想/感情ポジティブ
*嬉しい
[cm_t][if exp="f.last_act=='c_楽しい？/はい'" ][jump target="*楽しい？/はい>嬉しい" ][endif]
[eval exp="f.last_act='c_嬉しい'" ]
	[f/s]有什麼高興的事？[lr_]
	[f/ss][name]高興我也跟著高興。[p_]
[end_talk]

*楽しい
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_楽しい'" ]
	[f/ss]是的、很開心。[lr_]
	[f/s]和[name]你在一起的話、做什麼都開心。[p_]
[else]
	[f/]是嗎？[p_]
	[f/cl]我對一般的事情都好奇、而且也會覺得很開心、[r]
	[f/re][name]也是這樣的吧、我偶爾會這樣的想。[lr_]
	[f/s]如果能一起開心的話我也會很開心。[p_]
[endif][end_talk]

*幸せ
[cm_t][eval exp="f.love=f.love+1" ][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_幸せ'" ]
	[f/s]是真的嗎？[lr_]
	[f/ss]如果和你在一起的話、我也非常幸福。[p_]
[else][eval exp="f.last_act='c_幸せ'" ]
	[f/s]我和、[name]你在一起你也幸福嗎？[lr_]
	[f/scl]我想[name]也一定是這樣想的吧…。[p_]
[endif][end_talk]

;;感想/感情ネガティブ
*お腹すいた
[cm_t]
[if exp="f.act<=2" ][eval exp="f.last_act='c_お腹すいた午前/早めに'" ]
	[f/]肚子已經餓了嗎？[lr_]
	[f/s]那麼今天的午餐就稍微提前一點準備吧。[p_]
[elsif exp="f.act==3" ][eval exp="f.last_act='c_お腹すいた昼/何にしましょう'" ]
	[f/]就要到中午了。[lr_]
	[f/s]今天的飯什麼的就好了。[p_]
[elsif exp="f.act==4" ][eval exp="f.last_act='c_お腹すいた食後/デザートでも？'" ]
	[f/]午飯、沒法讓你滿足嗎？[lr_]
	[f/cl]要喝茶嗎？…[lr_]
	[f/ss]啊、來吃飯後的甜食吧、這個怎樣呢？[p_]
[else][eval exp="f.last_act='c_お腹すいた午後/そろそろ夕食'" ]
	[f/]是的、我也稍微有點餓了。[lr_]
	[f/s]我們該吃晚飯了吧？[p_]
[endif][end_talk]

*体調が悪い
[cm_t][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_体調悪い'" ]
	[f/c]沒問題吧？[lr_]
	[f/re]身體不好的話稍微躺一下？[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_体調悪い'" ]
	[f/c]沒問題吧？[lr_]
	[f/re]如果感冒啦的話、最好儘早安靜地休息。[p_]
	[f/re]有什麼我能做的事嗎？[p_]
[else][eval exp="f.last_act='c_体調悪い'" ]
	[f/]累了嗎？[lr_]
	[f/c]如果有我會的事、請告訴我。[p_]
[endif][end_talk]

*眠い
[cm_t]
[if exp="f.act<=2" ][eval exp="f.last_act='c_眠い朝'" ]
	[f/]睡不醒嗎？[lr_]
	[f/s]用冰冷的水洗臉怎樣呢？[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_眠い昼'" ]
	[f/c]午飯的前後總覺得困了。[lr_]
	[f/cl]我也有點迷迷糊糊的。[p_]
[else][eval exp="f.last_act='c_眠い午後'" ]
	[f/c]累了吧？…。[lr_]
	[f/re]今天你早點休息嗎？[p_]
[endif][end_talk]

;寒い/さむい
;*cold
;
;[end_talk]

;;評価
*貧乳
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_貧乳/成長する'" ]
	[f/cl_nt]…。[p_]
	[f/re]應該還能再成長。[lr_]
	[f/re]一定…。[p_]
;	→成長する/大きくなる、可愛い/好き、小さいままで
[else][eval exp="f.last_act='c_貧乳/成長する'" ]
	[f/c]果然、大的是有魅力的嗎？[lr_]
	[f/re]再等一段時間看看吧。[p_]
;	→成長する/大きくなる、可愛い/好き、小さいままで
[endif][end_talk]

*ちっちゃい
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_ちっちゃい/そうかも'" ]
	[f/]比起普通、也許是小個子吧。[lr_]
	[f/cl]也許是過去的生活的原因。[p_]
;	→胸が、大きくなる、可愛い
[else][eval exp="f.last_act='c_ちっちゃい/役に立てない'" ]
	[f/]是那樣的。[lr_]
	[f/cl]力氣也不太多、不過變大點了吧[r]
	[f/re]是[name]的功勞吧?…。[p_]
;	→胸が、大きくなる、大丈夫、十分助かってる
[endif][end_talk]

*可愛い
[if exp="f.last_act=='c_偉い/何かした？'" ][jump target="*偉い/何かした？>可愛い" ][endif]
[cm_t][eval exp="f.love=f.love+1" ][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_可愛い/そうなのかな'" ]
	[f/cl]老實說我自己不知道我是不是適合那個詞。[lr_]
	[f/ss]但是、[name]如果那樣想的話一定是那樣的吧。[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_可愛い/もっと好かれたい'" ]
	[f/s]謝謝你。[lr_]
	[f/ss]我會變得更加可愛讓[name]更喜歡我。[p_]
[else][eval exp="f.last_act='c_可愛い/信じれる'" ]
	[f/cl]以前的我、說這些是怎麼也不會理解的。[lr_]
	[f/s]但是、現在“是[name]你的可愛的我”所以我可以理解了。[p_]
[endif][end_talk]

*綺麗
[cm_t][eval exp="f.love=f.love+1" ][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_綺麗/そうありたい'" ]
	[f/]是嗎？[lr_]
	[f/scl]成為大人的大人和[name]走在身旁[r]
	[f/re]想成為一個[name]的不害羞的好女人。[p_]
;	→素敵だよ、自信持って
[else][eval exp="f.last_act='c_綺麗/わからない'" ]
	[f/]相貌是…怎麼樣、自己是不太明白的。[lr_]
	[f/ss]但是、[name]對我這樣說覺得高興。[p_]
;	→自信持って
[endif][end_talk]

*笑顔がかわいい
[if exp="f.last_act=='c_偉い/何かした？'" ][jump target="*偉い/何かした？>可愛い" ][endif]
[cm_t][eval exp="f.last_act='c_笑顔がかわいい'" ][random_2]
[if exp="f.r==1" ]
	[f/s]謝謝你。[lr_]
	[f/ss]但是、給我笑容的是[name]不是嗎？[p_]
[else]
	[f/ss]但是[lr_]
	[f/re][name]說那樣的話、會變得更笑容的。[p_]
[endif][end_talk]

*偉い
[cm_t][random_2][if exp="f.love<=1000" ][eval exp="f.r=1" ][endif]
[if exp="f.r==1" ][eval exp="f.last_act='c_偉い/何かした？'" ]
	[f/]啊啊…[lr_]
	[f/s]我、有什麼要偉大的事情要表揚嗎？[p_]
;	→仕事、家事、可愛い
[else][eval exp="f.last_act='c_偉い/撫でて'" ]
	[f/s][name]是在誇獎我嗎？[lr_]
	[f/ss]…那麼、能摸一摸我的頭嗎？[p_]
[endif][end_talk]

*えろい
[if exp="f.lust<=300" ][c_non][endif]
[cm_t][add_lust_act][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_えろい/誰のせい？'" ]
	[f/clcp]唔唔…、[name]的錯…。[lr_]
	[f/cq]…不然你以為是誰的原因呢？[p_]
;	→シルヴィ、ごめん
[elsif exp="f.r==2" ][eval exp="f.last_act='c_えろい/あなたのせい'" ]
	[f/clp]…這個、難道[name]你不也是那樣的嗎。[lr_]
	[f/cq]這個…對我來說。[p_]
;	→責任取る
[else][eval exp="f.last_act='c_えろい/嫌い？'" ]
	[f/cp]…[name]討厭我了嗎？[p_]
;	→好き、お淑やかに
[endif][end_talk]

*優しいね
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_優しい/あなたのおかげ'" ]
	[f/ss]是[name]溫柔而不是我溫柔吧？[p_]
[else][eval exp="f.last_act='c_優しい/あなたの方が'" ]
	[f/s]是嗎？[lr_]
	[f/ss]我是为[name]而溫柔的。[p_]
;	→ありがとう、そうでもない
[endif][end_talk]

*天使
[cm_t][eval exp="f.last_act='c_天使'" ]
	[f/ssc]雖然已經不是很悲慘的奴隸了、[r]
	但那樣的神聖的東西、也不可能成為吧。[p_]
;	→サキュバス
[end_talk]

*サキュバス
[end_talk]

;;甘える
*助けて
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_助けて'" ]
	[f/c]有什麼事情嗎？[lr_]
	[f/re]如果是你的問題的話、就講給我聽一下吧。[p_]
[else][eval exp="f.last_act='c_助けて'" ]
	[f/c]沒問題吧？[lr_]
	[f/re]我有什麼能做的事嗎？[p_]
[endif][end_talk]

*応援して
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_応援して'" ]
	[f/s]？[p_]
	[f/ss]啊、啊…請加油、[name]♡[p_]
[else][eval exp="f.last_act='c_応援して'" ]
	[f/s]…？[p_]
	[f/s][name]一定沒問題的、加油吧。[p_]
[endif][end_talk]

*撫でて
[cm_t][random_2]
	[f/]我是[name]的什麼？[lr_]
	[f/s]當然可以、來吧。[p_]
[if exp="f.r==1" ][eval exp="f.last_act='c_撫でて'" ]
	[f/s]…[name]在你撫摸我的時候也是這樣的感覺嗎[p_]
[else][eval exp="f.last_act='c_撫でて'" ]
	[f/scl]…謝謝你、謝謝、[name]。[p_]
[endif][end_talk]

;甘えたい/慰めて/なでて/あまえたい
;*寂しい
;
;[end_talk]

;*眠れない
;
;[end_talk]

*ごめん
[if exp="f.last_act=='c_嫉妬'" ][jump target="*嫉妬>ごめん" ][endif]
[cm_t][eval exp="f.last_act='c_ごめん'" ]
	[f/]你怎麼了？[lr_]
	[f/s]沒有什麼可道歉的事情吧？[p_]
[end_talk]

;;要求
*笑って
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_笑って'" ]
	[f/]即使那樣突然的說…[lr_]
	[f/ss]…你笑吧。[lr_]
	[f/s]幸福就是這樣的事情吧[[p_]
[else][eval exp="f.last_act='c_笑って'" ]
	[f/ss]…沒問題♡[p_]
	[f/s]雖然以前是做不到的、[r]
	但是現在能自然的笑了。[p_]
[endif][end_talk]

*抱きしめて
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_抱きしめて'" ]
	[f/sp]好的、來吧…。[lr_]
	[f/ssp]呼呼…♡[p_]
[else][eval exp="f.last_act='c_抱きしめて'" ]
	[f/ss]沒問題、我喜歡♡[lr_]
	[f/sclp]…啊、什麽[p_]
[endif][end_talk]

*こっちきて
[cm_t][eval exp="f.last_act='c_こっちきて'" ]
	[f/ss]是…♡[lr_]
	[f/sp]…和[name]在附近、覺得非常幸福呢[p_]
[end_talk]

*キスして
[if exp="f.sex<=0 || f.sex=='yet'" ][c_non][endif]
[cm_t][eval exp="f.love=f.love+1" ][mouth_up_little]

[if exp="f.lust>=600 || f.mood=='lust'" ][else][eval exp="f.last_act='c_キスして/バード'" ]
	[f/sp]好的、能稍微蹲下來嗎？[p_]
	[f/clp]…咯。[l]
	[f/re]嗯…。[lr_]
	[f/sp]做這事情、有一點新鮮感。[p_]
[end_talk][endif]

[eval exp="f.last_act='c_キスして/ディープ'" ]
[random_2][add_lust_act][mouth_up_little]
[if exp="f.r==1" ]
	[f/sp]是、[l]
	[f/clp]不、不…。[p_]
	[_]嘴唇重疊了、舌頭和嘴結合[p_]
	[f/re]咯…咯…。[lr_]
	[f/re]嗯哈…哈啊……嗯…。[p_]
	[f/re]呼哈啊…[lr_]
	[f/cq]…[name]♡[p_]
[else]
	[f/sp]是、[l][f/clp]嗯…。[p_]
	[_]熾熱的呼吸和舌頭進入口腔。[p_]
	[f/re]嗯…呼啊…[lr_]
	[f/re]嗯姆…哈啊……凄…[lr_]
	[f/re]凄…哪[p_]
	[f/re]呼哈…[p_]
	[f/cq]…[name]♡[p_]
[endif][end_talk]

*そばにいて
[cm_t][eval exp="f.love=f.love+1" ][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_そばにいて/離れません'" ]
	[f/ss]是的、當然。[lr_]
	[f/sp][name]如果你希望的話我永遠不會離開你的♡[p_]
[else][eval exp="f.last_act='c_そばにいて/こちらからも'" ]
	[f/s]不如我就拜託你了。[lr_]
	[f/scl]無論如何、請一直在一起…♡[p_]
[endif][end_talk]

*胸触らせて
[end_talk]

*手握って
[cm_t]
	[f/s]是[p_][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_手握って/小さい？'" ]
	[f/re]…[name]的手好大。[lr_]
	[f/]我的手只有…這麼小？[p_]
[else][eval exp="f.last_act='c_手握って/優しい'" ]
	[f/scl]…溫柔的手啊。[p_]
[endif][end_talk]

;;要望
*抱きしめたい
[cm_t][eval exp="f.last_act='c_抱きしめたい'" ]
	[f/ss]怎麼不可以？[p_]
	[f/sclp]…抓牢[lr_]
[random_3]
[if exp="f.r==1" ]
	[f/re]呼呼…[name]…♡[p_]
[elsif exp="f.r==2" ]
	[f/re]嗯…啊、有嗎[p_]
[else]
	[f/re]…我很幸福。[p_]
[endif][end_talk]

*撫でていい？
[cm_t][eval exp="f.last_act='c_撫でていい？'" ]
	[f/]到現在這種事還要確認、有這個必要嗎？[lr_]
	[f/ss]當然可以啊。[lr_]
	[f/s]不應該說討厭什麼的。[p_]
[end_talk]

*キズ触らせて
[end_talk]
*いたずらしたい
[end_talk]
*キスしたい
[end_talk]

*シルヴィ
[if exp="f.love>=1000" ][random_4][else][random_3][endif]
[cm_t][eval exp="f.last_act='c_シルヴィ/はい？'" ]
[if exp="f.r==1" ]
	[f/s]是的、怎麼了[name]？[p_]
[elsif exp="f.r==2" ]
	[f/s]在、怎麼了？[p_]
[elsif exp="f.r==3" ]
	[f/s]在、有什麼事嗎？[p_]
[else][eval exp="f.last_act='c_シルヴィ/はい♡'" ]
	[f/ssp]在、你的希露薇、我是[name]的♡[p_]
[endif][end_talk]

*お姉ちゃん
[end_talk]
*お母さん
[end_talk]

;;挨拶
*おはよう
[cm_t]
[if exp="f.act<=2" ][eval exp="f.last_act='c_おはよう朝'" ]
	[f/s]是的、早上好[lr_]
	[f/re]今天也有好事發生就好了。[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_おはよう昼'" ]
	[f/s]是。早上好。[lr_]
	[f/]可是、現在不是中午嗎？[p_]
[else][eval exp="f.last_act='c_おはよう夜'" ]
	[f/c]我想已經是“晚上好”的時間了吧…[p_]
[endif][end_talk]

*こんばんわ
[cm_t]
[if exp="f.act<=2" ][eval exp="f.last_act='c_こんばんわ朝'" ]
	[f/]這麼早。[lr_]
	[f/s]你還沒有起床嗎。[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_こんばんわ昼'" ]
	[f/]好的、晚上好…[p_]
	[f/re]不過說“晚上好”稍微有點早吧？[p_]
[else][eval exp="f.last_act='c_こんばんわ夜'" ]
	[f/s]好的、晚上好。[lr_]
	[f/]你到底是怎麽了。[p_]
[endif][end_talk]

*こんにちは
[cm_t]
[if exp="f.act<=1" ][eval exp="f.last_act='c_こんにちは朝'" ]
	[f/]說“早晨好”有一點不早吧…？[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_こんにちは昼'" ]
	[f/s]是的、你好。[lr_]
	[f/]你到底是怎麽了。[p_]
[else][eval exp="f.last_act='c_こんにちは夜'" ]
	[f/s]差不多該是晚上好的時間了嗎？[p_]
[endif][end_talk]

*お疲れ様
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_お疲れ様'" ]
	[f/s]是、[name]也辛苦了。[p_]
[else][eval exp="f.last_act='c_お疲れ様'" ]
	[f/s]謝謝你。[p_]
	[f/re]不過、我沒做什麼事吧？[p_]
[endif][end_talk]

;;行動
*じー
[cm_t][random_4][eval exp="f.last_act='c_じー'" ]
[if exp="f.r==1" ]
	[f/s_nt]…？[p_]
[elsif exp="f.r==2" ]
	[f/]…你怎麼了嗎、[name]？[p_]
[elsif exp="f.r==3" ]
	[f/p]…這麼、我臉上有什麽嗎？[p_]
[else]
	[f/clp]…這樣看著、總覺得不好意思啊。[p_]
[endif][end_talk]

*ぎゅー
[if exp="f.last_act=='c_欲しいもの/ぎゅって'" ][jump target="*欲しいもの/ぎゅって>する" ][endif]
[c_non]

*キスする
[end_talk]

;;その他
*オーレリア
[if exp="f.shop_talk>=1" ][else][c_non][endif]
[if exp="f.jealous>=4" ][jump target="*嫉妬" ][endif]
[cm_t][random_4]
[if exp="f.r==1" ]
	[f/c]那個人、很漂亮、但有點可怕不是嗎？[lr_]
	[f/re]不怎麼說話、覺得難以捉摸…。[p_]
[elsif exp="f.r==2" ]
	[f/]…長得很高大、那個店員。[lr_]
	[f/cl]不、那個印象强烈、雖然沒有別的特別的意思。[p_]
[elsif exp="f.r==3" ]
	[f/s]非常擅長打扮的人。[lr_]
	[f/re]不愧是服裝店的店員。[p_]
[else]
	[f/s]那家的店、有很多很好的洋服哦。[lr_]
	[f/re]也有罕見的東西。[p_]
[endif][eval exp="f.last_act='c_woman'" ][end_talk]

*ネフィー
[cm_t]
[if exp="f.cafe_talk!=1" ][c_non][endif]
[if exp="f.talk_neph==1" ][else][eval exp="f.talk_neph=1" ]
	[f/c]那個、是誰啊？[lr_]
	[f/s]…啊、那個服務員的名字嗎。[p_][endif]
[if exp="f.jealous>=4" ][jump target="*嫉妬" ][endif]

[random_5]
[if exp="f.r==1" ]
	[f/]那樣搖搖晃晃地擺放餐具。[lr_]
	[f/re]總覺得很厲害的。[p_]
[elsif exp="f.r==2" ]
	[f/]不尋常的人。[lr_]
	[f/cl]有自己的走路步調…。[p_]
[elsif exp="f.r==3" ]
	[f/]一個和其它服務員小姐衣服不一樣的嗎。[lr_]
	[f/re]那是非常特別、而且特別罕見的吧？[p_]
[elsif exp="f.r==4" ]
	[f/s]那個紮著馬尾長辮的吧。[p_]
	[f/re]雖然不方便但沒有撞到四周、[lr_]
	[f/cl]從來沒見過這樣的。[p_]
[else]
	[f/c]像是滑稽那樣的喝醉了一樣…有不可思議的動作的人啊。[lr_]
	[f/]但是那樣的動作很累、但是卻沒有那樣的樣子、[lr_]
	[f/s]因為沒看見過失誤、所以運動神經很好。[p_]
[endif][eval exp="f.last_act='c_woman'" ][end_talk]

;;返答
*嫉妬
[cm_t][random_2]
[if exp="f.r==1" ]
	[f/cl]…喜歡其他人的話。[lr_]
	[f/re]不、沒什麽的。[p_]
[else]
	[f/cl]…只是女人的話。[lr_]
	[f/re]不、沒什麽。[p_]
[endif][eval exp="f.last_act='c_嫉妬'" ][end_talk]

*嫉妬>愛してる
[cm_t][eval exp="f.love=f.love+2" ][eval exp="f.talk_love=f.talk_love+1" ]
[eval exp="f.last_act='c_嫉妬>愛してる'" ]
	[f/cl]…知道的。[lr_]
	[f/cp]…因為我也最愛[name]了！[p_]
[end_talk]

*嫉妬>ごめん
[cm_t][eval exp="f.last_act='c_嫉妬>ごめん'" ]
	[f/cl]…這個嗎？[p_]
	[f/scl]…呼呼[p_]
[end_talk]

*フェルム
[cm_t][eval exp="f.last_act='c_フェルム'" ]
[if exp="f.ferrum==1" ][eval exp="f.ferrum=2" ]
	[f/c]哦、那是誰呢？[lr_]
	[f/]…啊、那是商人的名字嗎。[p_]
	[f/re]你一個人出去玩的時候你遇見了嗎？[p_]
	[f/clc]下一次一定要好好地致謝…。[lr_]
	[f/c]如果、如果我不在的時候你見到他請謝謝他？[p_]
	[f/cl]就是他把我從出生的地方帶到[name]這裡來的。[lr_]
	[f/s]現在的我的幸福就是那他所賜。[p_]
[end_talk][endif]
[if exp="f.ferrum>=2" ][else][c_non][endif]

[random_6]
[if exp="f.r==1" ]
	[f/]那是商人、定期來這個街上的吧。[lr_]
	[f/s]工作、一定很順利的吧。[p_]
[elsif exp="f.r==2" ]
	[f/cl]那是商人、長期旅行習慣了。[lr_]
	[f/s]一定是在工作上要旅行的事很多吧。[p_]
[elsif exp="f.r==3" ]
	[f/]那個人從異國進口商品嗎。[lr_]
	[f/re]這麼說來、他把我送到這裡的時候也是、[r]
	[f/re]記得有幾箱字讀不懂的行李。[p_]
[elsif exp="f.r==4" ]
	[f/cl]溫柔是沒有的、但是也不粗暴。[lr_]
	[f/]像對待東西一樣的感覺、[r]
	當時應該是覺得這是「商品」一類的東西吧。[p_]
	[f/s]但是、特意帶到[name]地方來了、[r]
	作為一個作為人的人來了。[p_]
[elsif exp="f.r==5" ]
	[f/]以前[name]確實有幫助過那個人嗎？[lr_]
	[f/c]是什麼、做了危險的事情嗎…。[p_]
	[f/cl]至少我和那個人在一起的時間是[r]
	雖然沒有做這樣的工作的樣子。[p_]
[elsif exp="f.r==6" ]
	[f/cl]有點、可怕的人。[lr_]
	[f/s]但是也不見得會拋棄我、[r]
	[f/re]我想不是那麼壞的人。[p_]
[endif][end_talk]

;;お菓子
*ケーキ
[end_talk]
*クッキー
[end_talk]
*お菓子
[end_talk]
*アップルパイ
[end_talk]
*パンケーキ
[end_talk]
*チョコケーキ
[end_talk]

*医者
[end_talk]

*おっぱい
[cm_t][eval exp="f.last_act='c_胸'" ]
[f/c][name]果然喜歡、各種各樣豐滿魅力的女性嗎？[lr_]
[f/clc]每次看到那個服裝店的店員、都覺得非常自卑…。[p_]
[end_talk]

*料理
[cm_t][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_料理'" ]
	[f/]我做的東西適合你嗎？[lr_]
	[f/s][name]喜歡的話、就告訴我。[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_料理'" ]
	[f/s]雖然偶爾會有點失敗、但是我還是記得怎麼做比較好的。[lr_]
	[f/ss]會更加更加熟練的、請期待啊。[p_]
[else][eval exp="f.last_act='c_料理'" ]
	[f/s]想能做出來更各種各樣的。[lr_]
	[f/re][name]說要吃的話什麼都能製造♡[p_]
[endif][end_talk]

*えんいー
是的、是嗎？
…呼喵
[end_talk]

*傷跡
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_傷跡'" ]
	[f/cl]真的、有這樣的傷痕不會變得美麗吧。[lr_]
	[f/s]但是、[name]如果你不介意的話那麼就不會那麼悲傷了。[p_]
[else][eval exp="f.last_act='c_傷跡'" ]
	[f/clc]受傷的時候的記憶很强烈。[p_]
	[f/re]很痛、很害怕、[r]
	無意中發現了一個嚴重的痕迹、眼淚就停不下來了。[p_]
	[f/]但是、已經過去了。[lr_]
	[f/cl]只是感嘆是沒有任何意義的。這我也知道。[p_]
[endif][end_talk]

*ほにゃらら
是？
喵？
…喵？
[end_talk]

;;特殊
*仕事
*仕事をしてる
[if exp="f.last_act=='c_偉い/何かした？'" ][jump target="*偉い/何かした？>仕事" ][endif]
*仕事をしよう
[if exp="f.Dc_f[0]!='got'" ][c_non][endif]
[cm_t]
[if exp="f.work_c==1" ][eval exp="f.last_act='c_仕事をしよう/もう閉めた'" ]
	[f/c]咦、診所不是才關上嗎…？[p_]
[end_talk]
[elsif exp="f.act>=5" ][eval exp="f.last_act='c_仕事をしよう/もう遅い'" ]
	[f/c]已經到了這時間了、我想即使打開診療所也不會來患者吧…。[p_]
[end_talk][endif]
[jump storage="act_with/work.ks" target="*work" ]

*脱いで
[if exp="f.lust<=100" ][c_non][endif]
[cm_t]
[if exp="f.dress==0 && f.lust<=500" ][eval exp="f.last_act='c_脱いで/もう脱いでる'" ]
	[f/p]好、我知道了…。[p_][end_talk]
[elsif exp="f.dress==0 && f.under_p==0 && f.dress==0" ][eval exp="f.last_act='c_脱いで/もう脱いでる'" ]
	[f/p]好、那就換衣服了…？[p_]
[end_talk][endif]

[if exp="f.lust<=400" ][eval exp="f.dress=0" ]
	[f/p]现在吗？[lr_]
	[f/clp]是的…我知道了。[p_]
	[chara_part name="sit" time="300" dress="00.png" wait="false" allow_storage=true ]
	[chara_part name="sit" time="300" sleeve="00.png" wait="false" allow_storage=true ]
	[chara_part name="sit" time="300" sleeve_b="00.png" wait="true" allow_storage=true ]
	…。[lr_]
	[f/p]所以…怎麼辦？[p_]
[else][eval exp="f.under_b=0" ][eval exp="f.under_p=0" ][eval exp="f.dress=0" ]
	[f/p]…好。[lr_]
	[chara_part name="sit" time="300" dress="00.png" wait="false" allow_storage=true ]
	[chara_part name="sit" time="300" sleeve="00.png" wait="false" allow_storage=true ]
	[chara_part name="sit" time="300" sleeve_b="00.png" wait="false" allow_storage=true ]
	[chara_part name="sit" time="300" under_p="00.png" wait="false" allow_storage=true ]
	[chara_part name="sit" time="300" under_b="00.png" wait="true" allow_storage=true ]
	[f/shp_nt]…[lr_]
	[f/re]我脫了、[name]♡[p_]
[endif][eval exp="f.last_act='c_脱いで/はい'" ][add_lust_act][end_talk]

*セックス
[if exp="f.lust<=100" ][c_non][endif]
[cm_t]
[if exp="f.act>=4" ][jump storage="H/before.ks" target="*bed" ][endif]
[if exp="f.lust<=500" ]
	[f/p]哎、現在開始嗎？[lr_]
	[f/re]天還沒黑…。[p_]
	[f/clp]不、不討厭呦。[lr_]
	[f/sp]那臥室…。[p_]
	[jump storage="H/before.ks" target="*bed" ]
[else]
	[f/p]這個時間開始嗎？[p_]
	[f/sp]不、沒關係的。[lr_]
	[f/shp]什麽時候、都能準備的♡[p_]
	[jump storage="H/before.ks" target="*bed" ]
[endif]

*出かけよう
[cm_t][jump storage="act_with/go_out.ks" target="*out" ]

*お茶にしよう
[if exp="f.act>=3 && f.act<=4 && f.tea_time==0" ][cm_t][jump storage="act_with/tea.ks" target="*tea" ]
[else][c_non][endif]

*出かけてくる
[cm_t][jump storage="act_alone/out_alone.ks" target="*alone" ]


*おやすみ
[if exp="f.act<=4" ][c_non][endif]
[cm_t]
	[f/]比平時早一點早啊、今天累了嗎？[lr_]
	[f/s]那麼、我也馬上睡覺吧。[p_]
[jump storage="talk/step6.ks" target="*night" ]

*着替えて
[cm_t]
	[f/s]好、我知道了。[p_]
	[f/re]要換上哪一件？[p_]
[jump storage="sys/dress.ks" target="*change_dress" ]

*¥e
[_][close][eval exp="f.system_act=1" ][return_menu]

;;オリジナル衣装ボタン
*original_dress
[_][if exp="f.ori_c==1" ][eval exp="f.ori_c=0" ]（原創服裝按鈕表示關閉）[p_]
[else][eval exp="f.ori_c=1" ]（原創服裝按鈕表示接通）[p_][endif]
[eval exp="f.system_act=1" ][return_menu]


;;会話返答
*偉い/何かした？>仕事
[cm_t]
[random_2][eval exp="f.last_act='c_偉い/何かした？>仕事'" ]
	[f/]工作啊？[p_]
[if exp="f.r==1" ]
	[f/s]但是、還沒做什麼像樣的事情出來、[r]
	我決定要成為和[name]一樣厲害的人。[p_]
[else]
	[f/s]我有在某種程度上給[name]派上用場。[lr_]
	[f/ss]工作什麼的只不過是一種形式、但是能多少的派上用場倒是很開心。[p_]
[endif][end_talk]

*家事
[if exp="f.last_act=='c_偉い/何かした？'" ][jump target="*偉い/何かした？>家事" ][endif]
[c_non]
*偉い/何かした？>家事
[cm_t][random_2]
	[f/]家務這些嗎？[p_]
[if exp="f.r==1" ][eval exp="f.last_act='c_偉い/何かした？>家事'" ]
	[f/s]能多少的減輕[name]的負擔就好了…。[lr_]
	[f/ss]其它時候有什麼幫忙以外的事情也可以請叫我。[p_]
[else][eval exp="f.last_act='c_偉い/何かした？>家事'" ]
	[f/cl]我想我現有比較能派上用場了…。[lr_]
	[f/]最有進步的就是做菜吧。[p_]
	[f/s]美味しいご飯をいろいろ作れるようになったら…[lr_]
	[f/ssp]その時はまた褒めてくれますか？[p_]
[endif][end_talk]

*偉い/何かした？>可愛い
[cm_t][random_2]
	[f/]哎…？[lr_]
[if exp="f.r==1" ][eval exp="f.last_act='c_偉い/何かした？>可愛い'" ]
	[f/sc]這是在、誇獎我嗎？[lr_]
	[f/ssc]好高興、都不知道應該怎麼回答了…。[p_]
[else][eval exp="f.last_act='c_偉い/何かした？>可愛い'" ]
	[f/]有這種事情嗎？[lr_]
	[f/ss]…我非常不理解、不過[name]高興的話我也跟著高興就是了。[p_]
[endif][end_talk]


*どういたしまして
[if exp="f.last_act=='c_ありがとう/ありがとう'" ][jump target="*ありがとう/ありがとう>どういたしまして" ][endif]
[if exp="f.last_act=='c_幸せ？/ありがとう'" ][jump target="*ありがとう/ありがとう>どういたしまして" ][endif]
[c_non]

*ありがとう/ありがとう>どういたしまして
[cm_t][eval exp="f.last_act='c_ありがとう/ありがとう>どういたしまして'" ]
	[f/s]嗯。謝謝。[lr_]
	[f/scl]真的…。[p_]
[end_talk]

*出来てる
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump target="*ありがとう/出来てるかな>出来てる" ][endif]
[c_non]
*ありがとう/出来てるかな>出来てる
[cm_t][random_2][eval exp="f.last_act='c_ありがとう/出来てるかな>出来てる'" ]
	[f/s]是這樣的嗎？[lr_]
[if exp="f.r==1" ]
	[f/re]但是、不過和[name]在一起的話我會做得更好的。[p_]
	[f/ssp]所以還是要感謝[name]才對…。[p_]
[else]
	[f/re]我拼命努力的理由是因為想讓[name]高興[lr_]
	[f/ss]既然你高興的話我就高興了。[p_]
[endif][end_talk]

*お願い
[if exp="f.last_act=='c_助かってる/これからも'" ][jump target="*助かる/これからも>期待してる" ][endif]
[c_non]

*期待してる
[if exp="f.last_act=='c_助かってる/これからも'" ][jump target="*助かる/これからも>期待してる" ][endif]
[c_non]

*助かる/これからも>期待してる
[cm_t][random_2][eval exp="f.last_act='c_助かる/これからも>期待してる'" ]
[if exp="f.r==1" ]
	[f/ss]沒問題、請交給我吧。[lr_]
	[f/s][name]不管想讓我做什麼我都會做的。[p_]
[else]
	[f/s]好、請期待吧。[lr_]
	[f/ss]我一定會努力完成[name]的任務的。[p_]
[endif][end_talk]

*もう十分
[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ][jump target="*助かる/これからも>十分" ][endif]
[c_non]
*助かる/これからも>十分
[cm_t][random_2][eval exp="f.last_act='c_助かる/これからも>十分'" ]
	[f/]是這樣的嗎？[p_]
[if exp="f.r==1" ]
	[f/cl]…不。這沒什麼的。[lr_]
	[f/s]我想我還可以做得更好。[p_]
[else]
	[f/s]不、我還應該更努力的。[lr_]
	[f/re]因為這還不足以讓[name]迷上我。[p_]
[endif][end_talk]

;*助かる/これからも>ありがとう
[cm_t][c_non]
;[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ][else][c_non][endif]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]

*良かった
[if exp="f.last_act=='c_楽しい？/はい'" ][jump target="*楽しい？/はい>良かった" ][endif]
[if exp="f.last_act=='c_幸せ？/ありがとう' || f.last_act=='c_幸せ？/一緒だから'" ][jump target="*幸せ？/はい>良かった" ][endif]
[if exp="f.last_act=='c_元気？/はい'" ][jump target="*元気？/はい>良かった" ][endif]
[if exp="f.last_act=='c_無理してない？/はい'" ][jump target="*無理してない？/はい>良かった" ][endif]
[c_non]

*楽しい？/はい>良かった
[cm_t][c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]

*無理してない？/はい>良かった
[cm_t][random_2][eval exp="f.last_act='c_無理してない？/はい>良かった'" ]
[if exp="f.r==1" ]
	[f/s]我覺得體力比以前要好了、所以這個可以不要擔心了沒關係的。[lr_]
	[f/ss]雖然我很高興[name]怎麼的在乎我。[p_]
[else]
	[f/s]雖然偶爾看起來有些累但不是真的是這樣子、[r]
	只不過是太高興了有些緊張而已不需要擔心。[p_]
[endif][end_talk]

*幸せ？/はい>良かった
[cm_t]
[c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]

*こっちも楽しい
[if exp="f.last_act=='c_楽しい？/はい'" ][jump target="*楽しい？/はい>こっちも楽しい" ][endif]
[c_non]
*楽しい？/はい>こっちも楽しい
[cm_t][random_2][eval exp="f.last_act='c_楽しい？/はい>こっちも楽しい'" ]
[if exp="f.r==1" ]
	[f/s]這樣啊？[lr_]
	[f/ss]和[name]在一起的時候我都覺得非常快樂幸福。[p_]
[else]
	[f/s]那就好。[p_]
	[f/cl]我還在擔心[name]的溫柔是不是勉強出來給我的[lr_]
	[f/ss]你這樣說我就安心了。[p_]
[endif][end_talk]

*楽しい？/はい>嬉しい
[cm_t][c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]


*幸せ？/はい>こっちも幸せ
;[cm_t][c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]

*幸せ？/はい/ありがとう>どういたしまして
;[cm_t][c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif]
;[end_talk]

*こちらこそ
[if exp="f.last_act=='c_幸せ？/ありがとう'" ][jump target="*幸せ？/ありがとう>こちらこそ" ][endif]
[c_non]
*幸せ？/ありがとう>こちらこそ
[cm_t][eval exp="f.last_act='c_幸せ？/ありがとう>こちらこそ'" ]
	[f/scl]我知道[name]會是這麼想的。[p_]
	[f/]所以「不客氣」是正確的回答…、[lr_]
	[f/ss]但是還是要再一次的說一句「謝謝你」、[name]。[p_]
[end_talk]

*大丈夫
*安心して
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump target="*ありがとう/出来てるかな>大丈夫" ][endif]
[if exp="f.last_act=='c_幸せ？/怖いぐらい'" ][jump target="*幸せ？/怖いぐらい>大丈夫" ][endif]
[c_non]

*幸せ？/怖いぐらい>大丈夫
[eval exp="f.last_act='c_幸せ？/怖いぐらい>大丈夫'" ]
[if exp="f.love>=1500" ][jump target="*幸せ？/怖いぐらい>大丈夫b" ][endif]
[cm_t]
	[f/s]…是的、是這樣的。[lr_]
	[f/ss]有[name]在、沒什麼事情是可怕的。[p_]
[end_talk]
*幸せ？/怖いぐらい>大丈夫b
[cm_t][random_2]
[if exp="f.r==1" ]
	[f/s]はい。ありがとうございます。[p_]
	[f/re]でもそんなに深刻に考えたりはしてないですよ。[lr_]
	[f/ss][name]がいてくれたら、何も怖いことなんてないです。[p_]
[else]
	[f/s]そうですね。[lr_]
	[f/ss][name]がいるんだから、怖がることなんてないですよね。[p_]
[endif][end_talk]

;幸せ？>怖いぐらい>慣れるよ
*慣れるよ
[if exp="f.last_act=='c_幸せ？/怖いぐらい'" ][jump target="*幸せ？/怖いぐらい>慣れるよ" ][endif]
[c_non]
*幸せ？/怖いぐらい>慣れるよ
[cm_t][random_2][eval exp="f.last_act='c_幸せ？/怖いぐらい>慣れるよ'" ]
[if exp="f.r==1" ]
	[f/]這個嗎？[lr_]
	[f/cl]可以說是…比較習慣了吧。[p_]
[else]
	[f/clc]習慣了這裡又會覺得以前習慣的地方非常恐怖。[p_]
	[f/c]…啊、對不起、[lr_]
	[f/s]總是在考慮過去不太好。[p_]
[endif][end_talk]

*思いついたら言って
[if exp="f.last_act=='c_欲しいもの/特に'" ][jump target="*欲しいもの/特に>思いついたら" ][endif]
[c_non]
*欲しいもの/特に>思いついたら
[cm_t][random_2][eval exp="f.last_act='c_欲しいもの/特に>思いついたら'" ]
	[f/s]那好吧。[p_]
	[f/cl]但是、睡覺的地方也好吃的飯也好、連衣服都是頂級的了…[lr_]
	[f/c]現在真的是想不出來其它想要的東西了…。[p_]
[end_talk]

*欲しいもの/ぎゅって>する
[cm_t][random_3][eval exp="f.last_act='c_欲しいもの/ぎゅって>する'" ]
[_][f/s_nt]（擁抱希露薇[p_]
[if exp="f.r==1" ]
	[f/ss]呼呼…♡[lr_]
	[f/sp]非常謝謝、[name]♡[p_]
[elsif exp="f.r==2" ]
	[f/sp][name]♡[lr_]
	[f/ssp]這就是我最想要的♡[p_]
[else]
	[f/clp]嗯…[lr_]
	[f/sp]就是這樣、這樣做我最幸福了…♡[p_]
[endif][end_talk]

*そうじゃない
*違う
[if exp="f.last_act=='c_欲しいもの/ぎゅって'" ][jump target="*欲しいもの/ぎゅって>違う" ][endif]
[c_non]
*欲しいもの/ぎゅって>違う
[cm_t][eval exp="f.last_act='c_欲しいもの/ぎゅって>違う'" ]
	[f/cl]嗯、現在沒什麼想要的。[lr_]
	[f/s]我現在的願望就是和[name]永遠在一起。[p_]
[end_talk]


;;end
*non
[_][eval exp="f.system_act=1" ][return_menu]

*end_talk
[_][eval exp="f.communicate_c=f.communicate_c+1" ]
[eval exp="f.daily_communicate=f.daily_communicate+1" ]

[if exp="f.daily_communicate==3" ][eval exp="f.daily_communicate=0" ]
[eval exp="f.daily_talk=f.daily_talk+1" ][endif]
[if exp="f.communicate_c>=3" ][eval exp="f.communicate_c=0" ][eval exp="f.act=f.act+1" ][endif]
[if exp="f.last_act=='c_woman'" ][eval exp="f.jealous=f.jealous+1" ][else][eval exp="f.jealous=0" ][endif]
[return_menu]

