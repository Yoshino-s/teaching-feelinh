;;ボタンジャンプ
*awake
[cm][awakegame]
*show_ex_role
[show_ex_role][return]
*hide_ex_role
[hide_ex_role][return]
*show_bace_role
[show_bace_role][return]
*hide_bace_role
[hide_bace_role][return]

*show_H_role
[show_H_role][return]
*hide_H_role
[hide_H_role][return]
*show_H_config
[show_H_config][return]
*hide_H_config
[hide_H_config][return]

*repeat_room
[show_repeat_role_room][return]
*repeat_out
[show_repeat_role_out][return]
*repeat_nade
[show_repeat_role_nade][return]
*repeat_work
[show_repeat_role_work][return]
*repeat_Hx
[show_repeat_role_Hx][return]

*return_menu
[return_menu]

;;リロード
*reload
[cm][hide_role][show_role][reset_frame][set_win_frame][chara_stop]
[freeimage layer=1 time="0" ]
[chara_mod name="black" wait="false" time="0" storage="00.png" ]
[chara_show name="black" layer=1 time="0" wait="true" left="-10" zindex=500 ]
;[chara_mod name="black" wait="false" time="0" storage="00.png" ]
[eval exp="f.system_act=1" ]
[return_bace]
*save
[showsave][return_menu]
;[jump storage="sys/system.ks" target="*reload" ]

;;記録
*record
[cm][nolog][delay speed=1][eval exp="f.system_act=1" ]
[_]和希露薇開始生活了[emb exp="f.day" ]天
[if exp="f.sex==0 || f.sex=='yet'" ][else]、性交回数[emb exp="f.sex" ]回[endif]
[if exp="f.heavn>=1" ]、希露薇絶頂[emb exp="f.heavn" ]回[endif]

[if exp="f.sex==0 || f.sex=='yet'" ][else][r][endif]
[if exp="f.cum>=1" ]中出了[emb exp="f.cum" ]回[endif]
[if exp="f.kake>=1" ]、外射[emb exp="f.kake" ]回[endif]
[if exp="f.blow>=1" ]、口交[emb exp="f.blow" ]回[endif]
[if exp="f.drink>=1" ]、飲精[emb exp="f.drink" ]回[endif]
[if exp="f.self>=1" ]、希露薇自慰[emb exp="f.self" ]回[endif]
[p][endnolog][return_menu]

;;所持品
*items
[cm][nolog][delay speed=1][eval exp="f.system_act=1" ]
[_]所持品 -
[if exp="f.book!='non'" ] 異国的医学書、桃色的花[emb exp="f.flower" ]個[endif]
[if exp="f.flower_b>=1" ]、藍色花 [emb exp="f.flower_b" ]個[endif]
[if exp="f.book!='non'" ][r]媚薬[emb exp="f.drugx" ]個、精力剤[emb exp="f.drugz" ]個[endif]

[if exp="f.wine_c>=0" ][r][else][endif]
[if exp="f.wine_left>=20" ]未開封的梅酒2瓶
[elsif exp="f.wine_left>=11" ]喝過和未開封梅酒1瓶
[elsif exp="f.wine_left>=10" ]未開封的梅酒1瓶
[elsif exp="f.wine_left>=7" ]喝了一些的梅酒1瓶
[elsif exp="f.wine_left>=4" ]剩下半瓶的梅酒1瓶
[elsif exp="f.wine_left>=3" ]剩下一點的梅酒1瓶
[elsif exp="f.wine_left>=1" ]少量見底的梅酒1瓶[endif]
[r]
[if exp="f.miyage=='non' || f.miyage=='nothing' || f.tea_time==1 || f.tea_time==2 " ][else]
禮物買回來了[miyage][endif]
[p][return_menu]

;;ステータス
*sil_state
[cm][nolog][delay speed=1][eval exp="f.system_act=1" ][limit_status]
[_][if exp="f.step==1" ]希露薇依然覺得你是外人。[r][show_love]
[elsif exp="f.step==2" ]希露薇認為你是她的熟人。[r][show_love]
[elsif exp="f.step==3" ]希露薇開始像個同居人士一樣信賴你。[r][show_love]
[elsif exp="f.step==4" ]希露薇覺得和你在一起的時間很快樂。[r][show_love]
[elsif exp="f.step==5" ]希露薇向你送來明確的好感。[r][show_love]
[elsif exp="f.step>=6 && f.love>=3000 && f.lust>=1500" ]
希露薇和你分離即便一天都會產生恐慌。[r][H_status]
[elsif exp="f.step>=6 && f.love>=2000 && f.lust>=1000" ]
希露薇身邊沒有你她會感到強烈的不安。[r][H_status]
[elsif exp="f.step>=6 && f.love>=1000 && f.lust>=600" ]
希露薇覺得你不在身旁便無法生存下去。[r][H_status]
[elsif exp="f.step>=6 && f.love>=600 && f.lust>=120" ]
希露薇已經不能考慮和你有關以外的事情了。[r][H_status]
[elsif exp="f.step>=6 && (f.sex==0 || f.sex=='yet')" ]
希露薇從心底裏掛念著你。[r][show_love]
[elsif exp="f.step==6" ]
希露薇從心底裏掛念著你。[r][H_status]
[endif]
[p][return_menu]

*dress_up
[cm][jump storage="sys/dress.ks" target="*change_dress" ]


;;調合
*medi
[cm][nolog][delay speed=1]
[if exp="f.flower>=1" ]
所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"]
[button target="*medi_z" graphic="menu/dr_z.png" x="645" y="140" hint="色情指令射精上限消失" ]
[button target="*medi_x" graphic="menu/dr_x.png" x="645" y="225" hint="色情指令希露薇絶頂上限消失" ]
[button target="*return_menu" graphic="menu/dr_quit.png" x="645" y="310" ][cancelskip][s]
[else]
[_]（材料不足。[p][return_menu][endif]
*medi_x
[cm]所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"]
[button target="*one_x" graphic="menu/dr_one.png" x="645" y="110" ]
[if exp="f.flower>=5" ]
[button target="*five_x" graphic="menu/dr_five.png" x="645" y="185" ][endif]
[button target="*all_x" graphic="menu/dr_all.png" x="645" y="260" ]
[button target="*return_menu" graphic="menu/dr_quit.png" x="645" y="335" ][cancelskip][s]
*medi_z
[cm]所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"]
[button target="*one_z" graphic="menu/dr_one.png" x="645" y="110" ]
[if exp="f.flower>=5" ]
[button target="*five_z" graphic="menu/dr_five.png" x="645" y="185" ][endif]
[button target="*all_z" graphic="menu/dr_all.png" x="645" y="260" ]
[button target="*return_menu" graphic="menu/dr_quit.png" x="645" y="335" ][cancelskip][s]

*one_z
[cm][eval exp="f.flower=f.flower-1" ][eval exp="f.drugz=f.drugz+1" ]
作成了1支精力剤。[r]
所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"][p]
[return_menu]
*five_z
[cm][eval exp="f.flower=f.flower-5" ][eval exp="f.drugz=f.drugz+5" ]
作成了5支精力剤。[r]
所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"][p]
[return_menu]
*all_z
[cm][eval exp="f.drugz=f.flower+f.drugz" ][eval exp="f.flower=0" ]
用所有桃紅色的花來製作精力剤。[r]
所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"][p]
[return_menu]

*one_x
[cm][eval exp="f.flower=f.flower-1" ][eval exp="f.drugx=f.drugx+1" ]
作成了1支媚薬[r]
所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"][p]
[return_menu]
*five_x
[cm][eval exp="f.flower=f.flower-5" ][eval exp="f.drugx=f.drugx+5" ]
作成了5支媚薬。[r]
所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"][p]
[return_menu]
*all_x
[cm][eval exp="f.drugx=f.flower+f.drugx" ][eval exp="f.flower=0" ]
用所有桃紅色的花來製作媚薬。[r]
所持数-桃紅色的花（[emb exp="f.flower"]、媚薬（[emb exp="f.drugx"]、精力剤（[emb exp="f.drugz"][p]
[return_menu]
;;ゲームオーバー
*game_over
[stopbgm][black]
@clearfix name="role_button"
…[p_]
[button name="role_button" role="load" graphic="ch/load.png" x=0 y=200]
[button name="role_button" role="title" graphic="ch/title.png" x=0 y=350][s]
[jump storage="first.ks" ]



