コミュニケート欄に「オリジナルイベント」と入力することでオリジナルでイベントを発生させられます。
ゲーム上でシルヴィに言って欲しいことを言わせたりオリジナルのイベントを流すことのできるおまけです。
イベント内容はdata/scenario/system/original_event.ksをエディタやメモ帳で編集すると変更することができます。
サンプルイベントが記入されているのでとりあえずoriginal_event.ksを見ながらイベントを見てみるといいでしょう。
（original_event.ksはゲーム本編と切り離してあるので、オリジナルイベント中にセーブしたりフラグをいじったりしない限り
　どう編集しようとデータが壊れたりすることはないはずですが、全て自己責任でお願いします。

以下ゲームイベントを編集するのに必要な主なコマンドの説明
（使用しているゲーム制作ツール（ティラノスクリプト）の基本的な機能しか使っていませんので
　ツール公式サイトの使い方を読めばもっと自由にゲームシナリオをいじれます。

-テキスト関連
[l]　クリック待ち
[r]　改行する
[lr]　クリック待ち＆改行
[p]　クリック待ち＆その後テキストをクリア
[p_][lr_]　後ろに"_"をつけるとシルヴィの口パクを止める効果がつきます。
		シルヴィのセリフの後はこっちを使わないとシルヴィの口パクが止まりません。
#　「誰が喋っているか」の表示欄にこの後に入力した名前が表示される。
[name]　プレイヤーの呼び名を表示する。
[name_h]　H中のプレイヤーの呼び名を表示する。（指定されていない場合は普段と同じ呼び方になる
;　";"が頭についている行は一切ゲームが認識しなくなる。メモ用。

音楽関連
[stop_bgm]BGMを止める
[bgm_SG]SilverGlassを流す
[bgm_IF]IvoryFiberを流す
[bgm_MT]MagentaTouchを流す
[bgm_II]IndigoIlluminationを流す
[bgm_AT]AquamarineTemperatureを流す
[bgm_BR]BrilliantRedを流す
[bgm_DS]DeepScarletを流す
[bgm_AS]ApricotSmileを流す
[bgm_OB]OchreBreezeを流す
[bgm_JH]JellyHoneyを流す
[bgm_LS]LimeSwingを流す
[bgm_RG]RustyGainsboroを流す
[bgm_ST]SmoothTurquoiseを流す

背景関連（主に立ち絵表示時用
※シルヴィの立ち絵と同時に背景を表示する場合、後記の[set_xxx]と[show_xxx]の間に挟んで記入します。
[bg_cafe]カフェ背景を表示する
[bg_shop]服屋背景を表示する
[bg_shop_n]服屋背景を表示する
[bg_room]室内背景を表示する
[bg_town]街中背景を表示する
[bg_bed]寝室背景を表示する
[bg_restaurant]レストラン背景を表示する
[bg_doorout]家の外背景を表示する
[bg_market]市場背景を表示する
[bg_door]背景を表示する
[black]立ち絵を消して画面を真っ暗背景を表示する

表情変更
--目の表示--
閉じた目 [e/close]　　にっこり目 [e/smile]
開いた目 [e/def]　　　半目 [e/half]
後ろに"_p"をつけると赤面します。
	[e/close_p][e/smile_p][e/def_p][e/half_p]
後ろに"_h"をつけると赤面+ハート目になります。（食事シーンにはハート目はありません）
	[e/def_h][e/half_h]
頭に"a_"をつけると食事シーン限定で机の上に視線をずらします。
	[e/a_def][e/a_half][e/a_def_p][e/a_half_p]

--口の表示--
閉じた口 [m/def]　　　　　喋ってる口 [m/def_t]
笑っている口 [m/smile]　　笑って喋ってる口 [m/smile_t]
表情はそのままに口だけを喋らせる [f/r]

--まゆの表示--
普通のまゆ[y/def]　　困ったまゆ[y/conf]

シルヴィの表示
[set_sit][show_sit]座っているシルヴィを表示します
[set_stand][show_stand]立ち絵のシルヴィを表示します
[set_dinner][show_dinner]食事のシーンを表示します
[free_chara]立ち絵を消します
※表示されるシルヴィの服はその時着てる服になります。
食事シーンの背景も勝手にその時の時間に合わせます。

※[set_xxx]で暗転して、その間にシルヴィや衣装を表示して[show_xxx]で暗転を消しています。
なので　[set_stand] [y/def][e/def][m/smile][bg_town] [show_stand]
のように[set_xxx]と[show_xxx]の間に表情や背景のコマンドも記入します。

