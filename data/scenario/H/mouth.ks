;;回想分岐
*a_m
[cm][eval exp="f.hist_mode=1" ][black][show_message_w][bgm_MT][jump target="*a" ]
*b_m
[cm][eval exp="f.hist_mode=2" ][black][show_message_w][bgm_MT][jump target="*b" ]
*c_m
[cm][eval exp="f.hist_mode=3" ][black][show_message_w][bgm_MT][jump target="*c" ]

;;シーン1
*a
[cm][black][set_black]
[if exp="f.hist_mode>=1" ][else]
[eval exp="f.lust=f.lust+1" ][eval exp="f.love=f.love+3" ][eval exp="f.h_m=f.h_m+3" ][endif]
[call target="*g_a1" ][h_bg st="H_oral/a1.jpg" ][reset_effect]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[syl]那麽…開…開始了哦…。[p]

[call target="*g_a2" ][h_bg st="H_oral/a2.jpg" ][se_loop st="l-wet0.ogg" ]
[h_se st="H/se/sm1-2.png" ][h_ef st="H/ef/sm1-2.png" ]
啊、姆[p]
[_]（希露薇開始小心翼翼的舔起我的桿部。[p]
[syl]嗯…。[p]
[_]（就像想要給予我大的刺激一樣、她用舌頭上下舔舐著我的陰莖盡她所能地給予最大面積的刺激。[p]
（陰莖漸漸沾滿了希露薇的唾液閃著淫猥的光芒。[p]

[call target="*g_a3" ][h_bg st="H_oral/a3.jpg" ]
[h_se st="H/se/sm1-3.png" ][h_ef st="00.png" ]
[syl]秋…♡[p]
[_]（希露薇像親吻一樣用嘴唇觸碰了一下龜頭、[r]
然後開始用心地嗍吸陰莖的尖端。[p]
[syl]嗯揪…啊姆♡[p]

[call target="*g_a4" ][h_bg st="H_oral/a4.jpg" ][se_loop st="oral1.ogg" ]
[h_se st="H/se/sm1-4.png" ][h_tx st="H/tx/sm1-4.png" ][h_ef st="H/ef/sm1-4.png" ]
[_]（她開始慢慢地將陰莖在口中深入。[p]
[syl]嗯姆…揪♡[p]
[_]（她小小的口就像無法含下一樣舌頭笨拙著在陰莖上移動。[p]

[call target="*g_a5" ][h_bg st="H_oral/a5.jpg" ][stop_se]
[h_se st="H/se/sm1-5.png" ][h_tx st="00.png" ][h_ef st="00.png" ]
[syl]…噗哈♡[p]
[_]（似乎是因為有些難受、她暫時把嘴拿開看著我的反應。[p]
[syl]那個、有比較舒服點嗎？[p]

[if exp="sf.xr==1" ]
[call target="*g_a6" ][h_bg st="H_oral/a6x.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm1-6.png" ][h_tx st="H/tx/sm1-6.png" ]
…[p]
[h_bg st="H_oral/a6.jpg" ][se_loop st="oral2.ogg" ]

[else]
[call target="*g_a6" ][h_bg st="H_oral/a6.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm1-6.png" ][h_tx st="H/tx/sm1-6.png" ]
…[p]
[se_loop st="oral2.ogg" ]
[endif]

[_]（確認了我的快感之後她浮現出了安心的表情[r]
她再次含住陰莖開始了比剛才更深層次的口交。[p]
[syl]揪嚕…嗯唔…♡[p]
[_]（雖然還有些笨拙但她拼命做的樣子讓人看起來相當愉悅…。[p]
（差不多要到界限了。[p]

[if exp="f.fin_choice==1" ]
[button target="*in1" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*out1" graphic="ch/out-cum.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in1" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out1" ][endif]

*in1
[cm][if exp="f.hist_mode>=1" ][else][eval exp="f.drink=f.drink+1" ][endif]
[h_bg st="H_oral/a7.jpg" ][se_nloop st="fin1.ogg" ]
[h_se st="H/se/sm1-7.png" ][h_tx st="H/tx/sm1-7.png" ][h_ef st="H/ef/sm1-7.png" ]
[_]（到達界限的我在希露薇的口中射精了。[p]
[syl]嗯嗚…！[p]
[se_nloop st="drink.ogg" ]
[_]（希露薇用驚恐的眼神盯著我嘴卻沒有放開陰莖、[r]
猶豫了一下喝下了精液。[p]

[h_bg st="H_oral/a8.jpg" ]
[h_se st="H/se/sm1-8.png" ][h_tx st="00.png" ][h_ef st="00.png" ]
[syl]咕唔…嗯咕…[p]
[_]（然而她小小的口內很快就被塞滿、[r]
無法喝下的白濁從嘴邊溢了出來。[p]

[black][call target="*after_g" ][h_bg st="H_oral/ax1.jpg" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
（我把陰莖抽了出來、希露薇還在努力地飲下口中的精液。[p]
[se_nloop st="drink1.ogg" ]
[syl]…嗯咕…咳咳♡[p]

[h_bg st="H_oral/ax2.jpg" ]
[_]（數秒後、她終於喝完口中的東西然後仰頭微笑著看向我。[p]
[syl]我、有稍微讓[name_h]你、舒服嗎？♡[p]

[if exp="f.hist_mode>=1" ][return_memory][endif]
[if exp="f.m_mouth>=1" ][else][eval exp="f.m_mouth=1" ][endif]
[jump storage="H/before.ks" target="*mouth_after" ]

*out1
[cm][black][se_nloop st="squi.ogg" ]
[if exp="f.hist_mode>=1" ][else][eval exp="f.kake=f.kake+1" ][endif]
[_]（在到達極限之前我把陰莖抽了出來在離開她口腔的瞬間爆發了。[p]
[syl]呀…！[p]

[h_bg st="H_oral/ax2.jpg" ][call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_mod name="z-a" time="0" storage="H/z1/sma1-z.png" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[_]（精液射出的一瞬間希露薇露出了驚訝的表情[r]
但她馬上瞇起眼睛向我微笑。[p]
[syl]我、有讓[name_h]、舒服了嗎？♡[p]

[if exp="f.hist_mode>=1" ][return_memory][endif]
[if exp="f.m_mouth>=1" ][else][eval exp="f.m_mouth=1" ][endif]
[jump storage="H/before.ks" target="*mouth_after" ]

;;シーン2
*b
[cm][black][set_black]
[if exp="f.hist_mode>=1" ][else][eval exp="f.lust=f.lust+3" ][eval exp="f.love=f.love+7" ][eval exp="f.h_m=f.h_m+8" ][endif]
[call target="*g_b1" ][h_bg st="H_oral/b1.jpg" ][reset_effect]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]

[syl]…我會加油的♡[p]

[call target="*g_b2" ][h_bg st="H_oral/b2.jpg" ][se_loop st="l-wet0.ogg" ]
[h_se st="H/se/sm2-2.png" ][h_ef st="H/ef/sm2-2.png" ]
啊ー、姆♡[p]
[_]（希露薇毫不猶豫地開始用舌頭舔起桿部。[p]
[syl]嗯…♡[p]
[_]（看來她已經熟悉了舔舐桿部…。[lr]
（陰莖很快就被希露薇的唾液潤濕了。[p]

[call target="*g_b3" ][h_bg st="H_oral/b3.jpg" ]
[h_se st="H/se/sm2-3.png" ][h_tx st="H/tx/sm2-3.png" ][h_ef st="H/ef/sm2-3.png" ]
[syl]啊ー嗯…♡[p]
[_]（希露薇像舔糖果一樣含住了龜頭、[r]
冠溝和尖端等處都被舌頭開始精心刺激。[p]
[syl]嗯揪…啊姆。[p]

[if exp="sf.xr==1" ]
[call target="*g_b4" ][h_bg st="H_oral/b4x.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm2-4.png" ][h_tx st="H/tx/sm2-4.png" ][h_ef st="H/ef/sm2-4.png" ]
…[p]
[se_loop st="oral1.ogg" ][h_bg st="H_oral/b4.jpg" ]
[else]
[call target="*g_b4" ][h_bg st="H_oral/b4.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm2-4.png" ][h_tx st="H/tx/sm2-4.png" ][h_ef st="H/ef/sm2-4.png" ]
…[p]
[se_loop st="oral1.ogg" ]
[endif]
[_]（過了一會陰莖開始慢慢滑向希露薇喉嚨的深處。[p]
[syl]嗯姆…♡咕啊…咳唔♡[p]

[if exp="sf.xr==1" ]
[call target="*g_b5" ][h_bg st="H_oral/b5x.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm2-5.png" ][h_tx st="H/tx/sm2-5.png" ][h_ef st="H/ef/sm2-5.png" ]
…[p]
[se_loop st="oral2.ogg" ][h_bg st="H_oral/b5.jpg" ]
[else]
[call target="*g_b5" ][h_bg st="H_oral/b5.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm2-5.png" ][h_tx st="H/tx/sm2-5.png" ][h_ef st="H/ef/sm2-5.png" ]
…[p]
[se_loop st="oral2.ogg" ]
[endif]
[_]（她小小的口腔似乎無法吞下這麽大的東西[r]
開始半強行的往喉嚨裏塞入。[p]
[syl]…噗哈♡…唉゛唔♡[p]
[_]（雖然辛苦了到把嘴暫時放松[r]
但是她調整好呼吸後又把它吞了下去…。[p]
[syl]揪嚕♡…嗯咕…♡♡[p]

[if exp="sf.xr==1" ]
[call target="*g_b6" ][h_bg st="H_oral/b6x.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm2-6.png" ][h_tx st="H/tx/sm2-6.png" ][h_ef st="H/ef/sm2-6.png" ]
…[p]
[h_bg st="H_oral/b6.jpg" ][se_loop st="oral3.ogg" ]
[else]
[call target="*g_b6" ][h_bg st="H_oral/b6.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm2-6.png" ][h_tx st="H/tx/sm2-6.png" ][h_ef st="H/ef/sm2-6.png" ]
…[p]
[se_loop st="oral3.ogg" ]
[endif]
[_]（她像吸奶一樣慢慢的吸汲著口交的速度開始加快了…。[p]
（她全力的服務在視覺上極其誘惑讓我非常舒服…[p]

[if exp="f.fin_choice==1" ]
[button target="*in2" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*out2" graphic="ch/out-cum.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in2" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out2" ][endif]


*in2
[cm][if exp="f.hist_mode>=1" ][else][eval exp="f.drink=f.drink+1" ][endif]
[h_bg st="H_oral/b7.jpg" ][se_nloop st="fin1.ogg" ]
[h_se st="H/se/sm2-7.png" ][h_tx st="H/tx/sm2-7.png" ][h_ef st="H/ef/sm2-7.png" ]
[_]（到達界限的我在希露薇的口內爆發了。[p]
[syl]嗯唔…！[p]
[se_nloop st="drink.ogg" ]
[_]（希露薇難掩她驚訝的表情同時把陰莖吞到了口中更深的地方、[r]
精液直接到達了喉嚨的里。[p]

[h_bg st="H_oral/b8.jpg" ]
[h_se st="H/se/sm2-8.png" ][h_tx st="H/tx/sm2-8.png" ][h_ef st="H/ef/sm2-8.png" ][h_x st="H/x/sm2-8.png" ]
[syl]嗯♡…嗯咕♡♡[p]
[black][h_bg st="H_oral/bx1.jpg" ]
[call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
嗯♡…哈呼♡[p]
[se_nloop st="drink1.ogg" ]
[_]（她慢慢的把陰莖從嘴里拿開出來、[r]
她咕咚咕咚地把嘴里的精液也全都咽了下去。[p]

[h_bg st="H_oral/bx2.jpg" ]
（然後希露薇開心地睜開眼睛頭看向我。[p]
[syl]你[p_name]…有、變得舒服嗎？♡[lr]
我逐漸習慣了這種事呢、下次會更加努力的♡♡[p]

[if exp="f.hist_mode>=1" ][return_memory][endif]
[if exp="f.m_mouth<=1" ][eval exp="f.m_mouth=2" ][endif]
[jump storage="H/before.ks" target="*mouth_after" ]

*out2
[cm][black][se_nloop st="squi.ogg" ][if exp="f.hist_mode>=1" ][else][eval exp="f.kake=f.kake+1" ][endif]
[_]（在到達極限之前我把陰莖抽了出來在離開口腔的瞬間爆發了。[p]
[syl]嗯…♡♡！[p]
[h_bg st="H_oral/bx2.jpg" ][call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_mod name="z-a" time="0" storage="H/z1/sma2-z.png" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[_]（沾滿了白濁的希露薇以一種很開心的表情微笑看向我。[p]
[syl][p_name]…我有、讓你舒服嗎♡？[lr]
我會逐漸習慣了這種事的、下次會更加努力的♡♡[p]

[if exp="f.hist_mode>=1" ][return_memory][endif]
[if exp="f.m_mouth<=1" ][eval exp="f.m_mouth=2" ][endif]
[jump storage="H/before.ks" target="*mouth_after" ]

;;シーン3
*c
[cm][black][set_black]
[if exp="f.hist_mode>=1" ][else][eval exp="f.lust=f.lust+10" ][eval exp="f.love=f.love+15" ][eval exp="f.h_m=f.h_m+15" ][endif]
[call target="*g_c1" ][h_bg st="H_oral/c1.jpg" ][reset_effect]
[h_ef st="H/ef/sm3-1.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]

[syl]啊啊…♡[name_h]…♡[name_h]的[p_name]…♡♡[p]
[_]（希露薇跪坐在了地上陰莖感受著她嘴的炙熱的呼吸。[p]

[if exp="sf.xr==1" ]
[call target="*g_c2" ][h_bg st="H_oral/c2x.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm3-2.png" ][h_tx st="H/tx/sm3-2.png" ][h_ef st="H/ef/sm3-2.png" ]
…[p]
[h_bg st="H_oral/c2.jpg" ][se_loop st="oral1.ogg" ]
[else]
[call target="*g_c2" ][h_bg st="H_oral/c2.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm3-2.png" ][h_tx st="H/tx/sm3-2.png" ][h_ef st="H/ef/sm3-2.png" ]
…[p]
[se_loop st="oral1.ogg" ]
[endif]
[syl]嗯…♡啊…♡[p]
[_]（希露薇一口氣把陰莖含到了口中。[p]

[if exp="sf.xr==1" ]
[call target="*g_c3" ][h_bg st="H_oral/c3x.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm3-3.png" ][h_tx st="H/tx/sm3-3.png" ][h_ef st="H/ef/sm3-3.png" ]
…[p]
[h_bg st="H_oral/c3.jpg" ][se_loop st="oral2.ogg" ]
[else]
[call target="*g_c3" ][h_bg st="H_oral/c3.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm3-3.png" ][h_tx st="H/tx/sm3-3.png" ][h_ef st="H/ef/sm3-3.png" ]
…[p]
[se_loop st="oral2.ogg" ]
[endif]
[syl]嗯゛咕…♡[p]
[_]（被吸入的陰莖轉眼間就被唾液覆蓋。[p]
（希露薇把它強行塞到喉中、伴隨揪嚕揪嚕的聲音開始給我口交。[p]
（希露薇一邊輕輕嗍著陰莖一邊不在意地用力往深處送去。[p]
[syl]嗯揪…♡咳咳…♡[p]
[_]（雖然有偶爾的換氣但是希露薇完全沒有放松吮吸的動作、[r]
陰莖漸漸越來越深入喉嚨中。[p]
[syl]…噗哈♡[p]

[if exp="sf.xr==1" ]
[call target="*g_c4" ][h_bg st="H_oral/c4x.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm3-4.png" ][h_tx st="H/tx/sm3-4.png" ][h_ef st="H/ef/sm3-4.png" ]
…[p]
[h_bg st="H_oral/c4.jpg" ]
[else]
[call target="*g_c4" ][h_bg st="H_oral/c4.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sm3-4.png" ][h_tx st="H/tx/sm3-4.png" ][h_ef st="H/ef/sm3-4.png" ]
[endif]
…唉゛咕♡♡[p]
[_]（她突然一下把陰莖使勁地咽了下去、[r]
陰莖塞到了她完全無法呼吸的地步。[p]
（她喉嚨的深處又窄又熱、讓我的腰部不禁有了感覺。[p]
[se_loop st="oral2.ogg" ]
（希露薇慢慢繼續口交著[r]
吞入的長度甚至更深。[p]
[syl]嗯…♡♡揪…♡咕…♡♡[p]
[_]（從龜頭的尖端到陰莖的根部都被她強行吞了下去並且吮吸著。[p]
（黏黏的慢慢的動作不斷地刺激著它讓我難以抵抗[r]
我身體自然地開始用力。[p]
（試圖去體味希露薇的深喉交[r]
但是１次往返的時間卻變得越來越短。[p]
[syl]呼ー…♡♡[p]

[h_bg st="H_oral/c5.jpg" ][se_loop st="oral3.ogg" ]
[h_se st="H/se/sm3-5.png" ][h_tx st="H/tx/sm3-5.png" ][h_ef st="H/ef/sm3-5.png" ]
（她用一瞬間進行換氣、然後再次加速口交的速度。[p]
[syl]嗯咕♡♡揪♡噗♡♡♡[p]
[_]（希露薇已經把臉完全埋在了腰間、她的每次吞吐都不停地吸吮陰莖。[p]
（我無法長時間忍受如此激烈的刺激、很快就到達了界限了。[p]

[if exp="f.fin_choice==1" ]
[button target="*in3" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*out3" graphic="ch/out-cum.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in3" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out3" ][endif]

*in3
[cm][if exp="f.hist_mode>=1" ][else][eval exp="f.drink=f.drink+1" ][endif]
[h_bg st="H_oral/c6.jpg" ][se_nloop st="fin1.ogg" ]
[h_se st="H/se/sm3-6.png" ][h_tx st="00.png" ][h_ef st="H/ef/sm3-6.png" ][h_x st="H/x/sm3-6.png" ]
[syl]！！♡！♡♡[p]
[_]（在射精開始的時候希露薇把嘴唇貼到了陰莖棒的根部上[r]
陰莖再次進到了喉嚨的最深處[p]
[syl]嗯…♡咳咳♡♡[p]
[se_nloop st="drink.ogg" ]
[_]（陰莖跳動著向希露薇的喉嚨深處註入了大量的精液。[p]
（她的嘴仿佛在敦促著一樣、轉動著頭刺激著陰莖射精。[p]
（射精花了很長的時間終於結束了、[r]
伴隨著她口中揪揪地精液逆流的聲音[r]
陰莖慢慢的被拔了出來。[p]
[black][h_bg st="H_oral/cx1.jpg" ][call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[syl]…嗯…♡♡唔…♡♡♡[p]

[h_bg st="H_oral/cx2.jpg" ]
啊…♡♡♡[p]
[_]（陰莖從嘴唇上拿開、希露薇大張著口仰望著我、她臉上和喉中滿是口交的證據。[p]
（隨著噗的粘液迸裂一聲她張開了嘴、[r]
從喉嚨中逆流到嘴裏的精液還在泛著泡沫。[p]

[h_bg st="H_oral/cx3.jpg" ]
[se_nloop st="drink.ogg" ]
[syl]嗯…♡♡[p]
[_]（她的嘴現在還在揪揪地開合著、就像細心的在品嘗精液一樣[r]
２、３次的吞咽以後她終於咽下了口中還殘留的白濁。[p]

[h_bg st="H_oral/cx4.jpg" ]
[syl]哈啊…♡♡[p]
[_]（她再次睜開了嘴就像是要證明口中的精液全部都到了胃中。[p]

[h_bg st="H_oral/cx5.jpg" ]
[syl]…非常感謝你的款待♡♡[p]
如果[name_h]想要的話、[p_name_ex]我隨時會為你奉獻的♡[p]

[if exp="f.hist_mode>=1" ][return_memory][endif]
[if exp="f.m_mouth<=2" ][eval exp="f.m_mouth=3" ][endif]
[jump storage="H/before.ks" target="*mouth_after" ]

*out3
[cm][if exp="f.hist_mode>=1" ][else][eval exp="f.kake=f.kake+1" ][endif]
[black][se_nloop st="squi.ogg" ]
[_]（在到達極限之前我把陰莖抽了出來在離開她口腔的瞬間爆發了。[p]
[syl]嗯…♡♡♡[p]

[h_bg st="H_oral/cx5.jpg" ][call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_mod name="z-a" time="0" storage="H/z1/sma3-z.png" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[_]（希露薇伴隨著恍惚的表情接受著精液的味道。[p]
[syl]嗯…♡♡[name_h]的那個好多…♡♡[p]
如果[name_h]想要的話、[p_name_ex]我隨時會為你奉獻的♡[p]

[if exp="f.hist_mode>=1" ][return_memory][endif]
[if exp="f.m_mouth<=2" ][eval exp="f.m_mouth=3" ][endif]
[jump storage="H/before.ks" target="*mouth_after" ]

;;CG1
*a_cg
[cm][set_black][call target="*g_a1" ][h_bg st="H_oral/a1.jpg" ]
[mod_win st="o/win/LR.png" ]
[h_se st="00.png" ][h_tx st="00.png" ][h_ef st="00.png" ][h_x st="00.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*a_cg_2"][s]
*a_cg_2
[cm][call target="*g_a2" ][h_bg st="H_oral/a2.jpg" ]
[h_se st="00.png" ][h_ef st="00.png" ]
[h_back tg="*a_cg"][h_next tg="*a_cg_3"][s]
*a_cg_3
[cm][call target="*g_a3" ][h_bg st="H_oral/a3.jpg" ]
[h_se st="H/se/sm1-3.png" ][h_ef st="00.png" ][h_tx st="00.png" ]
[h_back tg="*a_cg_2"][h_next tg="*a_cg_4"][s]
*a_cg_4
[cm][call target="*g_a4" ][h_bg st="H_oral/a4.jpg" ]
[h_se st="H/se/sm1-4.png" ][h_tx st="H/tx/sm1-4.png" ][h_ef st="H/ef/sm1-4.png" ]
[h_back tg="*a_cg_3"][h_next tg="*a_cg_5"][s]
*a_cg_5
[cm][call target="*g_a5" ][h_bg st="H_oral/a5.jpg" ]
[h_se st="H/se/sm1-5.png" ][h_tx st="00.png" ][h_ef st="00.png" ]
[h_back tg="*a_cg_4"][h_next tg="*a_cg_6_"][s]
*a_cg_6_
[cm]
[if exp="sf.xr==1" ][jump target="*a_cg_6_x" ][else][jump target="*a_cg_6" ][endif]
*a_cg_6_x
[cm][call target="*g_a6" ][h_bg st="H_oral/a6x.jpg" ]
[h_se st="H/se/sm1-6.png" ][h_tx st="H/tx/sm1-6.png" ]
[h_back tg="*a_cg_5"][h_next tg="*a_cg_6"][s]
*a_cg_6_return
[cm][black][set_black][call target="*g_a6" ][h_bg st="H_oral/a6.jpg" ]
[h_se st="H/se/sm1-6.png" ][h_tx st="H/tx/sm1-6.png" ][h_ef st="00.png" ]
[show_effect][hide_black]
*a_cg_6
[cm][call target="*g_a6" ][h_bg st="H_oral/a6.jpg" ]
[h_se st="H/se/sm1-6.png" ][h_tx st="H/tx/sm1-6.png" ][h_ef st="00.png" ]
[h_back tg="*a_cg_5"][h_next tg="*a_cg_selest"][s]
*a_cg_selest
[cm][if exp="f.fin_choice==1" ]
[button target="*in1_cg" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*out1_cg" graphic="ch/out-cum.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in1_cg" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out1_cg" ][endif]

*in1_cg
[cm][h_bg st="H_oral/a7.jpg" ]
[h_se st="H/se/sm1-7.png" ][h_tx st="H/tx/sm1-7.png" ][h_ef st="H/ef/sm1-7.png" ]
[h_back tg="*a_cg_6"][h_next tg="*a_cg_8"][s]

*a_cg_8_return
[cm][black][set_black][call target="*g_a6" ][h_bg st="H_oral/a8.jpg" ]
[h_se st="H/se/sm1-8.png" ][h_tx st="00.png" ][h_ef st="00.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]

*a_cg_8
[cm][call target="*g_a6" ][h_bg st="H_oral/a8.jpg" ]
[h_se st="H/se/sm1-8.png" ][h_tx st="00.png" ][h_ef st="00.png" ]
[h_back tg="*in1_cg"][h_next tg="*a_cg_a1"][s]

*a_cg_a1
[cm][black][h_bg st="H_oral/ax1.jpg" ]
[call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_back tg="*a_cg_8_return"][h_next tg="*a_cg_a2"][s]

*a_cg_a1_
[cm][h_bg st="H_oral/ax1.jpg" ]
[h_back tg="*a_cg_8_return"][h_next tg="*a_cg_a2"][s]

*a_cg_a2
[cm][h_bg st="H_oral/ax2.jpg" ]
[h_back tg="*a_cg_a1_"][h_next tg="*end_cg"][s]


*out1_cg
[cm][black][h_bg st="H_oral/ax2.jpg" ][call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_mod name="z-a" time="0" storage="H/z1/sma1-z.png" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_back tg="*a_cg_6_return"][h_next tg="*end_cg"][s]


;;CG2
*b_cg
[cm][set_black][call target="*g_b1" ][h_bg st="H_oral/b1.jpg" ]
[mod_win st="o/win/LR.png" ]
[h_se st="00.png" ][h_tx st="00.png" ][h_ef st="00.png" ][h_x st="00.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]
*b_cg2
[cm][call target="*g_b2" ][h_bg st="H_oral/b2.jpg" ]
[h_se st="H/se/sm2-2.png" ][h_tx st="00.png" ][h_ef st="H/ef/sm2-2.png" ]
[h_back tg="*b_cg"][h_next tg="*b_cg3"][s]
*b_cg3
[cm][call target="*g_b3" ][h_bg st="H_oral/b3.jpg" ]
[h_se st="H/se/sm2-3.png" ][h_tx st="H/tx/sm2-3.png" ][h_ef st="H/ef/sm2-3.png" ]
[h_back tg="*b_cg2"][h_next tg="*b_cg4_"][s]
*b_cg4_
[cm]
[if exp="sf.xr==1" ][jump target="*b_cg4_x" ][else][jump target="*b_cg4" ][endif]

*b_cg4_x
[cm][call target="*g_b4" ][h_bg st="H_oral/b4x.jpg" ]
[h_se st="H/se/sm2-4.png" ][h_tx st="H/tx/sm2-4.png" ][h_ef st="H/ef/sm2-4.png" ]
[h_back tg="*b_cg3"][h_next tg="*b_cg4"][s]
*b_cg4
[cm][call target="*g_b4" ][h_bg st="H_oral/b4.jpg" ]
[h_se st="H/se/sm2-4.png" ][h_tx st="H/tx/sm2-4.png" ][h_ef st="H/ef/sm2-4.png" ]
[h_back tg="*b_cg3"][h_next tg="*b_cg5_"][s]
*b_cg5_
[cm][if exp="sf.xr==1" ][jump target="*b_cg5_x" ][else][jump target="*b_cg5" ][endif]
*b_cg5_x
[cm][call target="*g_b5" ][h_bg st="H_oral/b5x.jpg" ]
[h_se st="H/se/sm2-5.png" ][h_tx st="H/tx/sm2-5.png" ][h_ef st="H/ef/sm2-5.png" ]
[h_back tg="*b_cg4"][h_next tg="*b_cg5"][s]
*b_cg5
[cm][call target="*g_b5" ][h_bg st="H_oral/b5.jpg" ]
[h_se st="H/se/sm2-5.png" ][h_tx st="H/tx/sm2-5.png" ][h_ef st="H/ef/sm2-5.png" ]
[h_back tg="*b_cg4"][h_next tg="*b_cg6_"][s]
*b_cg6_
[cm][if exp="sf.xr==1" ][jump target="*b_cg6_x" ][else][jump target="*b_cg6" ][endif]

*b_cg6_x
[cm][call target="*g_b6" ][h_bg st="H_oral/b6x.jpg" ]
[h_se st="H/se/sm2-6.png" ][h_tx st="H/tx/sm2-6.png" ][h_ef st="H/ef/sm2-6.png" ]
[h_back tg="*b_cg5"][h_next tg="*b_cg6"][s]
*b_cg6_return
[cm][black][set_black][call target="*g_b6" ][h_bg st="H_oral/b6.jpg" ]
[h_se st="H/se/sm2-6.png" ][h_tx st="H/tx/sm2-6.png" ][h_ef st="H/ef/sm2-6.png" ][h_x st="00.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
*b_cg6
[cm][call target="*g_b6" ][h_bg st="H_oral/b6.jpg" ]
[h_se st="H/se/sm2-6.png" ][h_tx st="H/tx/sm2-6.png" ][h_ef st="H/ef/sm2-6.png" ]
[h_back tg="*b_cg5"][h_next tg="*b_cg_select"][s]
*b_cg_select
[cm]
[if exp="f.fin_choice==1" ]
[button target="*in2_cg" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*out2_cg" graphic="ch/out-cum.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in2_cg" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out2_cg" ][endif]

*in2_cg
[cm][h_bg st="H_oral/b7.jpg" ]
[h_se st="H/se/sm2-7.png" ][h_tx st="H/tx/sm2-7.png" ][h_ef st="H/ef/sm2-7.png" ]
[h_back tg="*b_cg6"][h_next tg="*in2_cg_8"][s]

*in2_cg_8_return
[cm][black][set_black][call target="*g_b6" ][h_bg st="H_oral/b8.jpg" ]
[h_se st="H/se/sm2-8.png" ][h_tx st="H/tx/sm2-8.png" ][h_ef st="H/ef/sm2-8.png" ][h_x st="H/x/sm2-8.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
*in2_cg_8
[cm][h_bg st="H_oral/b8.jpg" ]
[h_se st="H/se/sm2-8.png" ][h_tx st="H/tx/sm2-8.png" ][h_ef st="H/ef/sm2-8.png" ][h_x st="H/x/sm2-8.png" ]
[h_back tg="*in2_cg"][h_next tg="*b_cg_a1"][s]
*b_cg_a1
[cm][black][h_bg st="H_oral/bx1.jpg" ]
[call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_back tg="*in2_cg_8_return"][h_next tg="*b_cg_a2"][s]
*b_cg_a2
[cm][h_bg st="H_oral/bx2.jpg" ]
[h_back tg="*b_cg_a1"][h_next tg="*end_cg"][s]

*out2_cg
[cm][black][h_bg st="H_oral/bx2.jpg" ][call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_mod name="z-a" time="0" storage="H/z1/sma2-z.png" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_back tg="*b_cg6_return"][h_next tg="*end_cg"][s]


;;CG3
*c_cg
[cm][set_black][call target="*g_c1" ][h_bg st="H_oral/c1.jpg" ]
[mod_win st="o/win/LR.png" ]
[h_se st="00.png" ][h_tx st="00.png" ][h_ef st="H/ef/sm3-1.png" ][h_x st="00.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*c_cg_2_"][s]
*c_cg_2_
[cm][if exp="sf.xr==1" ][jump target="*c_cg_2_x" ][else][jump target="*c_cg_2" ][endif]
*c_cg_2_x
[cm][call target="*g_c2" ][h_bg st="H_oral/c2x.jpg" ]
[h_se st="H/se/sm3-2.png" ][h_tx st="H/tx/sm3-2.png" ][h_ef st="H/ef/sm3-2.png" ]
[h_back tg="*c_cg"][h_next tg="*c_cg_2"][s]
*c_cg_2
[cm][call target="*g_c2" ][h_bg st="H_oral/c2.jpg" ]
[h_se st="H/se/sm3-2.png" ][h_tx st="H/tx/sm3-2.png" ][h_ef st="H/ef/sm3-2.png" ]
[h_back tg="*c_cg"][h_next tg="*c_cg_3_"][s]
*c_cg_3_
[cm][if exp="sf.xr==1" ][jump target="*c_cg_3_x" ][else][jump target="*c_cg_3" ][endif]
*c_cg_3_x
[cm][call target="*g_c3" ][h_bg st="H_oral/c3x.jpg" ]
[h_se st="H/se/sm3-3.png" ][h_tx st="H/tx/sm3-3.png" ][h_ef st="H/ef/sm3-3.png" ]
[h_back tg="*c_cg_2"][h_next tg="*c_cg_3"][s]
*c_cg_3
[cm][call target="*g_c3" ][h_bg st="H_oral/c3.jpg" ]
[h_se st="H/se/sm3-3.png" ][h_tx st="H/tx/sm3-3.png" ][h_ef st="H/ef/sm3-3.png" ]
[h_back tg="*c_cg_2"][h_next tg="*c_cg_4_"][s]
*c_cg_4_
[cm][if exp="sf.xr==1" ][jump target="*c_cg_4_x" ][else][jump target="*c_cg_4" ][endif]
*c_cg_4_x
[cm][call target="*g_c4" ][h_bg st="H_oral/c4x.jpg" ]
[h_se st="H/se/sm3-4.png" ][h_tx st="H/tx/sm3-4.png" ][h_ef st="H/ef/sm3-4.png" ]
[h_back tg="*c_cg_3"][h_next tg="*c_cg_4"][s]
*c_cg_4
[cm][call target="*g_c4" ][h_bg st="H_oral/c4.jpg" ]
[h_se st="H/se/sm3-4.png" ][h_tx st="H/tx/sm3-4.png" ][h_ef st="H/ef/sm3-4.png" ]
[h_back tg="*c_cg_3"][h_next tg="*c_cg_5"][s]

*c_cg_5_return
[cm][black][set_black][call target="*g_c4" ][h_bg st="H_oral/c5.jpg" ]
[h_se st="H/se/sm3-5.png" ][h_tx st="H/tx/sm3-5.png" ][h_ef st="H/ef/sm3-5.png" ][h_x st="00.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
*c_cg_5
[cm][h_bg st="H_oral/c5.jpg" ]
[h_se st="H/se/sm3-5.png" ][h_tx st="H/tx/sm3-5.png" ][h_ef st="H/ef/sm3-5.png" ][h_x st="00.png" ]
[h_back tg="*c_cg_4"][h_next tg="*c_cg_select"][s]
*c_cg_select
[cm][if exp="f.fin_choice==1" ]
[button target="*in3_cg" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*out3_cg" graphic="ch/out-cum.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in3_cg" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out3_cg" ][endif]

*in3_cg
[cm][h_bg st="H_oral/c6.jpg" ]
[h_se st="H/se/sm3-6.png" ][h_tx st="00.png" ][h_ef st="H/ef/sm3-6.png" ][h_x st="H/x/sm3-6.png" ]
[h_back tg="*c_cg_5"][h_next tg="*c_cg_a1"][s]

*in3_cg_return
[cm][black][set_black][call target="*g_c4" ][h_bg st="H_oral/c6.jpg" ]
[h_se st="H/se/sm3-6.png" ][h_tx st="00.png" ][h_ef st="H/ef/sm3-6.png" ][h_x st="H/x/sm3-6.png" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*c_cg_5"][h_next tg="*c_cg_a1"][s]

*c_cg_a1
[cm][black][call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_bg st="H_oral/cx1.jpg" ]
[h_back tg="*in3_cg_return"][h_next tg="*c_cg_a2"][s]

*c_cg_a1
[cm][h_bg st="H_oral/cx1.jpg" ]
[h_back tg="*in3_cg_return"][h_next tg="*c_cg_a2"][s]

*c_cg_a2
[cm][h_bg st="H_oral/cx2.jpg" ]
[h_back tg="*c_cg_a1"][h_next tg="*c_cg_a3"][s]
*c_cg_a3
[cm][h_bg st="H_oral/cx3.jpg" ]
[h_back tg="*c_cg_a2"][h_next tg="*c_cg_a4"][s]
*c_cg_a4
[cm][h_bg st="H_oral/cx4.jpg" ]
[h_back tg="*c_cg_a3"][h_next tg="*c_cg_a5"][s]
*c_cg_a5
[cm][h_bg st="H_oral/cx5.jpg" ]
[h_back tg="*c_cg_a3"][h_next tg="*end_cg"][s]

*out3_cg
[cm][black][h_bg st="H_oral/cx5.jpg" ]
[call target="*after_g" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_mod name="z-a" time="0" storage="H/z1/sma3-z.png" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_back tg="*c_cg_5_return"][h_next tg="*end_cg"][s]

*end_cg
[cm][return_memory]

;;メガネ
*after_g
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sma-c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_a1
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-1c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_a2
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-2c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_a3
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-3c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_a4
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-4c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_a5
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-5c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_a6
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm1-6c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_b1
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-1c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_b2
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-2c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_b3
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-3c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_b4
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-4c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_b5
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-5c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_b6
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm2-6c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_c1
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-1c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_c2
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-2c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_c3
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-3c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]

*g_c4
[if exp="f.glasses==1" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a1.png" ][elsif exp="f.glasses==2" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a2.png" ]
[elsif exp="f.glasses==3" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a3.png" ][elsif exp="f.glasses==4" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a4.png" ]
[elsif exp="f.glasses==5" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a5.png" ][elsif exp="f.glasses==6" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a6.png" ]
[elsif exp="f.glasses==7" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a7.png" ][elsif exp="f.glasses==8" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a8.png" ]
[elsif exp="f.glasses==9" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4a9.png" ][elsif exp="f.glasses==11" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b1.png" ]
[elsif exp="f.glasses==12" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b2.png" ][elsif exp="f.glasses==13" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b3.png" ]
[elsif exp="f.glasses==14" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b4.png" ][elsif exp="f.glasses==15" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b5.png" ]
[elsif exp="f.glasses==16" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b6.png" ][elsif exp="f.glasses==17" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b7.png" ]
[elsif exp="f.glasses==18" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b8.png" ][elsif exp="f.glasses==19" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4b9.png" ]
[elsif exp="f.glasses==21" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c1.png" ][elsif exp="f.glasses==22" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c2.png" ]
[elsif exp="f.glasses==23" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c3.png" ][elsif exp="f.glasses==24" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c4.png" ]
[elsif exp="f.glasses==25" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c5.png" ][elsif exp="f.glasses==26" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c6.png" ]
[elsif exp="f.glasses==27" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c7.png" ][elsif exp="f.glasses==28" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c8.png" ]
[elsif exp="f.glasses==29" ][chara_mod name="glasses" wait="false" time="0" storage="s/glass/O/sm3-4c9.png" ][else][chara_mod name="glasses" wait="false" time="0" storage="00.png" ][endif][return]




