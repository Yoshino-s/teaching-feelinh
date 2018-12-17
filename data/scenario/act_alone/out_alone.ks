;;見送り
*alone
[cm][set_stand][bg_door][eval exp="f.last_act='out_alone'" ]
[_]（家裏的事交給希露薇去買東西吧。[p_]
[syl][f/nt][show_stand]
[if exp="f.act>=5" ][f/]太陽都下山了、你一個人去買東西嗎？[p_]
[else][f/]你一個人去買東西嗎？[p_][endif]

[if exp="f.love<=500" ][jump target="*a" ]
[elsif exp="f.love<=1000" ][jump target="*b" ]
[elsif exp="f.love<=1500" ][jump target="*b_c" ]
[elsif exp="f.love<=2000" ][jump target="*c_d" ]
[else][jump target="*d_e" ][endif]

*b_c
[if exp="f.lust<=500" ][jump target="*b" ][else][jump target="*c" ][endif]
*c_d
[if exp="f.lust<=1000" ][jump target="*b_c" ][else][jump target="*d" ][endif]
*d_e
[if exp="f.lust<=1500" ][jump target="*c_d" ][else][jump target="*e" ][endif]

*a
[f/s]好的、你慢走。請多加小心。[p_]
[jump target="*outside" ]
*b
[f/s]好的、你慢走。[lr_]
[f/ss]家裏的事情請交給我吧。[p_]
[jump target="*outside" ]
*c
[f/s]好的、你慢走。[lr_]
[f/scl]…恭候你回來。[p_]
[jump target="*outside" ]
*d
[f/s]…好的、你慢走。[lr_]
[f/cl]要馬上就回來喔。[p_]
[jump target="*outside" ]
*e
[f/c]…好的、你慢走。[lr_]
[f/clc]沒關係的、沒關係…。[p_]

;;出先
*outside
[stop_bgm][black]
[_]…。[p_]
[if exp="f.act==0 && f.book==1" ][jump storage="act_alone/ferrum.ks" target="*ferrum" ][endif]

*not_call
[if exp="f.act>=5" ]
（需要的東西買到了。[lr]
順便到哪裡去嗎？[l]
[button storage="act_alone/shop_night.ks" target="*shop" graphic="ch/shop.png" x="0" y="260" ]
[button target="*back_home_n" graphic="ch/back.png" x="0" y="410" ]

[else][bgm_OB][bg_town]
（需要的東西買到了。[lr]
順便到哪裡去嗎？[l]
[button storage="act_alone/cafe_alone.ks" target="*cafe" graphic="ch/lunch.png" x="0" y="260" ]
[button target="*back_home" graphic="ch/back.png" x="0" y="410" ]
[endif]
[cancelskip][s]


*back_home
[cm]
[_]（不繞道直接回去吧。[p_]
[eval exp="f.miyage='nothing'" ][stop_bgm]
[jump target="*home" ]
*back_home_n
[cm]
[_]（不繞道直接回去吧。[p_]
[eval exp="f.shop_night='not'" ][stop_bgm]

;;帰宅
*home
[cm][set_stand]
[_]（…[p_]

[if exp="f.self>=1" ][else][eval exp="f.self=0" ][endif]
[if exp="f.lust>=150 && f.self==0 && f.miyage=='nothing' || f.lust>=150 && f.self==0 && f.shop_night=='not'" ]
[jump storage="H/self.ks" target="*H_self_first" ][endif]

;[if exp="f.lust>=150 && f.self_c>=10 && f.miyage=='nothing' || f.lust>=150 && f.self==0 && f.shop_night=='not'" ]


[if exp="f.sexless_c>=1 && f.self>=1" ][eval exp="f.sexless=f.sexless-1" ]
[eval exp="f.self=f.self+1" ][eval exp="f.lust=f.lust+1" ][endif]
[eval exp="f.daily_out='alone'" ]

[if exp="f.love<=500" ][jump target="*a_" ]
[elsif exp="f.love<=1000" ][jump target="*b_" ]
[elsif exp="f.love<=1500" ][jump target="*b_c_" ]
[elsif exp="f.love<=2000" ][jump target="*c_d_" ]
[else][jump target="*d_e_" ][endif]

*b_c_
[if exp="f.lust<=500" ][jump target="*b_" ]
[else][jump target="*c_" ][endif]
*c_d_
[if exp="f.lust<=1000" ][jump target="*b_c_" ]
[else][jump target="*d_" ][endif]
*d_e_
[if exp="f.lust<=1500" ][jump target="*c_d_" ]
[else][jump target="*e_" ][endif]

*a_
[bg_door][f/s_nt][show_stand]
[syl][f/re]啊、你回來了、[name]。[lr_]
[f/re]東西買的怎麼樣？[p_]
[jump target="*end" ]
*b_
[bg_door][f/ss_nt][show_stand]
[syl][f/re]啊、你回來了、[name]。[lr_]
[f/s]東西買的怎麼樣？[p_]
[_]（打開門後見到希露薇一路小跑地來到門口來迎接我。[p_]
[jump target="*end" ]
*c_
[bg_door][f/sp_nt][show_stand]
[syl][f/re]你回來啦、[name]。[lr_]
[f/re]東西買的怎麼樣？[p_]
[_]（把手放在門把上之前門就打開了。[lr]
看起來希露薇一直從窗戶裏看著等我回來。[p_]
[jump target="*end" ]
*d_
[bg_doorout]
[_]（一到家門前希露薇打就開門跑到我跟前來。[p_]
[f/ssp_nt][show_stand]
[syl][f/re]你回來了、[name]。[lr_]
[f/sp]啊、那個…我有點等不及了…。[p_]
[_]（看起來她一直從窗戶裏看著等我回來。[p_]
[jump target="*end" ]
*e_
[bg_doorout]
[_]（一到家附近希露薇就打開門跑到我跟前來。[p_]
[show_stand]
[syl][f/sp]…[name]。[p_]
[_]（跑過來的希露薇沒有止步直接撲向我的懷中。[p_]
[syl][f/p]…啊。對不起。[lr_]
[f/ssp]那個、你回來啦♡[p_]
[jump target="*end" ]


*end
[if exp="f.shop_night=='bought'" ][jump target="*present" ]
[elsif exp="f.shop_night=='went' || f.shop_night=='not' || f.miyage=='non' || f.miyage=='nothing'" ]
[jump storage="act_with/go_out.ks" target="*after_town" ][endif]


[syl][f/s]…啊、[miyage][if exp="f.tea_dorayaki==0 && f.miyage=='銅鑼燒' || f.tea_youkan==0 && f.miyage=='羊羹'" ]？[endif]
買來了嗎？[p_]
[f/re]那、飯後一起吃吧。[lr_]
[f/ss]謝謝你、[name]。[p_]
[jump storage="act_with/go_out.ks" target="*after_town" ]

*present
[syl][f/]啊、你買了什麼嗎？[lr_]
[f/re]…給我的？[p_]
[f/p]這個…。[lr_]

[if exp="f.lust<=200" ][f/clp]不、[name]想要我穿的話…。[p_]
[elsif exp="f.lust<=1000" ][f/sp]…是的、那麼之後再♡[p_]
[else][f/sp]…是的、請按[name]的喜好來裝飾。[p_]
[f/re][name]因爲想一直做[name]喜歡的我呢…♡[p_]
[endif]

[black][jump storage="act_with/go_out.ks" target="*after_town" ]



