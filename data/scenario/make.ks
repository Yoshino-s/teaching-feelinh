;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;return 必須

[call storage="pre/chara_define.ks"]
[call storage="pre/macro.ks" ]
[call storage="pre/face.ks" ]
[call storage="pre/set_show.ks" ]
[call storage="pre/exp.ks" target="*update" ]
[breakgame]

;[chara_config ptext="chara_name_area" pos_mode=false time="600" memory="true" anim="true" effect="" ]

[return]

