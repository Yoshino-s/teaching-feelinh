;;名前変更H----------------------------------------------------------
*name_change_h
[cm_t][syl][f/p]哎、要改變對[name]現在的稱呼…嗎？[p_]
[f/re]…好的、那我應該怎麽稱呼你呢？[t/s]
[eval exp="f.name_h_=f.name_h" ][eval exp="f.system_act=1" ]

*name_edi_h
[edit left=780 top=160 width="400" height="42" name="f.name_h" ]
[button target="*sbm_name_h" x="645" y="220" graphic="menu/n_call.png" ]
[button target="*name_h_def" x="645" y="280" graphic="menu/n_call_def.png" ]
[button target="*nop_h" x="645" y="340" graphic="menu/n_non.png" ][cancelskip][s]
*sbm_name_h
[commit][cm][if exp="f.name_h==''" ][jump target="*nop_h" ][endif]
[if exp="f.lust>=800" ][f/sq]好、那麼…就[name_h]這樣叫你了…♡
[else][f/re]是、那麼…以後就[name_h]這樣叫了。[endif]
[p_][return_menu]
*name_h_def
[cm][eval exp="f.name_h=0" ]
[f/re]要繼續這樣嗎？[r]我知道了。[p_][return_menu]
*nop_h
[cm][if exp="f.name_h==''" ][eval exp="f.name_h=f.name_h_" ][endif]
[f/re]嗯、算了嗎？[p_][return_menu]

;;名前変更----------------------------------------------------------
*name_change
[cm_t][syl][f/]想要改變稱呼的方式…嗎？[lr_]
[f/s]好的、你想要用什麼稱呼呢？[t/s]
[eval exp="f.name_=f.name" ][eval exp="f.system_act=1" ]

*name_edi
[edit left=780 top=170 width="400" height="42" name="f.name" ]
[button target="*sbm_name" x="672" y="260" graphic="menu/n_call.png" ]
[button target="*nop" x="672" y="330" graphic="menu/n_non.png" ][cancelskip][s]

*sbm_name
[commit][cm][if exp="f.name==''" ][_]-請輸入稱呼-[p_][jump target="*name_edi" ][endif]

[syl][if exp="f.name==f.name_" ]
[f/s]嗯、叫同樣的名字嗎？[p_]
[f/re]那就這樣稱呼[name]你了。[p_][return_menu]

[elsif exp="f.name=='哥哥' || f.name=='大哥哥' || f.name=='哥' || f.name=='兄長大人' || f.name=='歐尼醬' || f.name=='にぃに' || f.name=='にぃ' || f.name=='兄さま' || f.name=='兄様' || f.name=='あに様'" ]
[f/re]我雖然沒有兄弟姐妹。但是你能像疼愛妹妹一樣疼愛我真的很開心。[lr_]
[f/sp][name]。[p_][return_menu]

[elsif exp="f.name=='親愛的'" ]
[f/sp]親・愛・的…♡。[p_][return_menu]

[elsif exp="f.name=='老公' || f.name=='老爺' || f.name=='相公'" ]
[f/sp][name]…♡[p_][return_menu]

[elsif exp="f.name=='爸爸' || f.name=='父' || f.name=='父親' || f.name=='爸'" ]
[f/re]你已經把我當成你的女兒了嗎。[p_][return_menu]

[elsif exp="f.name=='醫生' || f.name=='醫師' || f.name=='せんせい' || f.name=='せんせー' || f.name=='センセー'" ]
[f/re]因為你作為醫生、已經習慣了這樣的稱呼了嗎。[p_][return_menu]

[elsif exp="f.name=='先輩' || f.name=='前輩' || f.name=='センパイ'" ]
[f/]…是什麼樣的前輩呢？[p_][return_menu]

[elsif exp="f.name=='主人大人' || f.name=='マスター'" ]
[f/]也就是「主人」換一種說法吧？[r]
雖然聽上去的感覺完全不一樣。[p_][return_menu]

[elsif exp="f.name=='客人' || f.name=='客戶'" ]
[f/]…嗯唉ー？[p_][return_menu]

[elsif exp="f.name=='經紀人' || f.name=='Pさん' || f.name=='プロデューサーさん'" ]
[f/]…[name]是什麽啊？[lr_]
[f/c]…偶像？？很抱歉、我不是很清楚呢[p_][return_menu]

[elsif exp="f.name=='主人' || f.name=='ごしゅじんさま'" ]
[f/re]看來你習慣最初的稱呼了呢。[p_][return_menu]

[elsif exp="f.name=='爺爺' || f.name=='爺'　|| f.name=='大爺'" ]
[f/]感覺把你稱呼地這麽老是不是不太好呢…。[p_][return_menu]

[elsif exp="f.name=='親愛的' && f.lust>=10 || f.name=='だぁりん' && f.lust>=10" ]
[f/p]愛人…。在街上不好意思叫。[p_][return_menu]

[elsif exp="f.name=='博士' || f.name=='教授' || f.name=='はかせ' || f.name=='きょうじゅ'" ]
[f/]…做什麽研究的嗎？[p_][return_menu]

[elsif exp="f.name=='隊長'" ]
[f/]過去有鍛煉過身體嗎？[lr_]
[f/re]難道、曾經在軍隊裏呆過什麽的…？[p_][return_menu]

[elsif exp="f.name=='垃圾' || f.name=='豚' || f.name=='豬' || f.name=='垃圾蟲' || f.name=='クズ' || f.name=='クソムシ' || f.name=='バカ' || f.name=='馬鹿' || f.name=='アホ'" ]
[jump target="*mazo" ]

[else]
[f/s]好的。那以後就「[name]」這樣稱呼你了。[p_][return_menu][endif]

*mazo
[f/c]
[if exp="f.lust>=100" ]
欸…真的想讓我這樣稱呼你嗎？不是在開玩笑嗎？[lr_]
[f/clc]…如果你想被這樣稱呼的話、我明白了。[p_]
[f/c]但是、請不要討厭我哦。[p_][return_menu]

[else]
欸…那樣的稱呼、我做不到。[lr_]
[f/re]如果可以的話、請讓我用其他的稱呼方式吧。[p_]
[eval exp="f.name=f.name_" ][jump target="*name_edi" ]
[endif]

*nop
[cm][if exp="f.name==''" ][eval exp="f.name=f.name_" ][endif]
[syl][f/]嗯、算了嗎？[p_][return_menu]

