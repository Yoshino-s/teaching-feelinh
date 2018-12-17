*hand_h

*re
[cm][random_5][eval exp="f.h_v=f.h_v+1" ]
[if exp="f.r==1" ][jump target="*t1" ][elsif exp="f.r==2" ][jump target="*t2" ]
[elsif exp="f.r==3" ][jump target="*t3" ][elsif exp="f.r==4" ][jump target="*t4" ]
[else][jump target="*t5" ][endif]

*select
[button target="*re" graphic="cont.png" x="" y="" ]
[button target="*stop" graphic="stop.png" x="" y="" ][s]

*stop
[cm]
[if exp="f.v_wait==1" ]
[elsif exp="f.v_wait==2" ]
[elsif exp="f.v_wait==3" ]
[else]
[endif]


*t1
[jump target="*after_touch" ]

*t2
[jump target="*after_touch" ]

*t3
[jump target="*after_touch" ]

*t4
[jump target="*after_touch" ]

*t5
[jump target="*after_touch" ]

*after_touch
[eval exp="f.v_wet=f.v_wet+1" ]
[if exp="f.v_wait==1" ][jump target="*heght_b" ][elsif exp="f.v_wait==2" ][jump target="*heght_c" ]
[elsif exp="f.v_wait==3" ][jump target="*heght_d" ][else][jump target="*heght_a" ][endif]

*heght_a
[if exp="f.v_wet>=5 && f.lust>=200 || f.v_wet>=4 && f.lust>=500 || f.v_wet>=6" ][jump target="*high_" ][endif][jump target="*select" ]
*heght_b
[if exp="f.v_wet>=4 && f.lust>=200 || f.v_wet>=3 && f.lust>=500" ][jump target="*high_" ][endif][jump target="*select" ]
*heght_c
[if exp="f.v_wet>=2" ][jump target="*high_" ][endif][jump target="*select" ]
*heght_d
[if exp="f.v_wet>=2" ][jump target="*high_" ][endif][jump target="*select" ]

*high_
[random_5]
[if exp="f.r==1" ][jump target="*h1" ]
[elsif exp="f.r==2" ][jump target="*h2" ]
[elsif exp="f.r==3" ][jump target="*h3" ]
[elsif exp="f.r==4" ][jump target="*h4" ]
[else][jump target="*h5" ][endif]

*h1
[jump target="*high" ]
*h2
[jump target="*high" ]
*h3
[jump target="*high" ]
*h4
[jump target="*high" ]
*h5
[jump target="*high" ]

*high
[if exp="f.v_wait==0 && f.lust>=50 || f.v_wait==1 && f.lust>=200 || f.v_wait==2 && f.lust>=500 || f.v_wait==3 && f.lust>=1000" ]
[else][jump target="*ex" ][endif]
[button target="*ex" graphic="cont.png" x="" y="" ]
[button target="*no" graphic="stop.png" x="" y="" ][s]

*no
;おねだり
[eval exp="f.v_wait=v_wait+1" ][eval exp="f.lust_act=f.lust_act+2" ]
[if exp="f.v_wait==1" ]
[elsif exp="f.v_wait==2" ]
[elsif exp="f.v_wait==3" ]
[else]
[endif]
[button target="*re" graphic="cont.png" x="" y="" ]
[button target="*stop" graphic="stop.png" x="" y="" ][s]


*ex
[cm]
[if exp="f.v_wait==1" ][jump target="*fin" ]
[elsif exp="f.v_wait==2" ][jump target="*fin" ]
[elsif exp="f.v_wait==3" ][jump target="*fin" ]
[elsif exp="f.v_wait==4" ][jump target="*fin" ]
[else]
[endif]
[eval exp="f.v_ex=1" ][if exp="f.lust<=200" ][jump target="*end_1" ][endif]
[button target="*exex" graphic="cont.png" x="" y="" ]
[button target="*fin" graphic="stop.png" x="" y="" ][s]

*exex
[cm][eval exp="f.v_ex=2" ][if exp="f.lust<=500" ][jump target="*end_2" ][endif]
[button target="*exexex" graphic="cont.png" x="" y="" ]
[button target="*fin" graphic="stop.png" x="" y="" ][s]

*exexex
[cm][eval exp="f.v_ex=3" ][if exp="f.lust<=1000" ][jump target="*end_3" ][endif]
[button target="*exexexex" graphic="cont.png" x="" y="" ]
[button target="*fin" graphic="stop.png" x="" y="" ][s]

*exexexex
[cm][eval exp="f.v_ex=4" ][jump target="*fin" ]


*fin


[if exp="f.v_wait==1" ][eval exp="f.lust=f.lust+2" ]
[elsif exp="f.v_wait==2" ][eval exp="f.lust=f.lust+4" ]
[elsif exp="f.v_wait==3" ][eval exp="f.lust=f.lust+7" ]
[elsif exp="f.v_wait==4" ][eval exp="f.lust=f.lust+10" ]
[elsif exp="f.v_ex==1" ][eval exp="f.lust=f.lust+1" ]
[elsif exp="f.v_ex==2" ][eval exp="f.lust=f.lust+4" ]
[elsif exp="f.v_ex==3" ][eval exp="f.lust=f.lust+7" ]
[elsif exp="f.v_ex==4" ][eval exp="f.lust=f.lust+10" ]
[endif]
