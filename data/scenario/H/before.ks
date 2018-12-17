;;初回断り後初夜
*first
[cm][button target="*first_" graphic="ch/re_first.png" x="0" y="180" ]
[button target="*remind" graphic="ch/remind.png" x="0" y="300" ][s]
*remind
[cm]（算了吧[p_][eval exp="f.system_act=1" ][return_menu]

*first_
[cm][stop_bgm][set_stand][bg_room][f/nt]…[p_][show_stand]
[syl][f/re]…[name]？[p_]
[_]（輕輕地吻希露薇…。[p_]
[syl]…嗯[p_][jump storage="intro/event.ks" target="*kiss" ]

;;ベッド前設定/衣装
*bed
[_][cm][if exp="f.sex=='yet'" ][jump target="*first" ][endif]

*sex_select_
[cm][eval exp="f.last_act='before_bed'" ][save_dress]
;[black]
[set_dress][hide_role][nolog][hide_message_w]
[bgm_MT][mod_win st="o/win/before_bed.png" ]
[chara_show name="window" time="0" wait="true" left="0.1" ][show_dress]
[eval exp="f.drug_s=0" ][eval exp="f.drug_y=0" ]
*reload_dress
[if exp="f.love<=500" ][eval exp="f.h_style='def'" ][endif]
[if exp="f.hair_style>=1" ][eval exp="f.Hx_ribbon=1" ][else][eval exp="f.Hx_ribbon=0" ][endif]
[if exp="f.dress==0" ][else][eval exp="f.Hx_dress=1" ][endif]
[if exp="f.front_hair>=1" ][eval exp="f.Hx_pin=1" ][else][eval exp="f.Hx_pin=0" ][endif]
[if exp="f.glasses>=1" ][eval exp="f.Hx_glasses=1" ][else][eval exp="f.Hx_glasses=0" ][endif]
[if exp="f.socks>=1" ][eval exp="f.Hx_socks=1" ][else][eval exp="f.Hx_socks=0" ][endif]

*sex_select
[cm][call storage="sys/dress_ex.ks" target="*menu_button" ]
[if exp="f.h_style=='def'" ][button target="*non" graphic="Hx/set_s_def.png" x="880" y="91" ][else]
[button target="*non" graphic="Hx/set_s_def-.png" x="880" y="91" exp="f.h_style='def'" ][endif]
[if exp="f.h_style=='sit'" ][button target="*non" graphic="Hx/set_s_sit.png" x="1026" y="91" ]
[elsif exp="f.love>=500" ][button target="*non" graphic="Hx/set_s_sit-.png" x="1026" y="91" exp="f.h_style='sit'" ][endif]

[if exp="f.drug_s==1" ]
[button target="*selec_drug_x" graphic="Hx/set_drug_x.png" x="880" y="187" hint="シルヴィの絶頂上限がなくなります" ]
[elsif exp="f.drugx>=1 && f.lust>=15" ]
[button target="*selec_drug_x" graphic="Hx/set_drug_x-.png" x="880" y="187" hint="シルヴィの絶頂上限がなくなります" ][endif]
[if exp="f.drug_y==1" ]
[button target="*selec_drug_z" graphic="Hx/set_drug_z.png" x="998" y="187" hint="射精上限がなくなります" ]
[elsif exp="f.drugz>=1 && f.lust>=15" ]
[button target="*selec_drug_z" graphic="Hx/set_drug_z-.png" x="998" y="187" hint="射精上限がなくなります" ][endif]

[if exp="f.Hx_dress==1" ][button target="*non" graphic="Hx/set_dress-.png" x="880" y="289" exp="f.Hx_dress=0" ]
;[elsif exp="f.dress<=4 || f.dress>=7 && f.dress<=1000 || f.dress>=1020" ]
[else][button target="*non" graphic="Hx/set_dress.png" x="880" y="289" exp="f.Hx_dress=1" ][endif]

[if exp="f.Hx_socks==1" ][button target="*non" graphic="Hx/set_socks-.png" x="955" y="289" exp="f.Hx_socks=0" ]
[elsif exp="f.socks>=1" ][button target="*non" graphic="Hx/set_socks.png" x="955" y="289" exp="f.Hx_socks=1" ][endif]
[if exp="f.Hx_glasses==1" ][button target="*non" graphic="Hx/set_glass-.png" x="1064" y="289" exp="f.Hx_glasses=0" ]
[elsif exp="f.glasses>=1" ][button target="*non" graphic="Hx/set_glass.png" x="1064" y="289" exp="f.Hx_glasses=1" ][endif]

[if exp="f.Hx_pin==1" ][button target="*non" graphic="Hx/set_front_hair-.png" x="880" y="357" exp="f.Hx_pin=0" ]
[elsif exp="f.front_hair>=1" ][button target="*non" graphic="Hx/set_front_hair.png" x="880" y="357" exp="f.Hx_pin=1" ][endif]
[if exp="f.Hx_ribbon==1" ][button target="*non" graphic="Hx/set_back_hair-.png" x="988" y="357" exp="f.Hx_ribbon=0" ]
[elsif exp="f.hair_style>=1" ][button target="*non" graphic="Hx/set_back_hair.png" x="988" y="357" exp="f.Hx_ribbon=1" ][endif]
[button target="*calc" graphic="Hx/to_bed_.png" x="643" y="502" ][s]

*calc
[cm][endnolog][hide_ask_win][show_role][show_message_w]
[chara_hide name="window" time="0" wait="true" ]
[if exp="f.drug_s==1" ][eval exp="f.drugx=f.drugx-1" ][endif]
[if exp="f.drug_y==1" ][eval exp="f.drugz=f.drugz-1" ][endif]
[if exp="f.drug_use=='non' && f.drug_s==1" ][eval exp="f.drug_use=1" ][jump target="*first_drug" ][endif]
[if exp="f.h_act=='self' || f.h_act=='mouth'" ][jump target="*text_before_bed_" ]
[else][jump target="*text_before_bed" ][endif]

*non
[jump target="*sex_select" ]
*selec_drug_x
[if exp="f.drug_s==0" ][eval exp="f.drug_s=1" ][else][eval exp="f.drug_s=0" ][endif]
[if exp="f.drug_s==1 && f.lust<=30" ][eval exp="f.drug_y=0" ][endif]
[jump target="*sex_select" ]
*selec_drug_z
[if exp="f.drug_y==0" ][eval exp="f.drug_y=1" ][else][eval exp="f.drug_y=0" ][endif]
[if exp="f.drug_y==1 && f.lust<=30" ][eval exp="f.drug_s=0" ][endif]
[jump target="*sex_select" ]



;;ベッド前セリフ
*text_before_bed
[cm][set_stand][bg_bed][f/p_nt][show_stand][syl]
[if exp="f.sex_name[0]==2 && f.lust>=1000 || f.v_name[0]==2 && f.mood=='lust' "]
[f/q][sex_name]要抱著我嗎？[p_]
[f/scq]我已經[v_name]…受不了了。[r]快…[p_]
[elsif exp="f.mood=='lust' || f.lust>=600" ]
[f/q]要抱著我嗎？[p_]
[f/scq]我已經[v_name]…受不了了。[r]快…[p_]
[elsif exp="f.lust>=100" ]
[f/p]要抱著我嗎？[p_]
[f/ssp]我、太高興了…♡[p_]
[else]
[f/p]…要做嗎。[p_]
[f/clp]好、我知道了。[p_][endif]
*text_before_bed_
[black]
[_]（[if exp="f.Hx_dress==0" ]希露薇[endif]脫下衣服
[if exp="f.h_style=='sit'" ]跨坐在膝蓋上[p_][jump storage="H/Hx2.ks" target="*H_ex" ]
[else]躺在床上…。[p_][jump storage="H/Hx.ks" target="*H_ex" ][endif]

;;薬初回
*first_drug
[cm][set_stand][bg_bed][f/nt][show_stand]
[syl][f/re]這是…什麼啊？[p_]
[f/p]…讓我舒服的藥？[p_]
[f/re]…我明白了、喝了。[p_]
[f/sp][name]為我準備的、所以不應該是不好的東西。[p_]
[black]
[_]（[if exp="f.Hx_dress==0" ]希露薇[endif]脫下衣服
[if exp="f.h_style=='sit'" ]跨坐在膝蓋上[p_][jump storage="H/Hx2.ks" target="*H_ex" ]
[else]躺在床上…。[p_][jump storage="H/Hx.ks" target="*H_ex" ][endif]

;;オーラル前セリフ
*mouth
[cm][set_stand][bg_room][bgm_MT][f/p_nt][show_stand]

[syl][eval exp="f.blow=f.blow+1" ][eval exp="f.Hx_hair='off'" ]

[if exp="f.m_mouth==0" ][eval exp="f.m_mouth=1" ]
	[f/p]用嘴…嗎？[p_]
	[f/re]…知道了。[lr_]
	[f/re]雖然不是很會、但是還是試試看吧。[p_]
	[jump storage="H/mouth.ks" target="*a" ]
	
[elsif exp="f.mood=='calm' && f.h_m>=100 && f.m_mouth>=2 && f.lust>=600" ]
	[f/sp]用嘴嗎？[p_]
	[f/re]我知道了。開始努力服務了♡[p_]
	[jump storage="H/mouth.ks" target="*b" ]
[elsif exp="f.mood=='calm'" ]
	[f/p]用嘴嗎？[lr_]
	[f/re]好…我會加油的。[p_]
	[jump storage="H/mouth.ks" target="*a" ]
	
[elsif exp="f.lust>=800 && f.h_m>=100 && f.m_mouth>=2 || f.mood=='lust' && f.h_m>=100 && f.m_mouth>=2" ]
	[f/sp]好…♡[lr_]
	[f/re][name_h]的[p_name]…嘴巴服務…♡[p_]
	[jump storage="H/mouth.ks" target="*c" ]
[elsif exp="f.lust>=600 && f.h_m>=100 && f.m_mouth>=2" ]
	[f/sp]好…♡[lr_]
	[f/re]請讓我我用嘴服務吧♡[p_]
	[jump storage="H/mouth.ks" target="*c" ]
[elsif exp="f.lust>=200 && f.h_m>=50 && f.m_mouth>=1 || f.mood=='lust' && f.h_m>=50 && f.m_mouth>=1" ]
	[f/sp]用嘴嗎？[p_]
	[f/re]我知道了。我會努力的♡[p_]
	[jump storage="H/mouth.ks" target="*b" ]
[else]
	[f/p]用嘴嗎？[lr_]
	[f/re]好…開始努力吧。[p_]
	[jump storage="H/mouth.ks" target="*a" ]
[endif]

;;オーラル後
*mouth_after
[cm][hide_role][show_role]
[if exp="f.lust<=100" ][jump target="*end" ][endif]
[button target="*conti" graphic="ch/sex.png" x="0" y="200" ]
[button target="*end" graphic="ch/rest.png" x="0" y="350" ][s]

*end
[cm][black]
[if exp="f.sexless_c>=1" ][jump target="*please" ][endif]
[_]（已經滿足了所以今天休息吧…。[p_]
[stop_bgm]…[p_]
[eval exp="f.sexless=f.sexless+2" ]
[eval exp="f.act='nonp'" ]
[day_end]

*please
[cm][set_stand][bg_bed][f/cp_nt]
[chara_part name="stand" neck="00.png" dress="00.png" sleeve="00.png" pin="00.png" hair_f="s/body/stn_fh.png" allow_storage=true ]
[if exp="f.hat==1 || f.hat==2" ][else][chara_part name="stand" hat="00.png" allow_storage=true ][endif]
[chara_part name="stand" ribbon_b="00.png" ribbon="00.png" head="s/body/stn_h1.png" hair_b="s/hair/F/nr.png" ]
[chara_part name="stand" under_b="00.png" under_p="00.png" wait="true" allow_storage=true ]


[show_stand]
[syl][f/re]…今天就這樣結束了嗎？[p_]
[if exp="f.v_name[0]==2 && f.lust>=800 || f.v_name[0]==2 && f.mood=='lust'" ]
[f/re][name_h]…我[v_name]請給我來一次…。[lr]
[f/re]我也[name_h][sex_name]我也想要…。[p_]
[elsif exp="f.lust>=800 || f.mood=='lust'" ]
[f/re][name_h]…請也給我一次…。[lr]
[f/re]我也[name_h]想[sex_name]要…。[p_]
[elsif exp="f.lust>=100" ]
[f/re][name_h]…這個…。我、我也…。[p_]
[else]
[f/re]這個…。[p_]
[endif]

[button target="*ok" graphic="ch/sex.png" x="0" y="200" ]
[button target="*endisend" graphic="ch/rest.png" x="0" y="350" ][s]

*conti
[cm][black]
[_]（１次射精把希露薇誘惑到床上來吧。[p_]
;[syl]好…♡[p_]
;[Hx_dress/all_off]
;[jump storage="H/Hx.ks" target="*H_ex" ]
[save_dress][eval exp="f.h_act='mouth'" ]
[eval exp="f.pin=0" ][eval exp="f.ribbon=0" ][eval exp="f.socks=0" ][eval exp="f.dress=0" ][eval exp="f.glasses=0" ]
[jump target="*sex_2nd" ]

*ok
[cm][black]
[_]（無法抑制希露薇淫蕩的樣子把她誘惑到床上。[p_]
;[syl]…♡[p_]
;[Hx_dress/all_off]
;[jump storage="H/Hx.ks" target="*H_ex" ]
[save_dress][eval exp="f.h_act='mouth'" ]
[eval exp="f.pin=0" ][eval exp="f.ribbon=0" ][eval exp="f.socks=0" ][eval exp="f.dress=0" ][eval exp="f.glasses=0" ]
[jump target="*sex_2nd" ]
 

*endisend
[cm][if exp="f.lust>=800 || f.mood=='lust'" ]
[f/clp]唔唔…。[lr_]
[f/re]我…知道了…。[p_]
[elsif exp="f.lust>=100" ]
[f/clp]啊、對不起…。[p_]
[else]
[f/clp_nt]…。[p_]
[endif]

[black]（…[p_][stop_bgm]
[eval exp="f.sexless=f.sexless+2" ][eval exp="f.out=0" ][eval exp="f.act='nonp'" ]
[day_end]

;;自分でさせるセリフ
*self
[cm][set_stand][bg_room][bgm_MT][f/p_nt][show_stand]
[eval exp="f.Hx_hair='off'" ]
[if exp="f.self>=30 && f.lust>=1000 || f.mood=='lust'" ]
	[f/re]自…自己做嗎？[p_]
	[f/re]是、我知道了。[p_]
	[f/sq]我的[v_name]…表演、請看吧…♡[p_]
[elsif exp="f.self>=30" ]
	[f/re]自己…做嗎？[p_]
	[f/re]好、我知道了。[p_]
	[f/q]…請慢慢、欣賞。[p_]
[elsif exp="f.self_sec==1" ]
	[f/re]自己…做嗎？[p_]
	[f/re]…是、我知道了。[lr]
	[f/re][name]、想要看的話…。[p_]
[elsif exp="f.dress==5 || f.dress==6" ]
	[f/re]哎、「自己」…做嗎？[lr]
	[f/re]像「那個時候」一…一樣？[p_]
	[f/clp_nt]…。[p_]
	[f/p][name]想看的話、我知道了…。[p_]
	[f/re]那時候的襯衫、借我。[lr_]
	[f/clcp]這沒有這、個…「最後」我…無法完成。[p_]
[else]
	[f/re]哎、「自己」…做嗎？[lr]
	[f/re]像「那個時候」一…一樣？[p_]
	[f/clp_nt]…。[p_]
	[f/p][name]想看的話、我知道了…。[p_]
	[f/re]那個…[name]的襯衫、借給我一下可以嗎？[lr_]
	[f/clcp]沒有那個、的話…「最後」的…無法完成。[p_]
[endif]
	[jump storage="H/self.ks" target="*H_self" ]

;;自分でさせる後

*self_after
[cm][button target="*conti_s" graphic="ch/sex.png" x="0" y="200" ]
[button target="*end_s" graphic="ch/rest.png" x="0" y="350" ][s]

*end_s
[cm][black]
[if exp="f.sexless_c==3" ][jump target="*please" ][endif]
[_]（已經滿足了、所以今天可以休息了…。[p_]
[stop_bgm]…[p_]
[eval exp="f.sexless=f.sexless-1" ][eval exp="f.act='nonp'" ][day_end]

*conti_s
[cm][black]
[_]（眼前希露薇的淫猥行讓我變得不能忍受[r]
把她重新誘到床上吧。[p_]
;[Hx_dress/all_off]
;[jump storage="H/Hx.ks" target="*H_ex" ]
[save_dress][eval exp="f.h_act='self'" ]
[eval exp="f.pin=0" ][eval exp="f.ribbon=0" ][eval exp="f.socks=0" ][eval exp="f.dress=5" ][eval exp="f.glasses=0" ]
[jump target="*sex_2nd" ]

;;
[eval exp="f.lust=f.lust+2" ][eval exp="f.love=f.love+3" ]
[eval exp="f.h_m=f.h_m+1" ][eval exp="f.act='sex'" ]
[stop_bgm]…[p_][day_end]


*sex_2nd
[cm][eval exp="f.last_act='before_bed'" ]
[set_dress][hide_role][nolog][hide_message_w]
[bgm_MT][mod_win st="o/win/before_bed.png" ]
[chara_show name="window" time="0" wait="true" left="0.1" ][show_dress]
[eval exp="f.drug_s=0" ][eval exp="f.drug_y=0" ]
[jump target="*reload_dress" ]
