*start
[cm]
[freeimage layer=1]

[bg storage=spots/kaikyokann/desk.jpg time=500]
;メッセージレイヤを再度表示する
@layopt layer=message0 visible=true

あなたはこれから彼女を水族館のデートに誘います[l][r]
手紙に彼女と自身の名前を記入し，送信しましょう[l][r]

;[jump target=*P6A]


*letter_edit
[layopt layer="message0" visible="false"]
[image layer="1" storage="spots/kaikyokann/ask_date1.png" height=600 width=800 x=240 y=50]

[edit name="f.heroine_name" left=352 top=140 width="154" height="32" size="20" maxchars="8" initial="ふく子"]
[edit name="f.hero_name" left=690 top=544 width="154" height="32" size="20" maxchars="8" initial="ふく太郎"]

[locate x=590 y=600 ]
[button graphic="spots/kaikyokann/button/send.png" target=*commit height=40 width=100]
[s]

*commit


[commit]
[cm]
[freeimage layer="1"]
[layopt layer="message0" visible="true"]
[emb exp="f.heroine_name"]へ手紙を送りました[l][r]
[cm]
*letter_ok

[freeimage layer="base"]

.............[l][r]
デート当日[l][r]
[cm]

*date_start

[bg storage=spots/kaikyokann/gate.jpg time=2000]
[chara_new name="heroine" storage="chara/kaikyokann/heroine.webp" jname=ふく子]
[chara_new name="hero" storage="chara/kaikyokann/heroine.webp" jname=あなた]

;表情の登録
[chara_face name="heroine" face="feel" storage="chara/kaikyokann/heroine2.webp"]
[chara_face name="heroine" face="shy" storage="chara/kaikyokann/heroine3.webp"]
[chara_face name="heroine" face="angry" storage="chara/kaikyokann/heroine7.webp"]
[chara_face name="heroine" face="surprice" storage="chara/kaikyokann/heroine4.webp"]


[chara_show name="heroine"]

;名前の表示
[ptext name="chara_name_area" layer=message0 width="200" color=white x=40 y=510 size=26]
[chara_config ptext="chara_name_area"]

[iscript]
f.flag = false
f.souve_flag = false
f.fav = 0
[endscript]

#heroine
「[emb exp="f.hero_name"]おそい．何してたの？」[l][r][cm]

#hero
えーっと......

[glink color=blue size=30 x=360 width=400 y=100 target=*P1A text=「ちょっと野暮用」]
[glink color=blue size=30 x=360 width=400 y=200 target=*P1B text=「プレゼントを買ってた」]
[s]

*P1A
#hero
「ちょっと野暮用」[l][cm]
#heroine
「なにそれ」[l][cm]
[jump target=*P2]

*P1B
#hero
「プレゼントを買いに行ってたんだ」[l][cm]
#heroine
「どこにあるの？」[l][cm]
#hero
「えっと.......」[l][cm]
[jump target=*P2]

*P2
#heroine:feel
「そんなことより，今日は水族館に行くんでしょ」[l][cm]
#hero
「ああ，そうだった」[l][cm]

[cm]
[freeimage layer=base time=600]
[chara_hide name=heroine time=300]
#
水族館デートのはじまりはじまり[l][cm]

;場所変更
[bg storage=spots/kaikyokann/escalator.jpg time=500]
#hero
このエスカレータを上ると水族館なのか[l][r]
ロマンチックな雰囲気だな......[l]

[glink color=blue size=30 x=360  width=400 y=100 target=*P2A text=手をつなぐ]
[glink color=blue size=30 x=360  width=400 y=200 target=*P2B text=今はまだやめておこう]
[s]


*P2A
[chara_show name="heroine" face="angry"]
#heroine
「何すんのよ！！」[l][cm]
#hero
「ごめん」[l][cm]
.....まだ早かったみたいだ[l][r]
............[l]
エスカレータが長く感じる[l][cm]
[jump target=*P3]

*P2B
[chara_show name="heroine"]
#heroine
「楽しみ」[l][cm]
#hero
「うん.楽しみだね」[l][cm]
いいデートになりそうな予感！[l][cm]

[iscript]
f.fav += 100
[endscript]

[jump target=*P3]

*P3

;場所変更
[freeimage layer=base]
#
人混みの方へ向かう[l][cm]

[chara_hide name=heroine time=300]
[bg storage=spots/kaikyokann/crowd.jpg time=500]
#hero
「わぁ，キレイだ．」[l][cm]
[emb exp="f.heroine_name"]は息をのむ光景に言葉を失っている[l][r]
どうする？[l]

[glink color=blue size=30 x=360 width=400 y=100 target=*P3A text=手をつなぐ]
[glink color=blue size=30 x=360 width=400 y=200 target=*P3B text=まだやめておこう]
[s]

*P3A
#heroine
[chara_show name="heroine" face="angry"]
「何すんのよ！！」[l][cm]
#hero
「ごめん」[l][cm]
「................しまった」[l][cm]
....................[l][cm]
[jump target=*P3A_1 cond="f.fav == 0"]
[freeimage layer=base]
二人はイルカショーへ[l][cm]
[jump target=*P4]


*P3A_1
#heroine
「手離して！！」[l][cm]
#hero
「あ....ごめん」[l][cm]
....................[l][r]
[freeimage layer=base]
気まずいまま，二人はイルカショーへ[l][cm]

[iscript]
f.flag = true
[endscript]
[jump target=*P4]

*P3B
#heroine
[chara_show name="heroine"]
「こんなきれいな景色初めて見た」[l][cm]
#hero
「自分も初めて」[l][cm]
...いい雰囲気かもしれない...!![l][r]
[iscript]
f.fav += 100
[endscript]
[freeimage layer=base]
二人はイルカショーへ[l][cm]
[jump target=*P4]

*P4
;場所変更
[chara_hide name=heroine time=300]
[bg storage=spots/kaikyokann/show3.jpg time=500]

#
イルカショーはとても楽しい[l][cm]
[jump target=*P4A cond="f.flag == true"]
#hero
「みて，イルカ！シンクロしてる！」[l][cm]
#heroine
[chara_show name="heroine"]
「ほんとだ．仲良しなのかな」[l][cm]
#hero
「きっとそうだよ」[l][r]
「ってうわっ！水しぶきだ！！」[l][cm]
#heroine
「きゃっ」[l][cm]
#hero
水族館はカップルの距離を縮める！！[l][cm]
[jump target=*P5]


*P4A
#hero
「みて，イルカ！シンクロしてる！」[l][cm]
#heroine
[chara_show name="heroine"]
「うん」[l][cm]
#hero
「水しぶきが飛んでくるよ！」[l][cm]
#heroine
「うん」[l][cm]
#hero
「.......................」[l][r]
「どうやら僕は彼女に嫌われてしまったようだ」[l][cm]
[jump target=*P5]

*P5
[freeimage layer=base]
[chara_hide name=heroine time=300]
#
それから二人は館内を次々と見て回った[l][cm]

[bg storage=spots/kaikyokann/kabutogani.jpg time=1000]
#
カブトガニ Tachypleus tridentatus (Leach, 1819)[r]
カブトガニは背面全体が広く背甲で覆われ、脚などの付属肢はすべてその下に隠れている[l][cm]
[bg storage=spots/kaikyokann/fugu.jpg time=1000][l]
[bg storage=spots/kaikyokann/sunameri2.jpg time=1000]
スナメリ Neophocaena phocaenoides (G. Cuvier, 1829)[r]
日本の沿岸域に生息しており、沿岸域にすむため人間の生活や様々な活動による影響を受けやすい[l][cm]
[bg storage=spots/kaikyokann/pen5.jpg time=1000]
#
オウサマペンギン Aptenodytes patagonicus (Miller, 1778)[r]
別名キングペンギン[l][cm]
[bg storage=spots/kaikyokann/kurage.jpg time=1000][l]
[bg storage=spots/kaikyokann/fugu2.jpg time=1000][l]
[bg storage=spots/kaikyokann/kumanomi.jpg time=1000][l]

[freeimage layer=base]
#
満足した二人はそろそろ帰ることに[l][r]
帰り際，お土産屋さんを発見[l][r][cm]
[bg storage=spots/kaikyokann/souve2.jpg time=500]
#heroine
[chara_show name="heroine"]
「あ，お土産屋さん」[l][r]

[glink color=blue size=30 x=360  width=400 y=100 target=*souve text=寄る]
[glink color=blue size=30 x=360  width=400 y=200 target=*no_souve text=寄らない]
[s]
*souve
[web url="http://www.kaikyokan.com/floormap/shop/"]

#
ショップが開きます．ぜひご覧になってください[l][cm]
#hero
リアルペンギンシリーズ　ぬいぐるみ(税込3,190円)をプレゼント[l][r][cm]

#heroine:shy
「.........うれしい．ありがとう．」[l][r]
「大切にするね」[l][cm]
[chara_hide name=heroine time=300]
[iscript]
f.souve_flag = true
[endscript]
#hero
彼女の為になら僕は借金でもするだろう！[l][cm]
[jump target=*P6]

* no_souve
#hero
「ごめん...お金ないんだ」[l][cm]

#heroine
「そう，少し残念」[l][r][cm]
#
彼女は少し悲しそうにしている[l][cm]
[chara_hide name=heroine time=300]
#hero
「........................」[l][r]
「出よっか」[l][cm]
[jump target=*P6]

*P6
[freeimage layer=base]
[chara_hide name=heroine time=300]
#
水族館を後にした二人[l][r]
外は夕暮れ，雰囲気は最高潮[l][cm]
[bg storage=spots/kaikyokann/sunset.jpg time=500]

#heroine
[chara_show name="heroine"]
「今日は楽しかった」[l][r]
「デート，誘ってくれてありがとう」[l][cm]

#hero
「うん，自分も楽しかった」[l][r]
「また行こうね」[l][cm]

#heroine
「うん」[l][cm]

#hero
「............................................」[l][r]

#
不意に訪れる沈黙．どうする？[l][cm]

[glink color=blue size=30 x=360 width=400 y=100 target=*P6A text=手をつなぐ]
[glink color=blue size=30 x=360 width=400 y=200 target=*P6B text=まだやめておこう]
[s]


*P6A
[chara_hide name=heroine time=300]
[layopt layer="message0" visible="false"]

[bg storage=spots/kaikyokann/donten.jpg time=500]
[image layer=1 storage=spots/kaikyokann/zeus.png visible=true top=50 left=280 width=600 height=600]
[image layer=1 storage=spots/kaikyokann/destiny.png visible=true top=550 left=350 width=580 height=220 ]
[l]

[freeimage layer=1]
[bg storage=spots/kaikyokann/sunset.jpg time=500]

[jump target=*P6A_1 cond="f.flag && f.souve_flag"]
*P6A_1

[layopt layer="message0" visible="true"]
#
....................[l][r]
彼女はそっと手を握り返す[l][cm]

#heroine
[chara_show name="heroine" face="shy"]
「実はずっと手をつなぎたかったの」[l][r]
「でも恥ずかしくて...」[l][cm]
[chara_hide name=heroine time=300]


#hero
「......................」[l][r]
何だこの気持ちは.............!!!![l][cm]
胸が.....胸がドキドキしている.......!!!![l][cm]

#heroine
[chara_show name="heroine"]
「[emb exp="f.hero_name"]」[l][r]
「............................」[l][cm]
#heroine:shy
「好きよ」[l][r]

[chara_hide name=heroine time=300]
[layopt layer="message0" visible="false"]

[bg storage=spots/kaikyokann/sky2.jpg time=500]
;[image layer=1 storage=spots/kaikyokann/bell.jpg visible=true top=50 left=280 width=600 height=600]
[image layer=1 storage=spots/kaikyokann/congratulations.png visible=true top=530 left=350 width=600 height=230 ]
[l]





