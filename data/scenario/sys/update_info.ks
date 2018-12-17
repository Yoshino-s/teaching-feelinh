*top
[cm][free_chara][free_layermode time="0" wait="false" ][chara_config pos_mode="false" anim="false" ]
[nolog][hide_message_w][hide_role][jump target="*v10" ]

*button
[if exp="f.memory==10" ]
[button target="*v10" graphic="update/v10.png" x="20" y="81" ][else]
[button target="*v10" graphic="update/v10-.png" x="20" y="81" ][endif]
[if exp="f.memory==11" ]
[button target="*v11" graphic="update/v11.png" x="20" y="123" ][else]
[button target="*v11" graphic="update/v11-.png" x="20" y="123" ][endif]
[if exp="f.memory==12" ]
[button target="*v12" graphic="update/v12.png" x="20" y="165" ][else]
[button target="*v12" graphic="update/v12-.png" x="20" y="165" ][endif]
[if exp="f.memory==13" ]
[button target="*v13" graphic="update/v13.png" x="20" y="207" ][else]
[button target="*v13" graphic="update/v13-.png" x="20" y="207" ][endif]
[if exp="f.memory==14" ]
[button target="*v14" graphic="update/v14.png" x="20" y="249" ][else]
[button target="*v14" graphic="update/v14-.png" x="20" y="249" ][endif]
[if exp="f.memory==15" ]
[button target="*v15" graphic="update/v15.png" x="20" y="291" ][else]
[button target="*v15" graphic="update/v15-.png" x="20" y="291" ][endif]
[if exp="f.memory==16" ]
[button target="*v16" graphic="update/v16.png" x="20" y="333" ][else]
[button target="*v16" graphic="update/v16-.png" x="20" y="333" ][endif]
[if exp="f.memory==17" ]
[button target="*v17" graphic="update/v17.png" x="20" y="375" ][else]
[button target="*v17" graphic="update/v17-.png" x="20" y="375" ][endif]
[if exp="f.memory==18" ]
[button target="*v18" graphic="update/v18.png" x="20" y="417" ][else]
[button target="*v18" graphic="update/v18-.png" x="20" y="417" ][endif]
[if exp="f.memory==19" ]
[button target="*v19" graphic="update/v19.png" x="20" y="459" ][else]
[button target="*v19" graphic="update/v19-.png" x="20" y="459" ][endif]
[if exp="f.memory==20" ]
[button target="*v20" graphic="update/v20.png" x="20" y="501" ][else]
[button target="*v20" graphic="update/v20-.png" x="20" y="501" ][endif]
[if exp="f.memory==21" ]
[button target="*v21" graphic="update/v21.png" x="20" y="543" ][else]
[button target="*v21" graphic="update/v21-.png" x="20" y="543" ][endif]
[if exp="f.memory==22" ]
[button target="*v22" graphic="update/v22.png" x="20" y="585" ][else]
[button target="*v22" graphic="update/v22-.png" x="20" y="585" ][endif]
[if exp="f.memory==23" ]
[button target="*v23" graphic="update/v23.png" x="20" y="627" ][else]
[button target="*v23" graphic="update/v23-.png" x="20" y="627" ][endif]
;[if exp="f.memory==24" ]
;[button target="*v24" graphic="update/v24.png" x="20" y="669" ][else]
;[button target="*v24" graphic="update/v24-.png" x="20" y="669" ][endif]

[button target="*awake" graphic="how_to/return.png" x="20" y="832" ]
[s]


*v10
[cm][bg time="0" method="crossfade" storage="update/v10.jpg" ]
[eval exp="f.memory=10" ][jump target="*button" ]

*v11
[cm][bg time="0" method="crossfade" storage="update/v11.jpg" ]
[eval exp="f.memory=11" ]
[button target="*v11b" graphic="update/2-1.png" x="1245" y="31" ]
[jump target="*button" ]
*v11b
[cm][bg time="0" method="crossfade" storage="update/v11b.jpg" ]
[button target="*v11" graphic="update/2-2.png" x="1245" y="31" ]
[jump target="*button" ]


*v12
[cm][bg time="0" method="crossfade" storage="update/v12.jpg" ]
[eval exp="f.memory=12" ][jump target="*button" ]
*v13
[cm][bg time="0" method="crossfade" storage="update/v13.jpg" ]
[eval exp="f.memory=13" ]
[button target="*v13b" graphic="update/2-1.png" x="1245" y="31" ]
[jump target="*button" ]
*v13b
[cm][bg time="0" method="crossfade" storage="update/v13b.jpg" ]
[button target="*v13" graphic="update/2-2.png" x="1245" y="31" ]
[jump target="*button" ]


*v14
[cm][bg time="0" method="crossfade" storage="update/v14.jpg" ]
[eval exp="f.memory=14" ][jump target="*button" ]
*v15
[cm][bg time="0" method="crossfade" storage="update/v15.jpg" ]
[eval exp="f.memory=15" ][jump target="*button" ]
*v16
[cm][bg time="0" method="crossfade" storage="update/v16.jpg" ]
[eval exp="f.memory=16" ][jump target="*button" ]
*v17
[cm][bg time="0" method="crossfade" storage="update/v17.jpg" ]
[eval exp="f.memory=17" ]
[button target="*v17b" graphic="update/2-1.png" x="1245" y="31" ]
[jump target="*button" ]
*v17b
[cm][bg time="0" method="crossfade" storage="update/v17b.jpg" ]
[button target="*v17" graphic="update/2-2.png" x="1245" y="31" ]
[jump target="*button" ]

*v18
[cm][bg time="0" method="crossfade" storage="update/v18.jpg" ]
[eval exp="f.memory=18" ]
[button target="*v10b" graphic="update/2-1.png" x="1245" y="31" ]
[jump target="*button" ]
*v18b
[cm][bg time="0" method="crossfade" storage="update/v18b.jpg" ]
[button target="*v18" graphic="update/2-2.png" x="1245" y="31" ]
[jump target="*button" ]

*v19
[cm][bg time="0" method="crossfade" storage="update/v19.jpg" ]
[eval exp="f.memory=19" ]
[button target="*v19b" graphic="update/2-1.png" x="1245" y="31" ]
[jump target="*button" ]
*v19b
[cm][bg time="0" method="crossfade" storage="update/v19b.jpg" ]
[button target="*v19" graphic="update/2-2.png" x="1245" y="31" ]
[jump target="*button" ]

*v20
[cm][bg time="0" method="crossfade" storage="update/v20.jpg" ]
[eval exp="f.memory=20" ]
[button target="*v20b" graphic="update/3-1.png" x="1245" y="31" ]
[jump target="*button" ]
*v20b
[cm][bg time="0" method="crossfade" storage="update/v20b.jpg" ]
[button target="*v20c" graphic="update/3-2.png" x="1245" y="31" ]
[jump target="*button" ]
*v20c
[cm][bg time="0" method="crossfade" storage="update/v20c.jpg" ]
[button target="*v20" graphic="update/3-3.png" x="1245" y="31" ]
[jump target="*button" ]

*v21
[cm][bg time="0" method="crossfade" storage="update/v21.jpg" ]
[button target="*v21b" graphic="update/2-1.png" x="1245" y="31" ]
[eval exp="f.memory=21" ][jump target="*button" ]
*v21b
[cm][bg time="0" method="crossfade" storage="update/v21b.jpg" ]
[button target="*v21" graphic="update/2-2.png" x="1245" y="31" ]
[jump target="*button" ]

*v22
[cm][bg time="0" method="crossfade" storage="update/v22.jpg" ]
[button target="*v22b" graphic="update/2-1.png" x="1245" y="31" ]
[eval exp="f.memory=22" ][jump target="*button" ]
*v22b
[cm][bg time="0" method="crossfade" storage="update/v22b.jpg" ]
[button target="*v22" graphic="update/2-2.png" x="1245" y="31" ]
[jump target="*button" ]

*v23
[cm][bg time="0" method="crossfade" storage="update/v23.jpg" ]
[button target="*v23b" graphic="update/2-1.png" x="1245" y="31" ]
[eval exp="f.memory=23" ][jump target="*button" ]
*v23b
[cm][bg time="0" method="crossfade" storage="update/v23b.jpg" ]
[button target="*v23" graphic="update/2-2.png" x="1245" y="31" ]
[jump target="*button" ]

*v24
[cm][bg time="0" method="crossfade" storage="update/v24.jpg" ]
;[button target="*v24b" graphic="update/2-1.png" x="1245" y="31" ]
[eval exp="f.memory=24" ][jump target="*button" ]

*awake
[cm][endnolog][chara_re][awakegame]
[jump storage="sys/title_screen.ks" target="*title" ]

