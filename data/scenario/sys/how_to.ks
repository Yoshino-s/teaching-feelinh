;;ボタン
*top
[cm][free_chara][free_layermode time="0" wait="false" ][chara_config pos_mode="false" anim="false" ]
[nolog][hide_message_w][hide_role][jump target="*bace" ]

*button
[if exp="f.memory=='hw_bace'" ]
[button target="*bace" graphic="how_to/bace.png" x="10" y="71" ][else]
[button target="*bace" graphic="how_to/bace-.png" x="10" y="71" ][endif]
[if exp="f.memory=='hw_act_win'" ]
[button target="*act_win" graphic="how_to/act_win.png" x="10" y="180" ][else]
[button target="*act_win" graphic="how_to/act_win-.png" x="10" y="180" ][endif]
[if exp="f.memory=='hw_sub_win'" ]
[button target="*sub_win" graphic="how_to/sub_win.png" x="10" y="235" ][else]
[button target="*sub_win" graphic="how_to/sub_win-.png" x="10" y="235" ][endif]
[if exp="f.memory=='hw_communicate'" ]
[button target="*communicate" graphic="how_to/communicate.png" x="10" y="290" ][else]
[button target="*communicate" graphic="how_to/communicate-.png" x="10" y="290" ][endif]
[if exp="f.memory=='hw_dress_up'" ]
[button target="*dress_up" graphic="how_to/dress_up.png" x="10" y="345" ][else]
[button target="*dress_up" graphic="how_to/dress_up-.png" x="10" y="345" ][endif]
[if exp="f.memory=='hw_out'" ]
[button target="*out" graphic="how_to/out.png" x="10" y="400" ][else]
[button target="*out" graphic="how_to/out-.png" x="10" y="400" ][endif]
[if exp="f.memory=='hw_status'" ]
[button target="*status" graphic="how_to/status.png" x="10" y="455" ][else]
[button target="*status" graphic="how_to/status-.png" x="10" y="455" ][endif]
[if exp="f.memory=='hw_bed'" ]
[button target="*bed" graphic="how_to/bed.png" x="10" y="510" ][else]
[button target="*bed" graphic="how_to/bed-.png" x="10" y="510" ][endif]


[if exp="f.memory=='hw_qa'" ]
[button target="*qa" graphic="how_to/qa.png" x="10" y="615" ][else]
[button target="*qa" graphic="how_to/qa-.png" x="10" y="615" ][endif]
[if exp="f.memory=='hw_trivia'" ]
[button target="*trivia" graphic="how_to/trivia.png" x="10" y="671" ][else]
[button target="*trivia" graphic="how_to/trivia-.png" x="10" y="671" ][endif]

[if exp="f.memory=='hw_credit'" ]
[button target="*credit" graphic="how_to/credit.png" x="10" y="754" ][else]
[button target="*credit" graphic="how_to/credit-.png" x="10" y="754" ][endif]

[button target="*awake" graphic="how_to/return.png" x="10" y="832" ]
[s]


;;ページ表示
;基本操作
*bace
[cm][bg time="0" method="crossfade" storage="how_to_/bace.jpg" ]
[eval exp="f.memory='hw_bace'" ][jump target="*button" ]

;行動ウィンドウ
*act_win
[cm][bg time="0" method="crossfade" storage="how_to_/act_win.jpg" ]
[eval exp="f.memory='hw_act_win'" ][jump target="*button" ]

;コミュニケート
*communicate
[cm][bg time="0" method="crossfade" storage="how_to_/communicate.jpg" ]
[eval exp="f.memory='hw_communicate'" ][jump target="*button" ]

;サブウィンドウ
*sub_win
[cm][bg time="0" method="crossfade" storage="how_to_/sub_win.jpg" ]
[eval exp="f.memory='hw_sub_win'" ][jump target="*button" ]

;着替え画面
*dress_up
[cm][bg time="0" method="crossfade" storage="how_to_/dress_up.jpg" ]
[eval exp="f.memory='hw_dress_up'" ][jump target="*button" ]

;外出
*out
[cm][bg time="0" method="crossfade" storage="how_to_/out.jpg" ]
[eval exp="f.memory='hw_out'" ][jump target="*button" ]

;ベッド
*status
[cm][bg time="0" method="crossfade" storage="how_to_/status.jpg" ]
[eval exp="f.memory='hw_status'" ][jump target="*button" ]

;ベッド
*bed
[cm][bg time="0" method="crossfade" storage="how_to_/bed.jpg" ]
[eval exp="f.memory='hw_bed'" ][jump target="*button" ]

;イベントH
;*memory
;[cm][bg time="0" method="crossfade" storage="how_to_/memory.jpg" ]
;[eval exp="f.memory='hw_memory'" ]
;[button target="*memory2" graphic="update/2-1.png" x="1245" y="31" ]
;[jump target="*button" ]


;*memory2
;[cm][bg time="0" method="crossfade" storage="how_to_/memory_2.jpg" ]
;[eval exp="f.memory='hw_memory'" ]
;[button target="*memory" graphic="update/2-2.png" x="1245" y="31" ]
;[jump target="*button" ]


;Q&A
*qa
[cm][bg time="0" method="crossfade" storage="how_to_/qa.jpg" ]
[eval exp="f.memory='hw_qa'" ][jump target="*button" ]

;小ネタ
*trivia
[cm][bg time="0" method="crossfade" storage="how_to_/trivia.jpg" ]
[eval exp="f.memory='hw_trivia'" ][jump target="*button" ]

;クレジット
*credit
[cm][eval exp="f.memory='hw_credit'" ]
[bg time="0" method="crossfade" storage="how_to_/credit.jpg" ]
[jump target="*button" ]


*awake
[cm][endnolog][chara_re][awakegame]
[jump storage="sys/title_screen.ks" target="*title" ]

