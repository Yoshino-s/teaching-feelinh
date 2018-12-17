*touch
[cm][black]
[if exp="f.rape==0" ][jump storage="H/H0.ks" target="*touch0" ]
[elsif exp="f.rape==0.1" ][jump storage="H/H0.ks" target="*touch1" ][endif]

[set_mise][chara_part name="h_job" body="Hf/body/body0.png" allow_storage=true ]
[chara_part name="h_job" eyes="face/s0-d.png" allow_storage=true ][show_mise]

[_]（希露薇沒有說任何話掀起了的衣服她。[p]
[syl]…[p]
[chara_part name="h_job" h="o/hand/s0-a.png" allow_storage=true ]
[_]（我伸出手輕輕撫摸起私處。[p]
[jump storage="H/H0.ks" target="*touch2" ]

*touch0
;[black]
[bg time="0" method="crossfade" storage="H_rape/s00.jpg" ]
[_]（摸了一下希露薇的胸部[lr]
…只是有一點點膨脹、並沒有太多的肉感。[p]
[syl]…？[p]
[_]（雖然稍微扭動了一下身體但是馬上安靜了下來[p]
[eval exp="f.act=f.act+1" ]
[eval exp="f.rape=0.1" ]
[jump storage="sys/talk_lead.ks" target="*after_touch" ]

*touch1
[cm][set_mise][chara_part name="h_job" body="Hf/body/body0.png" allow_storage=true ]
[chara_part name="h_job" eyes="face/s0-d.png" allow_storage=true ][show_mise]

[eval exp="f.trust=f.trust-1" ]
[eval exp="f.rape=0.5" ]

[_]（讓希露薇把自己的衣服掀起她沒有說任何話的服從了。[lr]
好像沒有穿過內衣、粗魯的暴露出恥丘。[p]
[syl]…[p]

[chara_part name="h_job" h="o/hand/s0-a.png" allow_storage=true ]
[_]（我把手伸向觸摸了還未長出陰毛的陰部。[p]
[chara_part name="h_job" eyes="face/s0-a.png" allow_storage=true ]
[syl]做、做什麼…？[p]
[button storage="H/H0.ks" target="*touch2" graphic="ch/continue.png" x="0" y="200" ]
[button storage="H/H0.ks" target="*stop1" graphic="ch/stop.png" x="0" y="350" ]
[cancelskip][s]

*touch2
[cm]
[chara_part name="h_job" h="o/hand/s0-b.png" allow_storage=true ]
[_]（我開始輕柔地愛撫起小豆和裂縫[p]
[syl][chara_part name="h_job" eyes="face/s0-b.png" allow_storage=true ]
嗯…[p]
[button storage="H/H0.ks" target="*touch3" graphic="ch/continue.png" x="0" y="200" ]
[button storage="H/H0.ks" target="*stop1" graphic="ch/stop.png" x="0" y="350" ]
[cancelskip][s]

*touch3
[cm]
[chara_part name="h_job" h="o/hand/s0-b.png" allow_storage=true ]
[_]（慢慢的愛撫讓秘部開始慢慢濕潤了起來。[lr]
似乎有過經驗。[p]
[chara_part name="h_job" eyes="face/s0-c.png" allow_storage=true ]
[syl]唉…？[lr]沒有、以前的主人…沒有做過這種事情…。[p]
[button storage="H/H0.ks" target="*touch4" graphic="ch/continue.png" x="0" y="200" ]
[button storage="H/H0.ks" target="*stop2" graphic="ch/stop.png" x="0" y="350" ]
[cancelskip][s]

*touch4
[cm]
[_][chara_part name="h_job" eyes="face/s0-e.png" allow_storage=true ]
[chara_part name="h_job" h="o/hand/s0-c.png" allow_storage=true ]

[syl]怎麼…變得奇怪了[p]
[_]（對方似乎已經開始有了快感。[lr]大腿的內側開始沾上蜜汁。[p]
[chara_part name="h_job" h="o/hand/s0-d.png" allow_storage=true ]
（…已經準備好了吧[p]

[button storage="H/rape.ks" target="*rape" graphic="ch/H_x.png" x="0" y="200" ]
[button storage="H/H0.ks" target="*stop2" graphic="ch/remind.png" x="0" y="350" ]
[cancelskip][s]

*stop1
[cm][chara_part name="h_job" h="00.png" allow_storage=true ]
[_]（我把手拿開了希露薇的身體。[p]
[chara_part name="h_job" eyes="face/s0-c.png" allow_storage=true ]
[syl]…結束了嗎？[p]
[chara_part name="h_job" eyes="face/s0-f.png" allow_storage=true ]
呼…[p]
[jump storage="sys/talk_lead.ks" target="*after_touch" ]

*stop2
[cm]
[chara_part name="h_job" h="o/hand/s0-d.png" allow_storage=true ]
[_]（我把手拿開了希露薇的身體。[p]
[chara_part name="h_job" eyes="face/s0-c.png" allow_storage=true ]
[chara_part name="h_job" h="o/hand/s0-1.png" allow_storage=true ]
[syl]…結束了嗎？[p]
[chara_part name="h_job" eyes="face/s0-f.png" allow_storage=true ]
呼…[p]
[jump storage="sys/talk_lead.ks" target="*after_touch" ]



