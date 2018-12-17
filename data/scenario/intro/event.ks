;;夕食初回-----------------------------------------------------------
*feed
[eval exp="f.r='a'" ][set_dinner][_]…。[p_]
（天黑了。[r]
來吃飯吧…。[p_]
（我把希露薇帶到了桌飯前。[p_]
[bgm_IF][f/r_nt][show_dinner]…。[p_]
[syl][f/r]吃飯？我還沒有哭就能給我吃的東西了嗎？[p_]
[f/cl]沒想到主人你這麼仁慈。[lr_]
[f/r]非常感謝你。[p_]

[_]（那我要給希露薇準備什麽食物好呢？[p_]
[button target="*human" graphic="ch/food2.png" x="0" y="200" ]
[button target="*pet" graphic="ch/food1.png" x="0" y="350" ]
[cancelskip][s]

*pet
[cm][set_black][f/a_r_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/food-a.png" allow_storage=true ]
[_]（不需要增加無意義的花費。[lr_]
喂麵包和水就夠了。[p_][hide_black]
[syl][f/cl]謝謝。[p_][black]
[_]（希露薇靜靜的吃完了這些飼料…。[p_]
[eval exp="f.intro_flag='pet'" ][jump target="*her_room" ]

*human
[cm][eval exp="f.love=f.love+3" ][eval exp="f.trust=f.trust+1" ][eval exp="f.intro_flag='human'" ]
[set_black][f/a_r_nt]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/d-carbonara.png" allow_storage=true ]
[_]（從今天開始就做兩個人的飯吧。[lr_]
做兩個人的飯和做一個人的飯也沒差別。[p_][hide_black]

[syl][f/r]今晚有客人要來嗎？[lr_]
[f/re]那我要不要躲起來…。[p_]
[_]（希露薇認為這些食物不是給她準備的。[p_]
[syl][f/a_cr…這、是給我準備的嗎？[p_]
[f/re]以前的主人一直是給我發霉的麺包和水的…。[p_]
[f/re]我真的、可以吃這些嗎？[p_]
…。[lr_]
[f/re]…沒。那、那謝謝了。[p_]
[y/def][eating][chara_part name="dinner" food="o/food/d-carbonara_.png" allow_storage=true ]
[_]（希露薇提心吊膽地向叉子伸出手、用生硬的動作開始吃飯。[lr]
表情也很僵硬不像在享受吃飯一樣。[p]
[set_black][set_dinner_dress]
[chara_part name="dinner" arm="s/body/din_a1.png" arm_b="s/body/din_a2.png"  allow_storage=true ]
[chara_part name="dinner" food="00.png" allow_storage=true wait=true ]
…。[f/cl][p_][hide_black]
[syl][f/re]…謝謝款待。[p_]
[f/a_cr_nt]
[_]（希露薇吃飽後困惑的看著我。[p_]
[syl][f/cr]那個…主人…。[lr_]
[f/re]…這麼好吃的飯菜我還是第一次吃到。[p_]
[f/re]而且我也是第一次吃飽了…。[lr_]
[f/clc]…非常的…感謝你。[p_]
[_]（她看起來不像是在說謊、但我看出來她是在擔心有什麼事情會發生。[lr_]
她應該是為從未體驗過的事情在困擾。[p_]

;;寝床案内-----------------------------------------------------------
*her_room
[set_stand][f/r_nt]（到晚上了。準備睡覺吧…。[p_][bg_room][show_stand]

[syl][f/r]主人。[r]
我睡哪裡好呢？[p_]
[_]（她的床…。[lr_]
家裡剛好有一間空房間。[p_]
	[set_stand][bg_bed][f/r][show_stand]
[syl][f/r]你要給我用這個房間嗎？[lr_]
[f/cr]這個、睡床上？讓我睡床真的沒問題嗎？。[p_]
[_]（我家雖然有診療室、不過這個房間和床是給急診患者準備的。平時用不到。[p_]
[syl][f/cl_nt]…。[p_]
[f/r]…那麼、我就榮幸地使用了。[p_]

[if exp="f.intro_flag=='pet' || f.rape>=1" ]
	[f/r]晚安、主人。[p_]
	[stop_bgm][black]…。[p_][jump storage="intro/step1.ks" target="*show_bace" ]
[elsif exp="f.intro_flag=='human'" ]
	[f/cr]…那主人、主人。[p_]
	[f/re]你接下來…。是打算對我做什麽？[lr_]
	[f/re]難道說、你要對我做非常痛苦、可怕的事情嗎？[p_][endif]

[_]（她覺得我在隱瞞她什麽事情、對這個家也感到恐懼。[p_]
[button target="*ll_not" graphic="ch/noidont.png" x="0" y="200" ]
[button target="*silent" graphic="ch/silent-r.png" x="0" y="350" ]
[cancelskip][s]

*ll_not
[cm][eval exp="f.trust=f.trust+1" ]
[syl][f/re]真的嗎？[p_]
[f/re]只要能讓主人你高興的話我就算是痛苦也沒關係的。[lr_]
[f/re]以前的主人非常喜歡聽到我哭叫的聲音、每次聽到都非常興奮…。[p_]
[f/re]如果可以的話、其他的家務也會。[lr_]
[f/clc]食物什麽的隨便喂我一些不要的東西就好了。[p_]
[f/re]所以請手下留情。[p_]
[_]（她看起來完全不信任我。[p_]
[syl][f/cr]啊…。[lr_]非常…非常對不起。[p_]
[f/clc]那個…晚安主人…。[p_]
[black]…。[p_][stop_bgm][return_bace]

*silent
[cm][_]（無視她離開房間。[p_]
[syl][f/re]啊…。[p_][black]…。[p_][stop_bgm][return_bace]

;;家事申し出/step2へ---------------------------------------------------------
*to_next
[stop_bgm][set_stand]…。[p_][f/r_nt][bg_room][bgm_IF][show_stand]
[syl][f/re]那個、主人。[lr_]
[f/re]有什麽家務需要我做嗎？[p_]
[_]（今晚準備睡覺前希露薇戰戰兢兢地問我。[p_]
[syl][f/cr]既然來到主人家裡就希望主人能隨意使用我這個奴隸…。[p_]
[_]（她似乎是害怕我改變主意丟棄她而在感到不安。[p_]

[button target="*job" graphic="ch/job.png" x="0" y="200" ]
[button target="*ignore" graphic="ch/ignore.png" x="0" y="350" ]
[cancelskip][s]

*job
[cm][eval exp="f.trust=f.trust+1" ]
	[syl][f/cl]我明白了。[lr_]
	[f/r]掃除和洗碗是嗎。[p_]
	[f/re]我會努力的。[p_]
	[stop_bgm][jump storage="intro/step2.ks" target="*step2" ]
*ignore
[cm][syl]
	[f/cr]啊…對不起。[lr_]
	[f/clc]沒什麽事。[p_]
	[stop_bgm][jump storage="intro/step2.ks" target="*step2" ]

;;between2-3死亡エンド-----------------------------------------------------------
*dead_end
[cm][bgm_IF][bg_room][_]（到了早上、希露薇還沒從她的房間出來。[lr_]
[black]
我去房間裡看、她的樣子似乎非常痛苦。[p_]
（我手放在額頭上感到了非常高的溫度。[lr_]
雖然她本人沒有表露出來。但回想起來昨晚她的表情就很憔悴了。[p_]
（食物無法下吞咽。[lr_]
喂她吃藥又給吐了出來。[p_]
（…數天後她靜靜的離開了我。[lr_]
就好像從來沒來過一樣。[p_]
…。[p_][stop_bgm]
[jump storage="sys/system.ks" target="*game_over" ]

;;初外出/step3へ---------------------------------------------------------
*to_step3
[if exp="f.rape>=1 || f.intro_flag=='pet'" ][jump target="*dead_end" ][endif]
[set_stand][stop_bgm][bg_room][f/nt][show_stand][eval exp="f.act=0" ]
…。[p_][bgm_IF]
[eval exp="f.step=3" ][eval exp="f.act=2" ][eval exp="f.nade=1" ]
[eval exp="f.talk=1" ][eval exp="f.out=1" ][eval exp="f.day=f.day+1" ]

[_]（早上、她從房間里出來後一直看著窗外。[p_]
[syl][f/]早上好。[lr_]
[f/re]你今天不用工作嗎。[p_]
[f/re]現在要出去買東西嗎。[lr_]
[f/re]好、你路上小心了。[p_]

[_]（…想起來她來家裡還沒帶她出去過呢。[p_]
[button target="*together" graphic="ch/together.png" x="0" y="200" ]
[button target="*alone" graphic="ch/alone.png" x="0" y="350" ]
[cancelskip][s]

*alone
[cm][syl][f/re]那、路上小心。[lr_]
[f/re]我會負責打掃衛生的。[p_]
[eval exp="f.intro_flag='alone'" ][eval exp="f.trust=f.trust-3" ]

[black][_]（一個人去買了一些生活必需品回來…。[p_]
[stop_bgm][_][bgm_SG][return_bace]

*together
[cm][eval exp="f.trust=f.trust+1" ]

[syl]…。[lr_]
[f/]那個、要帶上我嗎？[p_]
[f/cl_nt]…。[p_]
[f/]沒問題。[lr_]
[f/re]我提不起太重的東西但我會儘量幫忙的…。[p_]

[set_stand][stop_bgm][bg_town]…。[p_][f/nt][show_stand][bgm_OB]

[_]…。[p_]
（希露薇靜靜的跟著我過來。[p_]
（看起來無神的眼睛卻在左右移動、似乎在思考什麽。[lr_]
看來她沒來過街區。[p_]

[button target="*cafe_first" graphic="ch/road_l.png" x="0" y="200" ]
[button target="*shop_first" graphic="ch/road_s.png" x="0" y="350" ]
[cancelskip][s]

;;初喫茶---------------------------------------------------------
*cafe_first
[cm]
	（在平常經過的路道的商店的時候。[p_]
[eval exp="f.out=1" ][eval exp="f.act=f.act+1" ]
[set_stand][stop_bgm][bg_town]…。[p_][f/nt][show_stand][bgm_OB]
	[syl]…。[p_]
	[_]（半路上希露薇突然停頓了一下。[p_]
	[syl][f/cl]啊、對不起、什麽事都沒有。[p_]
	[_]（我聞到一股香味。[lr_]
	她應該是被咖啡店的味道吸引了。[p_]
	（稍微早一點吃午飯吧。[p_]
	[syl][f/]…中午、就在這裡嗎？[p_]
[black][bg_cafe][bgm_JH]…。[p_]
[chara_mod name="hand_L" time="1" storage="00.png" ]
[chara_mod name="sub" time="500" storage="o/sub/nephy.png" ]
[chara_show name="sub" time="100" wait="true" ]
[eval exp="f.cafe=1" ]

#奇妙的女店員
歡迎光臨？[p_]
[_]（進入店內一個奇妙的女店員以滑稽的動作走了過來。[p_]

#奇妙的女店員
兩個人嗎？[p_]
請向這邊來？[p_]
[_]（我們在靠窗戶的座位坐了下來。[p_]

[black][eval exp="f.r='b'" ][set_dinner][f/nt]…。[p_][show_dinner]
…。[p_]
（我給自己點了一份三明治。[p_]
而希露薇看着周圍、[r]最後眼睛停止在了旁邊一客人的千層餅上。[p_]
（我給希露薇點的餐是…。[p_]
[button target="*pancake" graphic="ch/pancake.png" x="0" y="200" ]
[button target="*sand" graphic="ch/sand.png" x="0" y="350" ]
[cancelskip][s]

*sand
[cm][_]（希露薇就和我吃一樣的東西吧。[lr_]
我點了兩份的三明治。[p_]
[set_black]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-sand.png" allow_storage=true ]
…。[p][hide_black]（不久后點的菜已經來到了桌子上。[p_]

[syl][f/a]這是給我的嗎？[lr_]
[f/cl]謝謝你。我吃了。[p_]
[_]（我們把三明治吃完就從店裡出來了。[lr_]
再買一些東西就回去吧。[p_]
[black][stop_bgm]…。[p_]
[_][bgm_SG][return_bace]

*pancake
[cm][eval exp="f.trust=f.trust+1" ]
[eval exp="f.love=f.love+5" ][eval exp="f.f_pancake=1" ]
[_]希露薇似乎對千層餅有興趣。[lr]
給她點了同樣的東西。[p_]
[set_black]
[chara_mod name="window" time="0" wait="false" storage="00.png" ]
[chara_part name="dinner" food="o/food/f-pancake.png" allow_storage=true ]
…。[p][hide_black]（過一下我們點的東西送上餐桌了。[p_]
	[syl][f/a]啊、這是要給我吃的嗎？[lr_]
	[f/c]…哎？好。我開動了。[p_]
	[f/]我真的…可以吃嗎？[p_]
	[syl][f/a]那、我開動了…。[p_]
[eating][chara_part name="dinner" food="o/food/f-pancake_.png" allow_storage=true time=200 wait=true ]
	…。[p]
	[f/a]…嗯、好柔軟。[lr_]
	[f/a_s]…很甜。[p_]
[_]（平時非常小心翼翼躡手躡腳的希露薇、[r]
現在開始大口的吃千層餅。[p_]
（看樣子她非常喜歡甜食。[p_]
[set_black][set_dinner_dress]
[chara_part name="dinner" arm="s/body/din_a1.png" arm_b="s/body/din_a2.png"  allow_storage=true ]
[chara_part name="dinner" food="00.png" allow_storage=true wait=true ]
[f/cl_nt]…。[p_][hide_black]
	[syl][f/re]嗯、我飽了。[p_]
	[f/]真是非常可口。[lr_][f/s]…非常甜。[p_]
	[f/re]…非常感謝你。[p_]
[_]（第一次從希露薇看到微笑。[p_]
[syl][f/cl_nt]…[p]
（也許是她本人注意到了這一點、她開始強自鎮定。[p_]
（最後自己的午飯也吃完了。[lr_]
再買一些東西就回家吧。[p_]
[_][stop_bgm][black]…。[p_]
[bgm_SG][return_bace]


;;初服屋---------------------------------------------------------
*shop_first
[cm][black][chara_anim][eval exp="f.shop=1" ][_]
（從城中走入了平常不走的小路。[p_]
（…我們看到了一家奇怪的詭異店鋪。[lr_]
從外面看去我不能確認這是間賣什麼的的商店。[lr_]
進去看一下吧。[p_]
[bgm_BR][chara_mod name="other" time="100" storage="s/body/stand-.png" ]
[bg_shop][chara_show name="other" time="100" wait="true" width="304" height="900" ]
…。[p_]
（看樣子是個經營女裝和其它女性用品的商店。[lr_]
店裏有非常多花樣的服裝和裝飾品。[p_]

[chara_mod name="sub" time="100" storage="o/sub/Aurelia_a.png" ]
[chara_show name="sub" time="100" wait="true" ]

[aurel]
歡迎光臨。[p_]
[_]（在店裡徘徊的時候突然有个奇怪的女子走了過來。[p_]
[aurel]
哎呦呦、你是帶這個小姑娘來買衣服的嗎？[lr_]
是這樣的吧？是這樣的[r]不是的、不是那樣的。[p_]
因為…我就直說吧。[r]這個小姑娘的穿著實在不怎麼樣。[p_]
你等我一下。[r]我来給她挑選一套合適的衣服。[p_]
來來、過來這邊。[p_]
[chara_mod name="other" time="100" storage="s/body/stand-t-.png" ]

[syl]嗯？啊？[p_]
[_]（沒等我開口那店員就把希露薇帶進了試衣間。[p_]

[chara_stop][black]…。[p_][bg_shop]
[chara_mod name="sub" time="100" storage="o/sub/Aurelia_a.png" ]
[chara_mod name="other" time="100" storage="s/body/stand-cl.png" ]
[chara_show name="other" time="200" wait="true" left="750" ]
[chara_show name="sub" time="100" wait="true" left="-180" ]

[aurel]
久等了。[p_]
客人你覺得漂亮嗎？[lr_]是不是認不出來了？[p_]
[_]（希露薇穿上了像樣的衣服。[lr_]
這讓她覺得有些不習慣。[p_]
[aurel]
這麼年輕可愛的小姑娘卻穿的像奴隸一樣真的太過分了。[lr_]
你應該也覺得現在這樣打扮她比較合適吧？[p_]
覺得合適就買下來。[p_]
[_]（要怎麼辦呢？[l]
[button target="*buy" graphic="ch/buy.png" x="0" y="200" ]
[button target="*not_buy" graphic="ch/not-buy.png" x="0" y="350" ]
[cancelskip][s]

*not_buy
[cm][aurel]啊啊、這樣太可惜了吧…。[lr_]
而且、已經穿了就沒辦法退了。[p_]
隨時等候你的到來。[p_][eval exp="f.out=1" ]
[_][stop_bgm][black]…。[p_][bgm_SG][return_bace]


*buy
[cm][eval exp="f.Dc_b=['got',1]" ][eval exp="f.Dr_a=['got',1]" ]
[eval exp="f.Dp_a=['got',1]" ][eval exp="f.Ds_a=['got',1]" ]

[eval exp="f.dress=11" ][eval exp="f.socks=1" ]
[eval exp="f.front_hair=1" ][eval exp="f.pin=1" ]
[eval exp="f.hair_style=1" ][eval exp="f.hair_band=11" ]
[eval exp="f.under_p=1" ][eval exp="f.under_b=1" ]
[eval exp="f.trust=f.trust+1" ][eval exp="f.love=f.love+3" ]
[eval exp="f.first_wear=1" ][eval exp="f.out=1" ]

[aurel]那個是顧客。我認為是很明智的判斷哦。[lr_]
人的儀容會影響一個人的品格。[p_]
這位美麗的小姐也是非常適合客人你的呢。[p_]
[_]（途中強行購買了一套希露薇的新衣服。[p_]
[set_stand][f/][bgm_OB]…。[p_]
[bg_town][show_stand]

[syl][f/c]…那個、主人。[p_]
[f/re]給我買這樣的衣服、太可惜了…。[lr_]
[f/re]現在馬上去退貨的話會好一點…。[p_]
[button target="*cute" graphic="ch/cute.png" x="0" y="200" ]
[button target="*bought" graphic="ch/bought.png" x="0" y="350" ]
[cancelskip][s]

*bought
[cm][f/re]主人、這樣真的可以嗎？[p_]
[f/clc]…那麼、我就心懷感激的穿上了。[p_]
[_][stop_bgm][black]…。[p_][bgm_SG][return_bace]

*cute
[cm][eval exp="f.trust=f.trust+1" ][eval exp="f.love=f.love+5" ]
[f/p]誒、那個…。[lr_]
[f/re]…謝謝你。[p_]
[f/c]可是、我…明明是奴隸…。這樣…。[lr_]
[f/clc]…不、什麽都沒有。[p_]
[_][stop_bgm][black]…。[p_][bgm_SG][return_bace]


*shop_second
[cm][black][chara_anim][bgm_BR][bg_shop]
[chara_mod name="sub" time="100" storage="o/sub/Aurelia_a.png" ]
[chara_show name="sub" time="100" wait="true" ][chara_stop]

[aurel]
啊歡迎觀臨。[r]你改變主意了嗎？[p_]
前幾天的衣服還留著哦。[p_]
[_]（怎麼辦呢？[l]
[button target="*buy" graphic="ch/buy.png" x="0" y="200" ]
[button target="*not_buy" graphic="ch/not-buy.png" x="0" y="350" ]
[cancelskip][s]

;;風邪/step4へ---------------------------------------------------------
*to_step4
[bgm_IF][set_stand][f/clcp_nt]…。[p_][bg_room][show_stand]
[syl][f/re]早上好…咳咳。[p_]
[_]（早上、從房間里出來的希露薇臉色很不好。[lr_]
好像身體不舒服。[p_]
[syl][f/hcp]對不起…。[lr_]
[f/re]莫非是、難道是感冒了。[p_]
[_]（把手放在額頭上…。[lr_]
只是碰了一下就能很明顯的感受到高溫。[p_]

[if exp="f.trust>=5 && f.love>50 && f.f_pancake==1 && f.first_wear==1" ][else]
[jump target="*leave" ][endif]

[button target="*care" graphic="ch/care.png" x="0" y="200" ]
[button target="*leave" graphic="ch/leave.png" x="0" y="350" ]
[cancelskip][s]

*leave
[cm][_]（暂且先休息一下吧。[p_]
[syl][f/clcp]知道了、對不起。今天就讓我好好睡一覺…。[p_]
[black]
[_]（希露薇的身體狀況過了幾天還沒好轉。[lr_]
恐怕、在來這裡之前身體的負擔達到了極限吧。[p_]
（漸漸地變得沒有辦法好好吃飯和喝藥了、[r]
免疫力降低的身體使得細微的身體狀況不良身體漸都讓身體漸漸衰弱下去。[p_]
（不一會兒、希露薇靜靜地呼吸…。[p_]
[jump storage="sys/system.ks" target="*game_over" ]

*care
[cm][set_stand][bg_bed][f/clcp_nt]…。[p_][show_stand]
[_]（讓她睡在床上、準備容易消化的食物和藥。[p_]
[syl][f/hcp]…主人？不用為我做到那個地步。[p_]
[_]（只是感冒發燒而已 用不著這麼費心的。[p_]
[stop_bgm]
[black]…。[p_]
[bgm_IF]
[_]（果然希露薇的身體狀況短時間內都沒好轉。[p_]
[bg_ st="ev/a.jpg" ]
[syl][f/clcp]咳…咳…。[p]
[_]（是因為來這裡之前的生活使得身體這麼差的吧。[lr]
儘管是小小的感冒細菌但是也足夠讓免疫力低下的身體變弱了。[p]
[bg_ st="ev/b.jpg" ]
[syl][f/re]以前感冒的時候、並沒有拖這麼久還沒好的…。[p]
[_]（连裝成平时無邪傻裡傻氣的行為舉止的空閒都沒有了吧。[lr]
希露薇盡力發出來的微弱的聲音藏不住難受和不安。[p]
[black]…。[p_]
[bg_ st="ev/a.jpg" ]
[syl]…嗯……嗚[p]
[_]（已經盡力做了最恰當的處理了 但是希露薇還是跟發燒在抗爭著。[p]
[syl]…對不起…對不起[p]
[_]（連睡著的時候希露薇也在小聲呻吟。[lr]
[chara_mod name="hand_R" time="1" storage="o/hand/sick.png" ]
…可能是在做著什麼噩夢吧。[p]
[chara_show name="hand_R" time="300" wait="true" left=" 0.1" ]
（因為汗水緊貼在額頭的劉海分開了、就那樣輕撫她的頭。[p]
[syl]…嗯……[p]
[_]…。[p_]
[bg_ st="ev/c.jpg" ]
（過了一會兒稍微的、感覺表情柔和了許多。[p]
[stop_bgm]
[set_stand]…。[p_][bg_bed][f/][show_stand]

[syl][f/cl]…早上好。[lr_]
[f/]已經好多了。[p_]
[_]（把手放在希露薇的額頭上。[p_]
…。[p_]
（看樣子是退燒了。[p_]
[syl][f/clc]給你添麻煩了。[lr_]
[f/]家務、幫幫忙之類的事又可以做了、已經沒事了。[p_]
[f/s]…謝謝。[p_]
[eval exp="f.day=f.day+5" ]
[stop_bgm][black][jump storage="intro/step4.ks" target="*step4" ]


;;信任？---------------------------------------------------------
*ask
[set_stand][bg_room][bgm_IF][f/c_nt]…。[p_][show_stand]

[syl][f/re]主人。[lr_]
[f/re]主人、你不會對我做過分的事對吧？[p_]
[f/clc]在來這裡之前、我每天都很難受很辛苦…。[lr_]
[f/re]哭也好、笑也好、受到的對待都沒有變化。[p_]
[f/re]只能接受別無他法。[lr_]
[f/re]為那樣一件件的事的感傷、我會受不了的。[p_]
[f/c]所以、什麼都不要想了。[lr_]
[f/re]已經…都不想再去想那些悲傷、歡笑的事也不去思考了。[p_]
[f/re]抱有希望還是感歎不幸並不是都是美好的事。[p_]
[f/re]最開始來到這裡的時候、主人沒有對我做很過分的事…。[lr_]
[f/re]和我至今為止遇到過的人都不一樣。[p_]
[f/re]不過、沒有抱有任何期待。[lr_]
[f/re]如果還是抱有期待、然後又被背叛的話…我一定會受不了的…。[p_]
[f/clc]所以、即使是那樣主人也是那樣的親切、溫暖…。[lr_]
[f/re]我、不知道自己該怎麼做好。[p_]
[f/c]主人、我…能夠…相信主人嗎？[p_]

[button target="*say" graphic="ch/say.png" x="0" y="200" ]
[button target="*act" graphic="ch/act.png" x="0" y="350" ]
[cancelskip][s]


*say
[cm][f/cl_nt]…。[p_]
[f/re]…我、相信你。[lr_]
[f/re]那句話。[p_]
[f/c]至今為止、主人的和藹親切、溫柔的不像話[lr_]
[f/re]真的對不起。[p_][jump target="*c" ]

*act
[cm][f/cl]…主人你一直都是那麼的親切[lr_]
[f/re]肯定不會有背叛我的事對吧…。[p_]

*c
[f/c]…我、會努力成為對主人有用的人。[lr_]
[f/re]所以、不管我是哭還是笑都請不要丟下我…。[p_]
[f/clc]主人就保持那樣的親切…。[p_]
[eval exp="f.intro_flag='trust'" ][stop_bgm][black]
[jump storage="intro/step4.ks" target="*show_bace" ]


;;同床/step5へ---------------------------------------------------------
*to_step5
[set_stand][f/nt][bg_bed][bgm_IF]…。[p_][show_stand]

[_]（鋪好床后希露薇來到房間里。[p_]
[syl][f/c]那個、主人。那個…。[lr_]
[f/re]我、經常做噩夢。[p_]
[f/re]以前的事之類的、往後的妄想之類的睡著的時候總會想起來。[lr_]
[f/re]因此、一直都會半夜醒來…。[p_]
[f/clc]所以…。[lr_]
[f/re]那個…。[p_]
[_]（好像有什麼難言之隱想說卻說不出口。[p_]
[syl][f/c]所以、想要拜託你。[lr_]
[f/re]…我想和主人睡在一個房間的話、會給你添麻煩嗎？[p_]
[_]（再怎麼說房間裡就只有一張床啊…。[p_]
[syl][f/cp]那個、如果不介意的話、睡在一個床上也…。[lr_]
[f/re]和主人一起的話、一定會感到很安心的…。[p_]

[button target="*agree" graphic="ch/sleep-with.png" x="0" y="200" ]
[button target="*disagree" graphic="ch/cant.png" x="0" y="350" ]
[cancelskip][s]

*agree
[cm][f/sp]真的嗎？[p_]
[f/cp]這樣的無理請求、雖然覺得麻煩你…。[lr_]
[f/clp]求求你。[p_]
[stop_bgm][black][set_stand]

[_]（和希露薇躺在一張床上。[p_]
（在意躺在身邊的發出呼吸聲的毫無防備的少女完全睡著需要點時間…。[p_]
…。[p_][bg_bed][bgm_IF]

[_]（早上、起床的時候希露薇好像先起來了、[r]
換好了衣服坐在床邊。[p_]
（好像貪睡了一會兒。[p_]
[f/s_nt][show_stand]

[syl][f/re]啊、早上好。[p_]
[f/s]昨天、多虧了你睡得比我想像的還要沉。[p_]
[f/re]到早上為止都沒有睜開眼、也沒有做噩夢。[lr_]
[f/scl]謝謝。[p_]
[f/s]今天我做了早餐、不介意的話請吃吧。[lr_]
[f/re]只是做了麵包、雞蛋和培根。[p_]

[f/cl_nt]…。[p_]
[f/cp]還有 那個…。[lr_]
[f/re]可以的話往後、能不能時常一起睡呢？[p_]
[stop_bgm][black]…。[p_]
[jump storage="intro/step5.ks" target="*a" ]

*disagree
[cm][f/cl]…是啊、很不合適是吧。[p_]
[f/re]沒事了。[lr_]
[f/re]請你忘了吧。[p_]
[_]（希露薇回了自己的房間。[p_]

[eval exp="f.intro_flag='bed'" ][stop_bgm][black]…。[p_]
[jump storage="intro/step4.ks" target="*show_bace" ]

;;睡在一起Re---------------------------------------------------------
*remind
[black][_]（睡覺前腦子里掠過了之前希露薇說的話。[p_]

[button target="*second" graphic="ch/second.png" x="0" y="200" ]
[button storage="intro/step4.ks" target="*show_bace" graphic="ch/nop.png" x="0" y="350" ]
[cancelskip][s]

*second
[cm][set_stand][f/nt][bg_bed][bgm_IF]…。[p_][show_stand]
（跟希露薇打了招呼。[p_]
[syl][f/re]哎…。可以和你一起嗎？[p_][jump target="*agree" ]


;;勇氣的提案---------------------------------------------------------
*to_step6
[set_stand][bg_bed][bgm_IF][f/nt]…。[p_][show_stand]

[syl][f/re]那個[name]…？[p_]
[_]（整理床鋪、躺下的時候希露薇從房間出來了。[p_]
（最近相當頻繁的和希露薇一起睡覺。[p_]

[syl][f/cl_nt]…。[p_]
[_]（躺在身邊、看向這裡塞希露薇。[lr_]
感覺和平時的樣子不一樣。[p_]
[syl][f/cp]非常對不起。[r]
[f/re]我、[name]很感謝你。[lr_]
[f/clcp]食物、衣服、收到了很多東西。[lr_]
[f/re]所以一點點也好想要表達一下感謝。[p_]
[f/cp]考慮了很久[r]
[f/re]我只會做一些簡單的幫忙的事情。[p_]
[f/re]所以、那個…。[p_]
[f/re]…那個、[name]。[lr_]
[f/re][name]沒有對象的是吧。[p_]
[f/re]如果、需要晚上的伴侶的話…。[lr_]
[f/re]我、和我…我…[l_][f/re]抱 能抱著我嗎？[p_]
[f/re]我、雖然沒有那樣的經驗[lr_]
[f/re]這樣的事…作為奴隸[name]是可以做的…是吧？[p_]
[f/clcp]我、[name]的话…。[lr_]
[f/re]不 我也…[name]和、[lr_]
[f/cp]就算是形式上也好…想要在一起…什麼的。[p_]
[f/clcp]嗯、那個…我很可笑吧。[lr_]
[f/cp]只是、[name]能為你做什麼。[p_]
[f/re]我、發育也不好 也有很醜的傷疤…。[lr_]
[f/re]我覺得我沒什麼魅力。[p_]
[f/re]即使那樣…如果、[name]需要的話…我…。[p_]

[button target="*kiss" graphic="ch/kiss.png" x="0" y="200" ]
[button target="*sleep" graphic="ch/sleep.png" x="0" y="350" ][s]

*sleep
[cm][f/clc]…是啊、是那樣的啊。[lr_]
[f/re]我這樣的人…。[p_]
[f/]但是、如果你改變心意的話、請告訴我。[p_]
[f/cl]那麼、晚安…。[p_]
[eval exp="f.sex='yet'" ][eval exp="f.miyage='non'" ]
[stop_bgm][black][jump storage="talk/step6.ks" target="*a" ]

*kiss
[cm][f/clp]恩…。[p_]
[_]（稍微固執的樣子看著她希露薇還是欠了欠身躺下了。[p_]
[syl][f/re][name]…。[p_]


[chara_part name="stand" neck="00.png" time="200" wait="false" allow_storage=true ]
[chara_part name="stand" dress="00.png" time="200" wait="false" allow_storage=true ]
[chara_part name="stand" sleeve="00.png" time="200" wait="false" allow_storage=true ]
[chara_part name="stand" pin="00.png" time="200" wait="false" allow_storage=true ]
[chara_part name="stand" hair_f="s/body/stn_fh.png" time="200" wait="true" allow_storage=true ]

…。[p]
[if exp="f.hat==1 || f.hat==2" ][else]
[chara_part name="stand" hat="00.png" time="200" wait="false" allow_storage=true ][endif]


[chara_part name="stand" ribbon_b="00.png" time="200" wait="false" allow_storage=true ]
[chara_part name="stand" ribbon="00.png" time="200" wait="false" allow_storage=true ]
[chara_part name="stand" head="s/body/stn_h1.png" time="200" wait="false" allow_storage=true ]
[chara_part name="stand" hair_b="s/hair/F/nr.png" time="200" wait="true" allow_storage=true ]

[_]（反復親吻、慢慢的褪去希露薇的衣服。[p_]

[chara_part name="stand" under_b="00.png" time="200" wait="false" allow_storage=true ]
[chara_part name="stand" under_p="00.png" time="200" wait="true" allow_storage=true ]


[syl][f/p]啊…。[p_]
[_]（撫摸著臉頰的手緩緩的往下移 悄悄的碰到了小腹。[p_]
[syl][f/clp_nt]嗯…。[p_]
[_]（一開始輕輕的愛撫私密處就慢慢的湧出濕潤。[p_]
[syl][f/p][name]你…。[lr_]
[f/re]能夠抱抱我吧…。[p_]
[_]（漸漸失去力氣的希露薇橫躺在床上。[p_]
[stop_bgm][black]

[jump storage="H/first.ks" target="*H_first" ]

