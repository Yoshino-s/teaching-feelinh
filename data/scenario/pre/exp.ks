
*first
[chara_show name="black" layer=1 time="0" wait="true" left="-10" zindex=500 ]
;;初期変数
[eval exp="f.ver=2310" ]
;設定
[eval exp="f.win_f='a'" ][eval exp="f.fin_choice=1" ][eval exp="f.fin_in_out=0" ]
;親愛度、淫乱度、名前、関係進行
[eval exp="f.love=0" ][eval exp="f.lust=0" ]
[eval exp="f.name='主人'" ][eval exp="f.name_h=0" ]
[eval exp="f.v_name=[0,'','','']" ][eval exp="f.p_name=[0,'','','']" ][eval exp="f.sex_name=[0,'','','']" ][eval exp="f.x_speak=0" ]
[eval exp="f.step=1" ]
;初期イベント用進行管理
[eval exp="f.rape=0" ][eval exp="f.trust=0" ][eval exp="f.nade=1" ][eval exp="f.talk=1" ]
[eval exp="f.intro_flag=0" ][eval exp="f.first_wear=0" ]
[eval exp="f.shop=0" ][eval exp="f.hiroba_t=0" ][eval exp="f.cafe=0" ]
;イベント初回管理
[eval exp="f.wood=0" ][eval exp="f.book='non'" ][eval exp="f.market=0" ][eval exp="f.out=0" ]
;現在の服
[eval exp="f.dress=1" ][eval exp="f.socks=0" ][eval exp="f.neck=0" ]
[eval exp="f.pin=0" ][eval exp="f.front_hair=0" ][eval exp="f.glasses=0" ]
[eval exp="f.under_p=0" ][eval exp="f.under_b=0" ][eval exp="f.b_acc=0" ]
[eval exp="f.hair_style=0" ][eval exp="f.hair_band=0" ][eval exp="f.gloves=0" ]
;アイテム所持変数
[eval exp="f.flower=0" ][eval exp="f.flower_b=0" ]
[eval exp="f.drugx=0" ][eval exp="f.drugz=0" ]
[eval exp="f.drug_s=0" ][eval exp="f.drug_y=0" ]
[eval exp="f.drug_use='non'" ]
;着せ替えコーディネート
[eval exp="f.sav_dress=[]" ][eval exp="f.sav_neck=[]" ][eval exp="f.sav_hair_f=[]" ][eval exp="f.sav_pin=[]" ]
[eval exp="f.sav_hat=[]" ][eval exp="f.sav_hair=[]" ][eval exp="f.sav_hair_b=[]" ]
[eval exp="f.sav_glasses=[]" ][eval exp="f.sav_gloves=[]" ][eval exp="f.sav_socks=[]" ]
[eval exp="f.sav_under_b=[]" ][eval exp="f.sav_under_p=[]" ][eval exp="f.sav_acce=[]" ][eval exp="f.sav_color=[]" ]
[eval exp="f.d_save_n=['搭配0','搭配1','搭配2','搭配3','搭配4','搭配5','搭配6','搭配7','搭配8','搭配9','搭配10','搭配11','搭配12','搭配13','搭配14','搭配15','搭配16','搭配17','搭配18','搭配19','搭配20','搭配21','搭配22','搭配23','搭配24','搭配25','搭配26','搭配27','搭配28','搭配29','搭配30','搭配31','搭配32','搭配33','搭配34','搭配35','搭配36','搭配37','搭配38','搭配39','搭配40']" ]
;他
[eval exp="f.d_save=[]" ][eval exp="f.ch_win=1" ][eval exp="f.act=0" ][eval exp="f.hist_mode=0" ]

;日数、H回数記録
[eval exp="f.day=1" ]
[eval exp="f.sex=0" ][eval exp="f.heavn=0" ][eval exp="f.drink=0" ]
[eval exp="f.kake=0" ][eval exp="f.blow=0" ][eval exp="f.cum=0" ]
[eval exp="f.self=0" ]
[eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ]
;感度
[eval exp="f.h_m=0" ][eval exp="f.h_b=0" ][eval exp="f.h_c=0" ][eval exp="f.h_v=0" ]
;コマンドH用変数
[eval exp="f.h_act='non'" ][eval exp="f.h_right='non'" ][eval exp="f.h_left='non'" ]
[eval exp="f.h_sex=0" ][eval exp="f.s_ex=0" ][eval exp="f.y_ex=0" ][eval exp="f.h_cum_pos='select'" ]
[eval exp="f.wet=0" ][eval exp="f.s_feel=0" ][eval exp="f.y_feel=0" ]
;H回想
[eval exp="f.m_first=0" ][eval exp="f.m_x=0" ][eval exp="f.m_xx=0" ]
[eval exp="f.m_xxx=0" ][eval exp="f.m_morning=0" ][eval exp="f.m_wood=0" ]
[eval exp="f.m_mouth=0" ][eval exp="f.m_nurse=0" ]

;服/Dc
[eval exp="f.Dc_b=[]"][eval exp="f.Dc_c=[]"][eval exp="f.Dc_d=[]"][eval exp="f.Dc_e=[]"]
[eval exp="f.Dc_f=[]"][eval exp="f.Dc_g=[]"][eval exp="f.Dc_h=[]"][eval exp="f.Dc_i=[]"]
[eval exp="f.Dc_j=[]"][eval exp="f.Dc_k=[]"][eval exp="f.Dc_l=[]"][eval exp="f.Dc_m=[]"]
[eval exp="f.Dc_n=[]"][eval exp="f.Dc_o=[]"][eval exp="f.Dc_p=[]"][eval exp="f.Dc_q=[]"]
[eval exp="f.Dc_xa=[]"][eval exp="f.Dc_xb=[]"][eval exp="f.Dc_xc=[]"][eval exp="f.Dc_xd=[]"]
;リボン/Dr
[eval exp="f.Dr_a=[]"][eval exp="f.Dr_b=[]"][eval exp="f.Dr_c=[]"][eval exp="f.Dr_d=[]"][eval exp="f.Dr_e=[]"]
;ヘアピン/Dp
[eval exp="f.Dp_a=[]"][eval exp="f.Dp_b=[]"][eval exp="f.Dp_c=[]"][eval exp="f.Dp_d=[]"]
;メガネ/Dg
[eval exp="f.Dg_a=[]"][eval exp="f.Dg_b=[]"][eval exp="f.Dg_c=[]"]
;ヘッドアクセ/Dh
[eval exp="f.Dh_a=[]"][eval exp="f.Dh_b=[]"][eval exp="f.Dh_d=[]"][eval exp="f.Dh_e=[]"]
[eval exp="f.Dh_f=[]"]
;靴下/Ds
[eval exp="f.Ds_a=[]"][eval exp="f.Ds_b=[]"][eval exp="f.Ds_c=[]"][eval exp="f.Ds_d=[]"][eval exp="f.Ds_e=[]"][eval exp="f.Ds_f=[]"]

;ボディアクセ/Dac
[eval exp="f.Dac_a=[]"][eval exp="f.Dac_b=[]"][eval exp="f.Dac_c=[]"][eval exp="f.Dac_d=[]"]
;首元/Dne
[eval exp="f.Dne_a=[]"][eval exp="f.Dne_b=[]"][eval exp="f.Dne_c=[]"]
;下着/Du
[eval exp="f.Du_a=[]"][eval exp="f.Du_b=[]"][eval exp="f.Du_c=[]"]
[eval exp="f.Du_xa=[]"][eval exp="f.Du_xb=[]"][eval exp="f.Du_xc=[]"]
[return]

;;ver-up追加
*update
;ver2.0β-cからver2.0.0へ
[if exp="f.ver=='2.0β-a' || f.ver=='2.0β-b' || f.ver=='2.0β-c'" ][eval exp="f.ver=2000" ][endif]
;ver2.0β-c以前からver2.0.0へ
[if exp="f.ver>=2001" ][else][eval exp="f.ver=2000" ]
[eval exp="f.Ds_c=[]"][eval exp="f.Ds_d=[]"][eval exp="f.Ds_e=[]"][eval exp="f.Ds_f=[]"]
[eval exp="f.v_name=[0,'','','']" ][eval exp="f.p_name=[0,'','','']" ][eval exp="f.sex_name=[0,'','','']" ][eval exp="f.x_speak=0" ]
[eval exp="f.gloves=0" ]
[eval exp="f.Du_xc=[]"][eval exp="f.Du_c=[]"]
[eval exp="f.Dac_a=[]"][eval exp="f.Dac_b=[]"][eval exp="f.Dac_c=[]"]
[eval exp="f.Dac_d=[]"][eval exp="f.Dne_c=[]"][endif]
;ver2.2.2以前からver2.3.β-aへ
[if exp="f.ver<=2220" ][eval exp="f.ver=2221" ][eval exp="f.Dc_xd=[]"][endif]
;ver2.3.β-a以前からver2.3.0へ
[if exp="f.ver<=2221" ][eval exp="f.ver=2300" ][endif]
;ver2.3.0以前からver2.3.1へ
[if exp="f.ver<=2300" ][eval exp="f.ver=2310" ]
Reloading for update...
[jump storage="sys/system.ks" target="*reload" ][endif]
;ver2.3.0以前からver2.4.βへ
;[if exp="f.ver<=2300" ][eval exp="f.ver=2301" ]
;[jump storage="sys/system.ks" target="*reload" ][endif]


[return]

