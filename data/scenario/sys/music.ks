*music
[cm][bg_room][bgm_SG][mod_win st="o/win/music_win.png" ]
[chara_show name="window" time="0" wait="false" left="0" top="0" zindex=180 ]
*menu
[cm]
[button storage="sys/memory.ks" target="*memory" graphic="menu/back.png" x="1080" y="717" ]

[button target="*Silver_Glass" graphic="music_/Silver_Glass.png" x="201" y="235" ]
[button target="*Ivory_Fiber" graphic="music_/Ivory_Fiber.png" x="201" y="294" ]
[button target="*Jelly_Honey" graphic="music_/Jelly_Honey.png" x="201" y="353" ]
[button target="*Apricot_Smile" graphic="music_/Apricot_Smile.png" x="201" y="412" ]
[button target="*Ochre_Breeze" graphic="music_/Ochre_Breeze.png" x="201" y="471" ]
[button target="*Smooth_Turquoise" graphic="music_/Smooth_Turquoise.png" x="201" y="530" ]
[button target="*Aquamarine_Temperature" graphic="music_/Aquamarine_Temperature.png" x="201" y="589" ]

[button target="*Rusty_Gainsboro" graphic="music_/Rusty_Gainsboro.png" x="695" y="235" ]
[button target="*Lime_Swing" graphic="music_/Lime_Swing.png" x="695" y="294" ]
[button target="*Brilliant_Red" graphic="music_/Brilliant_Red.png" x="695" y="353" ]
[button target="*Indigo_Illumination" graphic="music_/Indigo_Illumination.png" x="695" y="412" ]
[button target="*Deep_Scarlet" graphic="music_/Deep_Scarlet.png" x="695" y="471" ]
[button target="*Magenta_Touch" graphic="music_/Magenta_Touch.png" x="695" y="530" ]

[cancelskip][s]
*Silver_Glass
[playbgm loop="true" storage="Silver_Glass.ogg" ][free_layermode time="0" wait="false" ]
[bg_room][jump target="*menu" ]
*Ivory_Fiber
[playbgm loop="true" storage="Ivory_Fiber.ogg" ][free_layermode time="0" wait="false" ]
[bg_door][jump target="*menu" ]
*Ochre_Breeze
[playbgm loop="true" storage="Ochre_Breeze.ogg" ][free_layermode time="0" wait="false" ]
[bg_town][jump target="*menu" ]
*Apricot_Smile
[playbgm loop="true" storage="Apricot_Smile.ogg" ][free_layermode time="0" wait="false" ]
[bg_market][jump target="*menu" ]
*Jelly_Honey
[playbgm loop="true" storage="Jelly_Honey.ogg" ][free_layermode time="0" wait="false" ]
[bg time="1" method="crossfade" storage="bg/db-b.jpg" ][jump target="*menu" ]
*Aquamarine_Temperature
[playbgm loop="true" storage="Aquamarine_Temperature.ogg" ][free_layermode time="0" wait="false" ]
[bg_outside][jump target="*menu" ]
*Smooth_Turquoise
[playbgm loop="true" storage="Smooth_Turquoise.ogg" ][free_layermode time="0" wait="false" ]
[bg_town][jump target="*menu" ]
*Brilliant_Red
[playbgm loop="true" storage="Brilliant_Red.ogg" ][free_layermode time="0" wait="false" ]
[bg_shop][jump target="*menu" ]
*Lime_Swing
[playbgm loop="true" storage="Lime_Swing.ogg" ][free_layermode time="0" wait="false" ]
[bg_cafe][jump target="*menu" ]
*Rusty_Gainsboro
[playbgm loop="true" storage="Rusty_Gainsboro.ogg" ][free_layermode time="0" wait="false" ]
[bg_market][jump target="*menu" ]
*Indigo_Illumination
[playbgm loop="true" storage="Indigo_Illumination.ogg" ][free_layermode time="0" wait="false" ]
[bg_restaurant][jump target="*menu" ]
*Deep_Scarlet
[playbgm loop="true" storage="Deep_Scarlet.ogg" ][free_layermode time="0" wait="false" ]
[bg_shop_n][jump target="*menu" ]
*Magenta_Touch
[playbgm loop="true" storage="Magenta_Touch.ogg" ][free_layermode time="0" wait="false" ]
[bg_bed][jump target="*menu" ]


