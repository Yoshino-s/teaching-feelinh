;;キス形容テキスト
*tx_m
[H_text_non_repeat_m]（和希露薇的嘴唇重疊在了一起。[p][jump target="*m_calc" ]
*tx_m_
[H_text_non_repeat_m]（舌頭纏繞了起來。[p][jump target="*m_calc" ]
*tx_bbm
[H_text_non_repeat_m]（親吻的同時給予著胸部刺激。[p][jump target="*m_calc" ]
*tx_bbm_
[H_text_non_repeat_m]（刺激胸部的同時舌頭還在糾纏著。[p][jump target="*m_calc" ]
*tx_bcm
[H_text_non_repeat_m]（在刺激胸部和陰蒂的同時我輕吻了上去。[p][jump target="*m_calc" ]
*tx_bcm_
[H_text_non_repeat_m]（我用手指撫弄著乳頭和陰蒂、品嘗著她舌頭的味道。[p][jump target="*m_calc" ]
*tx_cm
[H_text_non_repeat_m]（我沒有放在在陰蒂上的手、同時親吻著她的嘴唇。[p][jump target="*m_calc" ]
*tx_cm_
[H_text_non_repeat_m]（一般愛撫著陰蒂一邊給予著她激烈的舌吻。[p][jump target="*m_calc" ]
*tx_bfm
[H_text_non_repeat_m]（希露薇我沒有停止刺激她的性感帶同時親吻了上去。[p][jump target="*m_calc" ]
*tx_bfm_
[H_text_non_repeat_m]（不停刺激胸部的陰道的同時舌頭也糾纏了上去。[p][jump target="*m_calc" ]
*tx_fm
[H_text_non_repeat_m]（手指在陰道裏遊動的同時我的嘴唇與她重疊。[p][jump target="*m_calc" ]
*tx_fm_
[H_text_non_repeat_m]（手指在秘部動著的同時親吻也在繼續著。[p][jump target="*m_calc" ]
*tx_vm
[H_text_non_repeat_m]（我和希露薇連在了一起同時親吻住了她的嘴唇。[p][jump target="*m_calc" ]
*tx_vm_
[H_text_non_repeat_m]（用腰部拍打希露薇的同時舌頭也纏住了她。[p][jump target="*m_calc" ]
*tx_vcm
[H_text_non_repeat_m]（不斷用陰莖和手指侵犯著她的私處的同時用吻堵住了她的嘴唇。[p][jump target="*m_calc" ]
*tx_vcm_
[H_text_non_repeat_m]（攻擊秘部的同時希露薇的舌頭也變得興奮起來。[p][jump target="*m_calc" ]
*tx_vbbm
[H_text_non_repeat_m]（手上和腰部動作沒有停下來的情況下我奪取了希露薇的嘴唇。[p][jump target="*m_calc" ]
*tx_vbbm_
[H_text_non_repeat_m]（我繼續著手上和腰部動作的同時仔細品嘗著她的舌頭。[p][jump target="*m_calc" ]

;;キスセリフ
*m_calc
[hx/shake][syl]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==6 || f.lust<=1999 && f.lust>=1000 && f.h_count==9 || f.lust<=999 && f.lust>=500 && f.h_count==12 || f.lust<=499 && f.lust>=250 && f.h_count==15) " ]
[jump target="*nedari_1" ][endif]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==11 || f.lust<=1999 && f.lust>=1000 && f.h_count==16 || f.lust<=999 && f.lust>=500 && f.h_count==21 || f.lust<=499 && f.lust>=250 && f.h_count==26) " ]
[jump target="*nedari_2" ][endif]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==16 || f.lust<=1999 && f.lust>=1000 && f.h_count==24 || f.lust<=999 && f.lust>=500 && f.h_count==30 || f.lust<=499 && f.lust>=250 && f.h_count==40) " ]
[jump target="*nedari_3" ][endif]

[xf/kiss][random_5]
[if exp="f.wet<=150" ][jump target="*tx_m1" ]
[elsif exp="f.wet<=250" ][jump target="*tx_m2" ]
[elsif exp="f.wet<=600" ][jump target="*tx_m3" ]
[elsif exp="f.wet<=1000" ][jump target="*tx_m4" ]
[else][jump target="*tx_m5" ][endif]

*tx_m1
[syl][if exp="f.r==1" ]姆…。[p]
[elsif exp="f.r==2" ]嗯啊。[p]
[elsif exp="f.r==3" ]嗯…。[p]
[elsif exp="f.r==4" ]秋…。[p]
[elsif exp="f.r==5" ]嗚嗯…。[p][endif]

[random_4]
[_][if exp="f.r==1" ]（溫柔的親吻下希露薇緊張的身體逐漸放松。[p]
[elsif exp="f.r==2" ]（希露薇的舌頭也緊緊纏住了我。[p][endif]
[jump target="*desc_calc" ]

*tx_m2
[syl][if exp="f.r==1" ]嗯…♡[p]
[elsif exp="f.r==2" ]呼啊…。[p]
[elsif exp="f.r==3" ]嗯、沏…。[p]
[elsif exp="f.r==4" ]啊姆…。哈啊…。[p]
[elsif exp="f.r==5" ]呼嗚…、啊…。[p][endif]

[random_4]
[_][if exp="f.r==1" ]（舌頭進去了之後希露薇也用她的舌頭回應著我。[p]
[elsif exp="f.r==2" ]（連起來的嘴唇互相交換著對方的唾液。[p][endif]
[jump target="*desc_calc" ]

*tx_m3
[syl][if exp="f.r==1" ]嗯…♡[p]
[elsif exp="f.r==2" ]呼啊…♡[p]
[elsif exp="f.r==3" ]嗯、沏…♡[p]
[elsif exp="f.r==4" ]啊姆…。哈啊…♡[p]
[elsif exp="f.r==5" ]呼嗚…、啊…♡[p][endif]

[random_4]
[_][if exp="f.r==1" ]（舌頭進去了之後希露薇也用她的舌頭回應著我。[p]
[elsif exp="f.r==2" ]（連起來的嘴唇互相交換著對方的唾液。[p][endif]
[jump target="*desc_calc" ]

*tx_m4
[syl][if exp="f.r==1" ]嗯唔！♡[p]
[elsif exp="f.r==2" ]休…揪嚕る♡[p]
[elsif exp="f.r==3" ]啊姆…♡嗯…♡[p]
[elsif exp="f.r==4" ]揪…唔…♡[p]
[elsif exp="f.r==5" ]呼唔…♡嗯…♡[p][endif]

[random_4]
[_][if exp="f.r==1" ]（我把舌頭伸到希露薇口中、貪婪地舔舐起來。[p]
[elsif exp="f.r==2" ]（我們貪求著對方的嘴唇、不停地交換唾液。[p][endif]
[jump target="*desc_calc" ]

*tx_m5
[syl][if exp="f.r==1" ]嗯゛〜！！♡♡[p]
[elsif exp="f.r==2" ]呼〜…！♡♡[p]
[elsif exp="f.r==3" ]嗯゛呼！♡[p]
[elsif exp="f.r==4" ]哈啊…♡嗯…♡♡[p]
[elsif exp="f.r==5" ]哈啊〜♡♡休…♡[p]
[endif]
[random_4]
[_][if exp="f.r==1" ]（身體震動的同時希露薇把舌頭吸了進來。[p]
[elsif exp="f.r==2" ]（希露薇的舌頭急不可耐地把舌頭進到我的口中。[p][endif]
[jump target="*desc_calc" ]

;;行動テキスト
*tx_b_b
[H_text_non_repeat]（我用手撫摸著希露薇突起的胸部。[p][jump target="*tx_calc" ]
*tx_b_b_
[H_text_non_repeat]（繼續揉著希露薇小小的胸部。[p][jump target="*tx_calc" ]
*tx_b_bb
[H_text_non_repeat]（我用空閑的手撫摸胸部給予著進一步的刺激感。[p][jump target="*tx_calc" ]
*tx_b_bb_
[H_text_non_repeat]（我用兩手撫摸著希露薇未熟的胸部。[p][jump target="*tx_calc" ]
*tx_b_bc
[H_text_non_repeat]（我用空閑的手撫摸胸部給予著進一步的刺激感。[p][jump target="*tx_calc" ]
*tx_b_bc_
[H_text_non_repeat]（同時愛撫著胸部和陰蒂。[p][jump target="*tx_calc" ]
*tx_b_bf
[H_text_non_repeat]（我用空閑的手撫摸胸部給予著進一步的刺激感。[p][jump target="*tx_calc" ]
*tx_b_bf_
[H_text_non_repeat]（一邊來回在陰道裏摩擦一邊用手揉弄胸部。[p][jump target="*tx_calc" ]
*tx_b_vb
[H_text_non_repeat]（和希露薇連在一起的情況下用手撫弄起胸部。[p][jump target="*tx_calc" ]
*tx_b_vbb
[H_text_non_repeat]（我用空閑的手撫摸胸部給予著進一步的刺激感。[p][jump target="*tx_calc" ]
*tx_b_vbb_
[H_text_non_repeat]（我用兩手撫摸著希露薇未熟的胸部。[p][jump target="*tx_calc" ]
*tx_b_vbc
[H_text_non_repeat]（陰道和陰蒂同時責備的同時用空閑的手撫摸起胸部。[p][jump target="*tx_calc" ]
*tx_b_vbc_
[H_text_non_repeat]（慢慢突進陰道裏突起的同時用手愛撫著胸部。[p][jump target="*tx_calc" ]

*tx_c_c
[H_text_non_repeat]（我開始同時愛撫著胸部和陰蒂。[p][jump target="*tx_calc" ]
*tx_c_c_
[H_text_non_repeat]（指尖擺弄著敏感的突起。[p][jump target="*tx_calc" ]
*tx_c_bc
[H_text_non_repeat]（愛撫著胸部的同時在陰蒂上也施加了愛撫。[p][jump target="*tx_calc" ]
*tx_c_bc_
[H_text_non_repeat]（上半身與下半身的敏感突起同時被我愛撫著。[p][jump target="*tx_calc" ]
*tx_c_cf
[H_text_non_repeat]（手指在陰道裏來回的同時也愛撫起陰蒂。[p][jump target="*tx_calc" ]
*tx_c_cf_
[H_text_non_repeat]（私處的性感帶被我兩手進攻著。[p][jump target="*tx_calc" ]
*tx_c_vc
[H_text_non_repeat]（陰莖被陰道刺激的同時、我用手揉搓起了陰蒂。[p][jump target="*tx_calc" ]
*tx_c_vc_
[H_text_non_repeat]（希露薇的私處被我用手指和陰莖持續進攻著。[p][jump target="*tx_calc" ]
*tx_c_vbc
[H_text_non_repeat]（在給予希露薇快感的同時我把手放到了陰蒂上。[p][jump target="*tx_calc" ]
*tx_c_vbc_
[H_text_non_repeat]（希露薇的性感帶被我持續進攻著。[p][jump target="*tx_calc" ]

*tx_fi_a
（還沒完全濕透的希露薇的私處被我伸入了進去。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_fi_b
（手指在裏面的攪動讓希露薇開始流出愛汁。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_fi_c
（我把手指伸入希露薇早已準備好的秘部內。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_fi_d
（被愛液儒濕的希露薇的陰道纏著手指。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_fi_e
（我把手指伸入已經變得急不可耐的陰道中。[p][jump storage="H/Hx.ks" target="*h_def" ]

*tx_f_bf
[H_text_non_repeat]（小小的胸部和陰道內都被輕柔愛撫著。[p][jump target="*tx_calc" ]
*tx_f_cf
[H_text_non_repeat]（我溫柔地愛撫著秘部的內外。[p][jump target="*tx_calc" ]
*tx_f_f
[H_text_non_repeat]（我因探尋著希露薇的敏感點而興奮。[p][jump target="*tx_calc" ]

*tx_ff_bf
[H_text_non_repeat]（小小的胸部和陰道內都被輕柔愛撫著。[p][jump target="*tx_calc" ]
*tx_ff_cf
[H_text_non_repeat]（我給予著秘部內外激烈摩擦。[p][jump target="*tx_calc" ]
*tx_ff_f
[H_text_non_repeat]（我給予著因快感而蠕動的陰道咕吱咕吱的刺激。[p][jump target="*tx_calc" ]

*tx_fo_a
*tx_fo_b
*tx_fo_c
*tx_fo_d
[jump target="*desc_calc" ]

;;挿入テキスト
*tx_vi_a
（我把陰莖插進了希露薇早已濕潤的陰道中。[p]
[syl][xf/reset]咕唔…[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_vi_b
（希露薇充滿蜜液的陰道緊緊纏繞住了陰莖。[p]
[syl][xf/reset]嗯…[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_vi_c
（我把陰莖插進了希露薇早已準備好的陰道中。[p]
[syl][xf/reset]呼嗚…♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_vi_d
（還沒完全濕透的希露薇的私處被我伸入了手指。[p]
[syl][xf/reset]啊啊〜呼唔〜♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_vi_e
（我的陰莖在希露薇的陰道裏咕揪咕揪地突進。[p]
[syl][xf/reset]啊゛♡啊゛啊〜♡♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]

;;ピストンテキスト
*tx_v_vbb
[H_text_non_repeat_v]（慢慢揉著希露薇小小胸部的同時陰莖在她的體內慢慢出入著。[p]
[jump target="*v_calc" ]
*tx_v_vbc
[H_text_non_repeat_v]（希露薇敏感的地方被我慢慢愛撫著同時緩慢地扭動著腰。[p]
[jump target="*v_calc" ]
*tx_v_vc
[H_text_non_repeat_v]（手指在小豆上撫摸的同時陰莖緩慢移動、快感全部在希露薇的陰道上集中。[p]
[jump target="*v_calc" ]
*tx_v_v
[H_text_non_repeat_v]（希露薇仔細地品嘗著陰莖在陰道裏的味道。[p]
[jump target="*v_calc" ]
*tx_vv_vbb
[H_text_non_repeat_v]（撫摸著希露薇小小胸部的同時陰莖激烈地突進著。[p]
[jump target="*v_calc" ]
*tx_vv_vbc
[H_text_non_repeat_v]（就像責備希露薇敏感的部分一樣我的腰大幅度地動著。[p]
[jump target="*v_calc" ]
*tx_vv_vc
[H_text_non_repeat_v]（大幅度動腰的同時我把手按在了小豆上。[p]
[jump target="*v_calc" ]
*tx_vv_v
[H_text_non_repeat_v]（激烈的腰振讓陰莖在小小的陰道中來回著。[p]
[jump target="*v_calc" ]

*tx_vo_a
*tx_vo_b
*tx_vo_c
*tx_vo_d

;;抜きテキスト
[_]（我把陰莖從希露薇體內抽了出來。[p]
[if exp="f.h_in>=6 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z5.png" ]
[elsif exp="f.h_in>=6" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z5.png" ]
[elsif exp="f.h_in>=5 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z4.png" ]
[elsif exp="f.h_in>=5" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z4.png" ]
[elsif exp="f.h_in>=3 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z3.png" ]
[elsif exp="f.h_in>=3" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z3.png" ]
[elsif exp="f.h_in==2 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z2.png" ]
[elsif exp="f.h_in==2" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z2.png" ]
[elsif exp="f.h_in==1 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z1.png" ]
[elsif exp="f.h_in==1" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z1.png" ][endif]

[if exp="f.h_in>=6" ]
（秘部的痙攣讓子宮中的精液一波一波地溢出。[lr]
（希露薇膨脹的腹部又再次平了下來。[p]
[elsif exp="f.h_in>=5" ]
（拔出來的瞬間、子宮持續的抽搐從私處吐出精液。[p]
[elsif exp="f.h_in>=3" ]
（小小的身體無法存儲如此大量的精液從希露薇的私處流了出來。[p]
[elsif exp="f.h_in==2" ]
（小小的身體無法存儲如此大量的精液從希露薇的私處流了出來。[p]
[elsif exp="f.h_in==1" ]
（在裏面射出的精液慢慢地流了出來。[p][endif]
[jump target="*desc_calc" ]

;;ピストンセリフ
*v_calc
[random_3][if exp="f.r>=2" ][jump target="*tx_calc_" ][endif]
[hx/shake][syl]
[if exp="f.wet<=150" ][jump target="*tx_v1" ][elsif exp="f.wet<=250" ][jump target="*tx_v2" ]
[elsif exp="f.wet<=600" ][jump target="*tx_v3" ][elsif exp="f.wet<=1000" ][jump target="*tx_v4" ]
[else][jump target="*tx_v5" ][endif]

*tx_v1
[random_2]
[if exp="f.r==1" ][xf/ao][name_h]…舒服…了嗎？[p]
[else][xf/eun][name_h]的[p_name_ex]…好大啊…[p]
[endif][jump target="*desc_calc" ]

*tx_v2
[random_4]
[if exp="f.r==1" ][xf/ao]我…和[name_h]做[sex_name]了…♡[r]結合在一起了♡♡[p]
[elsif exp="f.r==2" ][xf/eun][name_h]也…很舒服吧？[p]
[elsif exp="f.r==3" ][xf/ao][name_h]的[p_name_ex]很…啊…♡[p]
[else][xf/ao]啊啊…[v_name_ex]的啊…啊♡[p]
[endif][jump target="*desc_calc" ]

*tx_v3
[random_4]
[if exp="f.r==1" ][xf/ao]和[name_h][sex_name]…♡[r]好舒服…啊♡♡[p]
[elsif exp="f.r==2" ][xf/eun][name_h]你、我的…[v_name_ex_]好舒服的…是嗎？♡♡[p]
[elsif exp="f.r==3" ][xf/ao][name_h]的[p_name_ex]啊…啊啊…♡♡[p]
[else][xf/ao]啊…♡[v_name_ex]♡很…很舒服呢…♡♡[p]
[endif][jump target="*desc_calc" ]

*tx_v4
[random_4]
[if exp="f.r==1" ][xf/ao]啊〜♡♡[sex_name_ex]想要…想要…！♡♡[p]
[elsif exp="f.r==2" ][xf/ao]啊゛啊♡[v_name]好棒…♡♡[r]我已經淩亂了…啊♡！♡♡[p]
[elsif exp="f.r==3" ][xf/ao][name_h]的[p_name_ex]好…啊啊！♡♡[p]
[else][xf/ao]啊♡啊…！♡[v_name_ex]♡♡非常…非常舒服…啊♡♡[p]
[endif][jump target="*desc_calc" ]

*tx_v5
[random_5]
[if exp="f.r==1" ][xf/ao]啊゛〜♡♡喜歡…[sex_name]喜歡…！♡♡[p]
[elsif exp="f.r==2" ][xf/ao]想要…♡♡[sex_name_ex]更多！♡♡♡[p]
[elsif exp="f.r==3" ][xf/ao]啊゛〜啊！♡♡[v_name_ex]的…狼藉♡♡…♡[r]已經不行了…啊♡！♡♡[p]
[elsif exp="f.r==4" ][xf/ao][name_h]的[p_name_ex]很♡♡…♡啊啊！♡♡[p]
[else][xf/ao]啊゛〜啊！♡♡…[v_name]好啊啊♡…♡♡[r]啊゛〜〜啊！♡！♡♡♡[p]
[endif][jump target="*desc_calc" ]



;;共通セリフ
*tx_calc
[if exp="f.h_act=='off'" ][jump target="*desc_calc" ][endif]
[random_3][if exp="f.h_sex==1 && f.r==3" ][jump target="*v_calc" ][endif]
*tx_calc_
[hx/shake][syl]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==6 || f.lust<=1999 && f.lust>=1000 && f.h_count==9 || f.lust<=999 && f.lust>=500 && f.h_count==12 || f.lust<=499 && f.lust>=250 && f.h_count==15) " ]
[jump target="*nedari_1" ][endif]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==11 || f.lust<=1999 && f.lust>=1000 && f.h_count==16 || f.lust<=999 && f.lust>=500 && f.h_count==21 || f.lust<=499 && f.lust>=250 && f.h_count==26) " ]
[jump target="*nedari_2" ][endif]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==16 || f.lust<=1999 && f.lust>=1000 && f.h_count==24 || f.lust<=999 && f.lust>=500 && f.h_count==30 || f.lust<=499 && f.lust>=250 && f.h_count==40) " ]
[jump target="*nedari_3" ][endif]

[if exp="f.wet<=150" ][jump target="*tx_1" ][elsif exp="f.wet<=250" ][jump target="*tx_2" ]
[elsif exp="f.wet<=600" ][jump target="*tx_3" ][elsif exp="f.wet<=1000" ][jump target="*tx_4" ]
[else][jump target="*tx_5" ][endif]

*tx_1
[random_11]
[if exp="f.r==1" ][xf/iu]嗯…！ [lr][xf/ao]啊…沒、沒關係。[p]
[elsif exp="f.r==2" ][xf/eun]呼…[lr][xf/ao]請你慢一點來。[p]
[elsif exp="f.r==3" ][xf/eun]呼…呼…。[p]
[elsif exp="f.r==4" ][xf/ao]嗯…溫柔的、拜託了。[p]
[elsif exp="f.r==5" ][xf/eun]呼呼…。[name_h]…[p]
[elsif exp="f.r>=10" ][xf/eun]嗯…。[p]
[elsif exp="f.r>=8" ][xf/iu][name_h]…嗯…。[p]
[elsif exp="f.r>=6" ][xf/ao]啊…唔。[p]
[endif][jump target="*desc_calc" ]

*tx_2
[random_10]
[if exp="f.r==1" ][xf/ao]好溫柔啊…♡[p]
[elsif exp="f.r==2" ][xf/ao][name_h]♡更多的、撫摸我…♡[p]
[elsif exp="f.r==3" ][xf/ao]慢慢地、[v_name_h]變得舒服起來了…。[p]
[elsif exp="f.r==4" ][xf/iu]嗯…[name_h]…♡[p]
[elsif exp="f.r==5" ][xf/eun]啊…呼…。[name_h]…♡[p]
[elsif exp="f.r==6" ][xf/ao][name_h]…。[p]
[elsif exp="f.r==7" ][xf/ao]啊…♡[p]
[elsif exp="f.r==8" ][xf/iu]嗯…♡[p]
[elsif exp="f.r==9" ][xf/eun]唔…♡[p]
[elsif exp="f.r==10" ][xf/ao]啊…唔♡[p]
[endif][jump target="*desc_calc" ]

*tx_3
[random_10]
[if exp="f.r==1" ][xf/ao]啊♡啊…啊♡[p]
[elsif exp="f.r==2" ][xf/iu]啊嗯♡呼♡[p]
[elsif exp="f.r==3" ][xf/eun]啊啊啊！♡[name_h]♡[p]
[elsif exp="f.r==4" ][xf/ao][name_h]的♡[r]這樣[v_name_h]很…舒服♡[p]
[elsif exp="f.r==5" ][xf/ao]我、和[name_h]…♡[p]
[elsif exp="f.r==6" ][xf/ao]一直、和[name_h]一直做這樣的事…♡[p]
[elsif exp="f.r==7" ][xf/eun]嗯嗯…♡[p]
[elsif exp="f.r==8" ][xf/iu]唔唔…♡[p]
[elsif exp="f.r==9" ][xf/ao]啊…唔♡[p]
[elsif exp="f.r==10" ][xf/ao]啊♡嗯♡♡[p]
[endif][jump target="*desc_calc" ]

*tx_4
[random_11]
[if exp="f.r==1" ][xf/ao]啊゛〜♡♡♡[p]
[elsif exp="f.r==2" ][xf/ao]唔〜〜♡…啊啊〜〜♡♡♡[p]
[elsif exp="f.r==3" ][xf/ao][name_h]♡[name_h]♡♡[p]
[elsif exp="f.r==4" ][xf/ao]啊〜♡♡好舒服♡[r][v_name_h]很舒服゛啊゛啊♡♡[p]
[elsif exp="f.r==5" ][xf/ao][name_h]♡♡[v_name_h]好舒服♡我快要♡♡[p]
[elsif exp="f.r==6" ][xf/ao]啊啊啊♡♡[p]
[elsif exp="f.r==7" ][xf/eun]嗯〜♡♡[p]
[elsif exp="f.r==8" ][xf/ao]啊゛啊♡[name_h]♡那裡♡被♡♡[p]
[elsif exp="f.r==9" ][xf/ao]啊啊嗯♡唔♡[p]
[elsif exp="f.r==10" ][xf/eun]啊唔唔！[lr][xf/ao啊゛啊♡啊啊♡♡[p]
[elsif exp="f.r==11" ][xf/ao]哈〜♡呼〜♡♡[p]
[endif][jump target="*desc_calc" ]

*tx_5
[random_15]
[if exp="f.r==1" ][xf/ao]唔♡啊゛啊♡呼吸♡[p]
[elsif exp="f.r==2" ][xf/ao][name_h]額！！♡[name_h]額額！！！♡♡[p]
[elsif exp="f.r==3" ][xf/ao]啊゛〜♡♡好舒服゛啊゛啊♡[r]好舒服゛啊゛啊啊♡♡[p]
[elsif exp="f.r==4" ][xf/ao]好舒服♡變得好奇怪啊♡♡[p]
[elsif exp="f.r==5" ][xf/ao]啊゛♡[name_h]額♡那裡♡被♡♡[p]
[elsif exp="f.r>=14" ][xf/ao]啊゛啊゛啊゛〜啊♡♡[p]
[elsif exp="f.r>=12" ][xf/iu]啊゛嗚〜嗚！！♡[lr]呼゛〜！！！♡♡[p]
[elsif exp="f.r>=10" ][xf/ao]啊〜♡呼゛〜♡♡[p]
[elsif exp="f.r>=8" ][xf/iu]啊゛〜額！！♡♡嗚嗚〜啊！！！♡♡♡[p]
[elsif exp="f.r>=6" ][xf/ao]啊゛〜♡♡啊゛〜額♡♡♡[p]
[endif][jump target="*desc_calc" ]

;;寢語
*nedari_1
[eh/def][mh/e][yh/conf]
[name_h]…？[lr]
那個…我的那個還沒…[v_name]用[sex_name_ex]不用…可以嗎？♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*nedari_2
[eh/half][mh/e][yh/conf]
[name_h]…、已經差不多[name_h]的…[p_name_ex]可以放進去嗎？…♡♡[lr]
那個…[sex_name_ex]想要做…。[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*nedari_3
[eh/def][mh/e][yh/conf_h]
唔…不要頑皮[name_h]因為[sex_name]用那個…♡[lr]
[name_h]的[p_name]用…[v_name_ex][sex_name_ex]想要你用那個做♡♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]

;;形容文本
*desc_calc
[if exp="f.wet<=150" ][jump target="*tx_d1" ]
[elsif exp="f.wet<=250" ][jump target="*tx_d2" ]
[elsif exp="f.wet<=600" ][jump target="*tx_d3" ]
[elsif exp="f.wet<=1000" ][jump target="*tx_d4" ]
[else][jump target="*tx_d5" ][endif]

*tx_d1
[random_10]
[if exp="f.h_left=='hands' || f.h_right=='hands'" ][else][eval exp="f.r=f.r+1" ][endif]
[H_text_non_repeat_adj]
[_][if exp="f.r==1" ]（握著希露薇的手從連接處從來微微的緊張感。[state_p]
[elsif exp="f.r==2" ]（即使我笨手笨腳希露薇也接受了這樣的我了。[state_p]
[elsif exp="f.r==3" ]（希露薇的反應結結巴巴的。[state_p]
[elsif exp="f.r==4" ]（希露薇還很緊張吧、身體稍微有點僵硬。[state_p]
[elsif exp="f.r==5" ]（希露薇還是很緊張吧、好像比較安靜下來了。[state_p]
[elsif exp="f.r==6" ]（比起興奮更是緊張吧、私處有一點點濕但是沒有很濕。[state_p]
[elsif exp="f.r==7" ]（緊握的手掌中傳來希露薇微微的恐懼。[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]


*tx_d2
[if exp="f.h_act=='off' || f.h_act=='hands' || f.h_act=='legs' || f.h_act=='open' || f.h_act=='non'" ][random_6]
[elsif exp="f.h_left=='hands' && f.h_right=='hands'" ][random_15]
[elsif exp="f.h_left=='hands' || f.h_right=='hands'" ][random_14]
[else][random_11][endif]
[H_text_non_repeat_adj]
[_][if exp="f.r==1" ]（能感到希露薇投來的信任的眼神。[state_p]
[elsif exp="f.r==2" ]（平靜下來了吧呼吸平穩了點。[state_p]
[elsif exp="f.r==3" ]（希露薇的私處漸漸濕潤起來了。[state_p]
[elsif exp="f.r==4" ]（希露薇好像放鬆了渾身沒什麼力氣的樣子。[state_p]
[elsif exp="f.r==5" ]（希露薇注意力似乎都集中在被愛撫上。[state_p]
;6,7,8
[elsif exp="f.r==9" ]（對我的愛撫偶爾有痙攣的反應。[state_p]
[elsif exp="f.r==10" ]（能夠聽到希露薇微微的呻吟。[state_p]
[elsif exp="f.r==11" ]（希露薇就這樣接受著我的愛撫。[state_p]
[elsif exp="f.r==12" ]（希露薇好像開始有快感了、身體微微出汗了。[state_p]
[elsif exp="f.r==13" ]（緊握著希露薇的手也開始輕微出汗[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]


*tx_d3
[if exp="f.h_act=='off' || f.h_act=='hands' || f.h_act=='legs' || f.h_act=='open' || f.h_act=='non'" ][random_14]
[elsif exp="f.h_left=='hands' && f.h_right=='hands'" ][random_24]
[elsif exp="f.h_left=='hands' || f.h_right=='hands'" ][random_22]
[else][random_20][endif]
[H_text_non_repeat_adj]
[_][if exp="f.r==1" ]（希露薇開始深呼吸、好像在享受每次碰撞的快感。[state_p]
[elsif exp="f.r==2" ]（希露薇的呼吸開始變得沉重了。[state_p]
[elsif exp="f.r==3" ]（不久就感受到了希露薇吐出的熱氣。[state_p]
[elsif exp="f.r==4" ]（能夠清楚的看到從希露薇私密處溢出來的愛液。[state_p]
[elsif exp="f.r==5" ]（從希露薇的花蕾中溢出來的蜜汁沿著腳浸濕了床單。[state_p]
[elsif exp="f.r==6" ]（深呼吸著希露薇快融化了的神情。[state_p]
[elsif exp="f.r==7" ]（希露薇用朦朧的眼睛看向了我。[state_p]
[elsif exp="f.r==8" ]（希露薇偶爾諂媚般扭動著身體。[state_p]
[elsif exp="f.r==9" ]（發出了急促的呻吟。[state_p]
[elsif exp="f.r==10" ]（希露薇發出了誘惑的喘息聲。[state_p]
[elsif exp="f.r==11" ]（希露薇弓起了身子。[state_p]
[elsif exp="f.r==12" ]（房間充滿了誘惑情慾的荷爾蒙。[state_p]
[elsif exp="f.r==13" ]（缺氧的希露薇小小的胸部上下起伏。[state_p]
;14,15,16
[elsif exp="f.r==17" ]（希露薇的身體時不時的顫動著。[state_p]
[elsif exp="f.r==18" ]（希露薇開始發出妖艷嫵媚的喘息聲。[state_p]
[elsif exp="f.r==19" ]（希露薇的身體好像感受到切實的快感。[state_p]
[elsif exp="f.r==20" ]（希露薇完全沈浸在快樂中的樣子。[state_p]
[elsif exp="f.r>=21" ]（與希露薇相扣的手指傳來了確切的信任。[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]


*tx_d4
[if exp="f.h_act=='off' || f.h_act=='hands' || f.h_act=='legs' || f.h_act=='open' || f.h_act=='non'" ][random_10]
[elsif exp="f.h_left=='hands' && f.h_right=='hands'" ][random_27]
[elsif exp="f.h_left=='hands' || f.h_right=='hands'" ][random_25]
[else][random_21][endif]
[H_text_non_repeat_adj]
[_][if exp="f.r==1" ]（希露薇的身體在燃燒著。[state_p]
[elsif exp="f.r==2" ]（希露薇一邊呻吟一邊吐著熱氣。[state_p]
[elsif exp="f.r==3" ]（從私密處溢出來的愛液慢慢流出。[state_p]
[elsif exp="f.r==4" ]（希露薇的私處滴落著黏著的液體、染濕了大片床單。[state_p]
[elsif exp="f.r==5" ]（希露薇漸漸地自己扭動腰部。[state_p]
[elsif exp="f.r==6" ]（希露薇沒有想要隱藏自己散漫的表情。[state_p]
[elsif exp="f.r==7" ]（迷蒙陶醉的表情訴說著她的快樂。[state_p]
[elsif exp="f.r==8" ]（希露薇享受快感的呻吟聲持續著。[state_p]
[elsif exp="f.r==9" ]（希露薇的身體不斷的回應我給她的快感沒有思考的空閑。[state_p]
;10,11,12
[elsif exp="f.r==13" ]（希露薇時不時向後仰像是迎來了小高潮。[state_p]
[elsif exp="f.r==14" ]（希露薇的身體顫抖著反應著快感。[state_p]
[elsif exp="f.r==15" ]（現在也反應出達到高潮的樣子。[state_p]
[elsif exp="f.r==16" ]（肌膚與肌膚的接觸發出的下流的水聲漸漸變大。[state_p]
[elsif exp="f.r==17" ]（每次強烈的快感襲來的時候希露薇都拱起了腰。[state_p]
[elsif exp="f.r==18" ]（希露薇被快感吞沒小小身軀散髮出來的雌性荷爾蒙瀰漫滿屋。[state_p]
[elsif exp="f.r==19" ]（黏黏的汗珠在相互摩擦的皮肤间流动。[state_p]
[elsif exp="f.r==20" ]（‪希露薇開始積極的回應著我帶給她的快感。[state_p]
[elsif exp="f.r==21" ]（已經不再抑制喘息聲喉嚨激烈的顫動著。[state_p]

[elsif exp="f.r==22 || f.r==24 || f.r==26" ]（握著希露薇的手偶爾會用力緊握起來。[state_p]
[elsif exp="f.r==23 || f.r==25 || f.r==27" ]（從與希露薇緊扣的手能夠感受到她身上傳來的火熱。[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]


*tx_d5
[if exp="f.h_act=='off' || f.h_act=='hands' || f.h_act=='legs' || f.h_act=='open' || f.h_act=='non'" ][random_9]
[elsif exp="f.h_left=='hands' && f.h_right=='hands'" ][random_27]
[elsif exp="f.h_left=='hands' || f.h_right=='hands'" ][random_25]
[else][random_21][endif]
[H_text_non_repeat_adj]
[_][if exp="f.r==1" ]（已經濕透了的私密處追求著更大的快感而顫抖著。[state_p]
[elsif exp="f.r==2" ]（因為不斷溢出的愛液使得希露薇的下半身都濕透了。[state_p]
[elsif exp="f.r==3" ]（從希露薇虛無的眼神中已經感受不到任何理性。[state_p]
[elsif exp="f.r==4" ]（濕透的床上已經分辨不出那些是汗液哪些是愛液了。[state_p]
[elsif exp="f.r==5" ]（希露薇被強烈的快感巨浪吞噬辛苦的喘息著。[state_p]
[elsif exp="f.r==6" ]（不知道什麼時候開始自己的身體已經被希露薇的汗水和愛液浸濕。[state_p]
[elsif exp="f.r==7" ]（彼此互相混合所有的体液已经无法区分。[state_p]
[elsif exp="f.r==8" ]（希露薇的意識已經變得模糊但是看不出有拒絕的意思。[state_p]
[elsif exp="f.r==9" ]（新鮮的汗水愛液和精液的味道充斥著整個房間。[state_p]
;10,11,12
[elsif exp="f.r==13" ]（希露薇疲憊的伸著舌頭看不出是痛苦還是幸福的表情[r]歡愉聲持續著。[state_p]
[elsif exp="f.r==14" ]（反復達到高潮那般身體持續痙攣顫動著。[state_p]
[elsif exp="f.r==15" ]（希露薇的身體還在不斷著痙攣享受著快感。[state_p]
[elsif exp="f.r==16" ]（希露薇貪圖快感的樣子和平常判若兩人。[state_p]
[elsif exp="f.r==17" ]（被刺激到敏感部位的希露薇放肆的呻吟著。[state_p]
[elsif exp="f.r==18" ]（在像野兽一样的喘息聲中不斷掙扎的希露薇的表情似乎很幸福。[state_p]
[elsif exp="f.r==19" ]（彼此激烈的相互需求產生的水聲在房間里迴響。[state_p]
[elsif exp="f.r==20" ]（像要魚兒一样的張開嘴巴喘息,胸部也正在激烈上下起伏。[state_p]
[elsif exp="f.r==21" ]（不管觸碰希露薇身體的哪個部位都像刺激到敏感地帶一樣。[state_p]

[elsif exp="f.r==22 || f.r==24 || f.r==26" ]（纏繞的手掌被相互的汗水打濕。[state_p]
[elsif exp="f.r==23 || f.r==25 || f.r==27" ]（握著的手指在不規則的顫動[r]。[state_p]一時大力緊握一時放鬆
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]

;;高潮文本
*tx_ex_both_1
[hx/ex1][xf/ex][mh/i]
嗯、[if exp="f.x_speak>=1" ]我高潮…！♡[else]嗯〜！♡[endif][p][return]
*tx_ex_both_2
[hx/ex2][xf/ex][mh/i]
恩[if exp="f.x_speak>=1" ]…要[endif]高潮了…♡♡♡[p][return]
*tx_ex_both_3a
[hx/ex3][xf/ex][mh/i]
[if exp="f.x_speak>=1" ]嗯゛嗚…♡高、高潮"…！！♡♡[else]嗯゛嗚…♡咦！！！♡♡[endif][p][return]
*tx_ex_both_3b
[hx/ex3][xf/ex][mh/et]啊゛…！♡啊゛…！♡♡♡[lr]
[xf/ex][mh/st]哈…♡♡咦…♡♡♡[p][return]
*tx_ex_both_4a
[hx/ex4][xf/ex][mh/et]
啊゛！！♡[if exp="f.x_speak>=1" ]要高潮…要高潮"…！！♡♡[else]♡啊゛額！！！♡♡♡[endif][p][return]
*tx_ex_both_4b
[hx/ex4][xf/ex][mh/et]啊゛額♡啊゛〜額！♡♡！♡♡！[lr]
[xf/ex]啊゛…！♡啊゛…！♡♡♡[p][return]
*tx_ex_both_4c
[hx/ex4][xf/ex][mh/i]
[if exp="f.x_speak>=1" ]…啊゛啊[endif]要゛…♡！！♡♡♡[lr]
[xf/ex][mh/ot]嗚゛…噢♡啊♡♡…♡♡[p][return]
*tx_ex_both_4d
[hx/ex4][xf/ex][mh/st]啊額啊゛啊♡♡啊゛額啊゛啊！！♡！♡♡[lr]
[xf/ex][mh/i]咦゛…♡♡咕…嗚！♡♡♡[p][return]


*tx_ex_s1
[hx/ex1][xf/ex][mh/i]
 啊、[if exp="f.x_speak>=1" ]我要高潮了…！♡[endif]額〜！♡[p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+30" ][endif][return]
*tx_ex_s2
[hx/ex2][xf/ex][mh/i]
恩[if exp="f.x_speak>=1" ]…要[endif]高潮…♡♡♡[p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+40" ][endif][return]
*tx_ex_s3a
[hx/ex3][xf/ex][mh/i]
[if exp="f.x_speak>=1" ]嗯゛嗚…♡要、要高潮"…！！♡♡[else]嗯゛嗚…♡咦！！！♡♡[endif][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+50" ][endif][return]
*tx_ex_s3b
[hx/ex3][xf/ex][mh/et]啊゛…！♡啊啊゛…！♡♡♡[lr]
[xf/ex][mh/st]哈…♡♡咦…♡♡♡[p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+50" ][endif][return]
*tx_ex_s4a
[hx/ex4][xf/ex][mh/et]
啊゛額！！♡[if exp="f.x_speak>=1" ]高潮…高潮"…！！♡♡[else]♡啊啊゛啊！！！♡♡♡[endif][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+60" ][endif][return]
*tx_ex_s4b
[hx/ex4][xf/ex][mh/et]啊゛♡啊゛〜額！♡♡！♡♡！[lr]
[xf/ex]啊゛…！♡啊啊゛…！♡♡♡[p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+60" ][endif][return]
*tx_ex_s4c
[hx/ex4][xf/ex][mh/i]
[if exp="f.x_speak>=1" ]…要゛額[endif]高潮了゛…♡！！♡♡♡[lr]
[xf/ex][mh/ot]嗚゛…哇♡啊♡♡…♡♡[p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+60" ][endif][return]
*tx_ex_s4d
[hx/ex4][xf/ex][mh/st]啊額啊゛額♡♡啊゛啊゛啊！！♡！♡♡[lr]
[xf/ex][mh/i]咦゛…♡♡咕…！♡♡♡[p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+60" ][endif][return]


*tx_ex_sy_in1
[hx/ex1][xf/ex][mh/e]
哈♡嗚…！♡[name_h]的…裏面…♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_in2
[hx/ex2][xf/ex][mh/i]
[name_h]的…出來了♡♡在我的…裏面…♡♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_in3
[hx/ex3][xf/ex][mh/i]
咦゛〜啊！♡♡[name_h]的[p_name]在…♡啊…！！♡♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_in4
[hx/ex4][xf/ex][mh/et]
哦嗚゛啊…♡♡啊啊゛…♡♡♡[p]
[if exp="f.h_count>=170" ][jump target="*morning" ][endif]
[jump storage="H/Hx.ks" target="*h_def" ]

*tx_ex_sy_out1
[hx/ex1][xf/ex][mh/e]
哈♡嗚…♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_out2
[hx/ex2][xf/ex][mh/et]
哈啊！♡♡[name_h]…♡♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_out3
[hx/ex3][xf/ex][mh/i]
啊啊゛〜！♡♡嗯唔…！！♡♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_out4
[hx/ex4][xf/ex][mh/st]
啊゛啊…♡♡啊啊゛…♡♡♡[p]
[if exp="f.h_count>=170" ][jump target="*morning" ][endif]
[jump storage="H/Hx.ks" target="*h_def" ]

*tx_ex_y_in0
[hx/ex0][xf/eun]
恩…！[name_h]的那個…進來了♡[p]
[eval exp="f.s_feel=f.s_feel+30" ][return]
*tx_ex_y_in1
[hx/ex1][xf/eun]
嗯…唔…嗚嗚…！[name_h]…[name_h]…♡[p]
[eval exp="f.s_feel=f.s_feel+30" ][return]
*tx_ex_y_in2
[hx/ex2][xf/ao]
嗚〜♡♡[name_h]的、好多♡[p]
[eval exp="f.s_feel=f.s_feel+40" ][return]
*tx_ex_y_in3
[hx/ex3][xf/ao]
啊゛〜！♡[name_h]〜♡♡♡♡[p]
[eval exp="f.s_feel=f.s_feel+50" ][return]
*tx_ex_y_in4
[hx/ex4][xf/ao]
啊゛〜！♡♡啊゛〜啊！♡♡♡♡[p]
[eval exp="f.s_feel=f.s_feel+60" ][return]

*tx_ex_y_out0
[hx/ex0]
[xf/ao]
嗯…！[lr]…嗚嗚、舒服…舒服嗎？[name_h]♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_y_out1
[hx/ex1][xf/ao]
[name_h]…♡這麼多♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_y_out2
[hx/ex2][xf/ao]
[name_h]的味道…♡♡[lr]我、被[name_h]染上了…♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_y_out3
[hx/ex3][xf/ao]
啊啊゛〜♡♡更多…給我…♡♡♡[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_y_out4
[hx/ex4][xf/ao]
啊啊゛〜…♡啊゛〜…♡♡[p]
[if exp="f.h_count>=170" ][jump target="*morning" ][endif]
[jump storage="H/Hx.ks" target="*h_def" ]

*tx_state1
state1。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state2
state2。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state3
state3。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state4
state4。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state5
state5。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state6
state6。[p][jump storage="H/Hx.ks" target="*h_def" ]

;;終了
*tx_stop1
[eh/def_nh][mh/e][yh/def]嗯…。已經、結束了嗎？[p]
[eh/half][mh/n]…好的、我知道了。[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]
*tx_stop2
[eh/def_nh][mh/e][yh/def]欸…。已經、結束了嗎？[lr]
[yh/conf]我、還沒…[p]
[eh/half][mh/n]…沒、我知道了。[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]
*tx_stop3
[eh/def][mh/e][yh/def]呼…。誒、結…結束了？[lr]
[eh/half][mh/n]嗯…、我…我知道了…[p]
[yh/conf][name_h]的捉弄…[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]
*tx_stop4
[eh/half][mh/et][yh/conf]呼…。啊…、已經、結束了嗎？[p]
怎麼那樣啊…。[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]
*tx_stop5
[eh/half][mh/et][yh/conf]呼…。啊…、已經、結束了嗎？[p]
還沒…明明沒問題…[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]

*tx_stop6
[syl][xf/ao]啊゛〜♡啊゛〜♡♡[p]
[_]（已經到極限了…今天就到這吧[p]
[eval exp="f.act='sex'" ][jump target="*end" ]

*tx_end_y
[_]（已經沒有力氣了今天就到這裡吧。[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]

*tx_end_s
[if exp="f.h_style=='sit'" ][left_l][right_l][else][left_non][right_non][endif]
[if exp="f.h_sex==1" ][se_nloop st="s-wet1.ogg" ][v_show][endif]
[syl][if exp="f.wet>=600" ]啊゛…唔゛♡啊…啊゛♡♡[p]
[elsif exp="f.wet>=250" ]啊啊゛〜♡啊啊゛〜♡♡[p]
[elsif exp="f.wet>=150" ]啊啊…♡啊啊…♡[p]
[else]呼唔…♡哈…♡[p][endif]
 
[_]（希露薇好像不行了今天就做到這吧。[p]
[eval exp="f.act='sex'" ]
[jump target="*end" ]

*morning
[if exp="f.h_style=='sit'" ][left_l][right_l][else][left_non][right_non][endif]
[if exp="f.h_sex==1" ][se_nloop st="s-wet1.ogg" ][v_show][endif]
[syl]啊゛…嗚゛♡啊…啊゛♡♡[p]
[_]（天已經快亮了。兩人都氣喘吁吁…。[p]
[black]
像灘泥水一樣是失去意識般的睡著了…。[p]
[eval exp="f.act='sexmax'" ]
[jump target="*end" ]

*end
[black][stop_bgm][paste_dress]
[eval exp="f.drug_y=0" ][eval exp="f.drug_s=0" ]
[if exp="f.s_ex>=1" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ]
[else][eval exp="f.sexless=f.sexless+2" ][endif]

[if exp="f.wet>=1000" ][eval exp="f.lust=f.lust+5" ]
[elsif exp="f.wet>=600" ][eval exp="f.lust=f.lust+4" ]
[elsif exp="f.wet>=250" ][eval exp="f.lust=f.lust+3" ]
[elsif exp="f.wet>=150" ][eval exp="f.lust=f.lust+2" ]
[elsif exp="f.wet>=80" ][eval exp="f.lust=f.lust+1" ]
[endif][eval exp="f.sex=f.sex+1" ][set_win_frame]
…[p][day_end]

