*check
[cm][eval exp="f.r=0" ]
[if exp="f.sav_dress[0]==f.dress" ][eval exp="f.system_act=1" ][return_menu][endif]
[eval exp="f.last_act='dress_up'" ]

[random_2][syl]
;;落ち着いた服
[if exp="f.dress>=11 && f.dress<=19 && f.r==1" ]
[f/s]第一次買的衣服啊。[lr_]
[f/scl]來[name]這以後的事、各種各樣地回憶起。[p_]
[elsif exp="f.dress>=11 && f.dress<=19" ]
[f/s]第一次買的衣服啊。[lr_]
[f/scl]穿起來、說不定是最莊重的衣服。[p_]

;;ひらひらした服
[elsif exp="f.dress>=21 && f.dress<=29 && f.r==1" ]
[f/s]飛舞而可愛的衣服呦。[lr_]
[f/re]我也這麼可愛嗎？[lr_]
[f/cl]和衣服相稱嗎…。[p_]
[elsif exp="f.dress>=21 && f.dress<=29" ]
[f/s]雖然製作得很好、但是質地很柔軟、穿起來很舒服。[lr_]
[f/re]因為沒有勒緊手足所以活動方便。[p_]

;;ワンピース
[elsif exp="f.dress>=41 && f.dress<=49 && f.r==1" ]
[f/s]在炎熱的天穿著很凉快啊。[lr_]
[f/cl]…有點孩子氣吧？[p_]
[elsif exp="f.dress>=41 && f.dress<=49" ]
[f/s]有可愛花紋的面料、[r]
[f/re]即使沒有修飾也會變得時尚的感覺吧。[p_]

;;ナース服
[elsif exp="f.dress>=51 && f.dress<=59 && f.r==1" ]
[f/s]工作穿的。[lr_]
[f/ss]努力幫忙！[p_]
[elsif exp="f.dress==51" ]
[f/s]白色感覺就是乾淨。[lr_]
[f/re]果然比較適合我工作的感覺。[p_]
[elsif exp="f.dress>=52 && f.dress<=59" ]
[f/]醫生和護士的工作穿的是白色的印象很强、[r]
[f/re]也有這樣的顏色。[p_]

;;和服
[elsif exp="f.dress>=61 && f.dress<=69 && f.r==1" ]
[f/s]有點難穿、不過、很漂亮的花樣喲。[lr_]
[f/re]看得入迷了。[p_]
[elsif exp="f.dress>=61 && f.dress<=69" ]
[f/cl]因為不方便活動所以不適合工作、[lr_]
[f/s]取而代之的是嫻雅的心情。[p_]

;;セーラー
[elsif exp="f.dress>=71 && f.dress<=79 && f.r==1" ]
[f/s]穿這樣行動相當方便喲。[lr_]
[f/re]水兵穿這樣是理所當然的也說不定。[p_]
[elsif exp="f.dress>=71 && f.dress<=79" ]
[f/s]領子獨特的形式很有意思。[lr_]
[f/re]赤色圍巾的一點也不好看。[p_]

;;メイド
[elsif exp="f.dress>=81 && f.dress<=89 && f.r==1" ]
[f/ss]在家努力工作。[lr_]
[f/s]打掃地洗衣服。總有一天料理裁縫也會的。[p_]
[elsif exp="f.dress==81" ]
[f/s]工作服竟然能如此飄逸、[lr_]
[f/re]穿時髦的衣服真開心。[p_]
[elsif exp="f.dress>=82 && f.dress<=89" ]
[f/s]布料很亮的顏色與洋服類似。[lr_]
[f/ss]在家工作弄髒就浪費了。[p_]

;;ブレザー
[elsif exp="f.dress>=91 && f.dress<=99 && f.r==1" ]
[f/s]總覺得這要穿的話感覺脊背會變挺直的。[lr_]
[f/re]心情也緊繃起來了。[p_]
[elsif exp="f.dress>=91 && f.dress<=99" ]
[f/s]質地硬、不過手感不錯啊。[lr_]
[f/re]詳細情況還不知道,但我總覺得質量好。[p_]

;;ネクタイとシャツ
[elsif exp="f.dress>=101 && f.dress<=109 && f.r==1" ]
[f/s]雖然沒有女孩子的打扮、但是活動很容易穿起來很好。[p_]
[elsif exp="f.dress>=101 && f.dress<=109" ]
[f/]我想打領帶什麼的、都沒有想像過。[lr_]
[f/s]…合適嗎？[p_]

;;清楚
[elsif exp="f.dress>=111 && f.dress<=119 && f.r==1" ]
[f/]總覺得長大的女孩子穿的衣服喲。[lr_]
[f/scl]稍微有些書氣了。[p_]
[elsif exp="f.dress>=111 && f.dress<=119" ]
[f/s]雖然是在翩然、但設計了一個很好的設計很好的西服呢。[p_]

;;カジュアル
[elsif exp="f.dress>=121 && f.dress<=129 && f.r==1" ]
[f/cl]穿起來感覺不壞、[r]
不過穿褲子不習慣有些靜不下…。[p_]
[elsif exp="f.dress>=121 && f.dress<=129" ]
[f/s]雖然是男性的組合、[r]
頸部的樣子和身體纖細的設計[r]
襯托出女性的氣質。[p_]

;;タイト
[elsif exp="f.dress>=131 && f.dress<=139 && f.r==1" ]
[f/s]合身的設計、不過沒有那種死板的感覺。[lr_]
[f/re]覺得穿著非常舒服。[p_]
[elsif exp="f.dress>=131 && f.dress<=139" ]
[f/ss]這衣服布料非常柔軟光滑喲。[lr_]
[f/s]能設計成不緊的感覺大概因為是這種布料。[p_]

;;ベルト
[elsif exp="f.dress>=141 && f.dress<=149 && f.r==1" ]
[f/c]果然要穿這還是費一點工夫啊。[lr_]
[f/s]但是皮帶的質地結實覺得很強。[p_]
[elsif exp="f.dress>=141 && f.dress<=149" ]
[f/]因為是很好的衣服所以很沉重所以不太容易活動。[lr_]
[f/s]但是沒有不舒服。[p_]

;;大リボン
[elsif exp="f.dress>=151 && f.dress<=159 && f.r==1" ]
[f/]意外的紮實的服裝面料。[lr_]
[f/s]比想像的要好。[p_]
[elsif exp="f.dress>=151 && f.dress<=159" ]
[f/s]裙子輕飄飄的。[lr_]
[f/re]或者說毛絨絨柔順的？[p_]

;;彼シャツ
[elsif exp="f.dress>=5 && f.dress<=6 && f.lust>=500" ]
[f/clp][font size=20][name]的襯衫…。[lr_]
[f/re][name]的氣味…。[resetfont][p_]
[f/hcp]沒、什麼都沒有。[p_]
[elsif exp="f.dress>=5 && f.dress<=6" ]
[f/p][name]的襯衫…。[lr_]
[f/sp]我已經有了。[p_]

;;ベビド1
[elsif exp="f.dress>=1001 && f.dress<=1009 && f.lust>=500" ]
[f/p]明明穿著、却什么也藏不住…。[lr_]
[f/hcp]…[name]的就在前面啊？[p_]
[elsif exp="f.dress>=1001 && f.dress<=1009" ]
[f/clp]虽然手感很好、[lr_]
[f/cp]那個、透明…。[p_]

;;ベビド2
[elsif exp="f.dress>=1011 && f.dress<=1019 && f.lust>=500" ]
[f/sp]這種像是大人的啊。[lr_]
[f/shp]那個、性感…嗎？[p_]
[elsif exp="f.dress>=1011 && f.dress<=1019" ]
[f/p]雖然花邊很可愛…。[lr_]
[f/cp]但是透明的那個、有點在意…。[p_]

;;透けワンピース
[elsif exp="f.dress>=1021 && f.dress<=1029 && f.lust>=500" ]
[f/p]为什么要这样透明的连衣裙…。[lr_]
[f/hp][ name ]的面前就好了。[p_]
[elsif exp="f.dress>=1021 && f.dress<=1029" ]
[f/cp]這件連衣裙、總覺得面料太薄了…？[lr_]
[f/p]…透明的。[p_]

;;上のみ
[elsif exp="f.dress>=1031 && f.dress<=1059 && f.lust>=500" ]
[f/cp]那個、請不要一直看…。[lr_]
[f/re]覺得…那個…。[p_]
[f/clcp][font size=15]濕了呀…[resetfont]。[p_]
[elsif exp="f.dress>=1031 && f.dress<=1059" ]
[f/p]這個、裙子是…。[lr_]
[f/cp]只有上面嗎？[p_]

;;スカート
[elsif exp="f.dress>=1061 && f.dress<=1079 && f.lust>=500" ]
[f/cp]為什麼會只穿裙子…。[lr_]
[f/re]能增加上衣嗎？[p_]
[f/shq]…好嗎？[p_]
[elsif exp="f.dress>=1061 && f.dress<=1079" ]
[f/cp]只是裙子嗎？[lr_]
[f/clcp]嗚…我不太理解…。[p_]

;;カジュアル上着
;[elsif exp="f.dress>=1081 && f.dress<=1089 && f.lust>=500" ]
;[elsif exp="f.dress>=1081 && f.dress<=1089" ]
;;ベルトコルセット
;[elsif exp="f.dress>=1091 && f.dress<=1099 && f.lust>=500" ]
;[elsif exp="f.dress>=1091 && f.dress<=1099" ]
;;
;[elsif exp="f.dress>=1001 && f.dress<=1009 && f.lust>=500" ]
;[elsif exp="f.dress>=1001 && f.dress<=1009" ]
;;
;[elsif exp="f.dress>=1001 && f.dress<=1009 && f.lust>=500" ]
;[elsif exp="f.dress>=1001 && f.dress<=1009" ]


;;清楚襟
;[elsif exp="f.dress==2001 && f.lust>=500" ]
;[elsif exp="f.dress==2001" ]


;;タイト一部
[elsif exp="f.dress==2002 && f.lust>=500" ]
[f/cp]肩膀和手臂隱藏著其他的什麼也沒有隱藏…。[lr_]
[f/hcp]有多餘的情感感覺…。[p_]
[elsif exp="f.dress==2002" ]
[f/cp]這…比赤裸要害羞。[lr_]
[f/re]不、[name]要是喜歡的話、就好…。[p_]

;;
[endif]
[return_menu]

