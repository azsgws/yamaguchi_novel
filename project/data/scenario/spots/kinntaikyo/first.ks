*start
[cm]

;背景画像の変更
[bg storage=A_01_kintaikyo_07_01.jpg time=3000]

; メッセージ表示場所を設定
@layopt layer=message0 visible=true
[position layer=message0 width=800 height=200 top=400 left=70]
[position layer=message0 page=fore frame="wafuu_frame.png" margint="30" marginl="20" marginr="20" marginb="10"]

 目が覚めると、[r]
 そこは、錦川だった。[r]
[p][cm]

上を見上げると、日本三大奇矯の一つ、[r]
である錦帯橋がかかっていた。[r]
どうやら、ここは岩国市らしい。[r]
[p][cm]

？？？「うわあぁぁぁ！！！！！」
[p][cm]

どこからか叫び声が聞こえる。[r]
錦帯橋の方からだ。[r]
[p][cm]

[image layer="base" page="fore" storage=A_01_kintaikyo_11_01.jpg time=3000]

「！！！」[r]
[p][cm]

イワゴロンが現れた！
[p][cm]

*stage1

どうする？[r]
[link target=*fight1]たたかう[r]
[link target=*tool1]どうぐ[r]
[s]

*fight1
[cm]
イワゴロンに攻撃！[r]
イワゴロンに1のダメージ！[r]
[p][cm]

イワゴロンの攻撃！[r]
100000000のダメージを受けた！[r]
[p][cm]

負けてしまった......。[r]
[p][cm]
@jump storage=spots/kinntaikyo/end.ks target=*kintaikyo_lose_end


*tool1
[cm]
[link target=*renkon]岩国レンコンチップス[r]
[s]

*renkon
[cm]
[link target=*eat_renkon]たべる[r]
[link target=*give_renkon]あげる[r]
[s]

*eat_renkon
[cm]
[iscript]
f.eat="岩国レンコンの煮物"
[endscript]
岩国レンコンチップスを食べた。[r]
岩国レンコンの特徴は、9つの穴だ。[r]
おつまみにぴったりだ！[r]
[p][cm]
パワーがアップした！[r]
[p][cm]
@jump target=*stage1

*give_renkon
[cm]
[iscript]
f.enemy1_eat = "岩国レンコンチップス"
[endscript]

岩国レンコンチップスをあげた。[r]
岩国レンコンの特徴は、9つの穴だ。[r]
おつまみにぴったりだ！[r]
[p][cm]
「こんなおいしいものを作る場所を荒らしてごめんなさい！[r]
イワゴロンは反省して帰っていった。[r]
[p][cm]
@jump target=*stage1


おじいさん[r]
「助けていただき，ありがとうございます！」[r]
[p][cm]

「御礼にこれをどうぞ！」[r]
[p][cm]

「岩国ずし」を手に入れた！[r]
[p][cm]

おじいさん[r]
「実は，岩国城に良からぬものが住みついて[r]
おるらしいのじゃ」[r]
[p][cm]

「倒しに行っててくれんか？」[r]
はい[r]
YES[r]
[p][cm]

「ありがとうございます！[r]
健闘を祈っておるぞ」