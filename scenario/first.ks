



*start









; タイトル画面
[layopt layer=message0 visible=false]

; 背景表示
[bg storage="P1.png" time=500 wait=true]

; タイトル用レイヤー
[layopt layer=0 visible=true]

; 小さな放送表示
[ptext layer=0 x=70 y=70 name= "1C" text="北港区広域臨時放送" size=18 color=0xA8B8C8 width=350 time=500]

[wait time=200]



; 異常な放送表示
[ptext layer=0 x=850 y=520 text="未住者：確認中" size=19 color=0xC0A0A0 width=300 time=400]

[wait time=200]

[ptext layer=0 x=100 y=280 text="受信状態：良好" size=17 color=0xA8B8C8 width=300 time=400]

[wait time=300]

; タイトル表示
[ptext layer=0 x=410 y=200 text="受信区域外" size=64 color=0xFFFFFF face = "瀞ノグリッチ黒体" width=550 align=center bold=true edge=0x26394A time=1500]

[wait time=200]




; 画面揺れ
[quake count=3 time=150 hmax=5 vmax=2]

; スタートボタン
[glink x=500 y=440 width=270 height=25 text="START" face = "IgyouMincho.tff" size=26 color=black font_color=white target=*game_start]

[s]


















; =========================================
; ゲーム開始
; =========================================

*game_start

; タイトル画面の文字を消去
[freeimage layer=0]

; 主人公の部屋
[bg storage="P2.png" time=1200 wait=true]

; メッセージウィンドウを下部に表示
[position layer=message0 left=40 top=490 width=1200 height=190 color=0x080D14 opacity=220 marginl=30 margint=20 marginr=30 marginb=20]
[layopt layer=message0 visible=true]
[current layer=message0]

[font size=24 color=0xFFFFFF]

; =========================================
; PROLOGUE
; =========================================

[font size=28 color=0xDCE7EF bold=true]
プロローグ
[resetfont]
[p]

縦浜市。[p]

特に変わったところのない、どこにでもある街。
[r]
俺はこの街で、ごく普通の生活を送っていた。[p] 

その夜。
[r]
時刻は午前2時16分。[l]
突然、部屋のスピーカーから音が流れた。[p]

[quake count=3 time=200 hmax=5 vmax=2]

[font size=26 color=0xA8C8D8 bold=true]
――縦浜市広域臨時放送――
[r]
♪放送番号：001
[resetfont]
[l][r]


[font size=24 color=0xFFFFFF]
現在、北港区において

住民登録情報の不整合が確認されています。[l]

対象となる住民は、速やかに、
[r]
指定された場所にて遡籍を行ってください。[l]

未住者は、現地に留まらないでください。[l]

繰り返します。
[r]
未住者は、現地に留まらないでください。
[resetfont]
[p]

[font size=26 color=0x8795A5]
――放送終了――
[resetfont]
[p]

部屋は静まり返っていた。[l]

時計を見る。
[r]
午前2時17分。[l]

たった1分間の放送だった。[p]

北港区。
[r]
そんな地名を聞いたことがあっただろうか。[p]

俺はスマートフォンを手に取り、
[r]
北港区について検索してみた。[l]

しかし、それらしい情報は何も見つからなかった。[p]

結局、その夜は何も分からないまま眠りについた。[p]










; =========================================
; NEXT MORNING
; =========================================

[bg storage="P3.png" time=1200 wait=true]

翌日、放課後。[l]

俺は図書室に立ち寄っていた。[p]

窓際の席に、一人の女子生徒が座っている。[l]

見覚えのある顔だった。[p]

「そこ、空いてる？」[l]

[font color="0xE8B8C8"]
「うん。どうぞ」[p]
[resetfont]

彼女は本から目を上げて答えた。[l][r]

[font color="0xE8B8C8"]
「何読んでるの？」[l][r]
[resetfont]

「小説。図書室で借りたんだ」[l][r]

[font color="0xE8B8C8"]
「そうなんだ」[p]
[resetfont]

何気ない会話だった。[l]

彼女の名前は、矢上慶子。[r]
同じ学校の生徒だが、まともに話すのは初めてだった。[p]




[chara_new name="keiko" storage="P4.png" jname="矢上慶子" width=300]
[chara_show name="keiko" left=820 top=80]

[layopt layer="message0" visible=true]
[current layer=message0]




; 呼吸アニメーションの定義
[keyframe name="keiko_breath"]
[frame p=50% y="-20"]
[frame p=100% y="0"]
[endkeyframe]

; 呼吸を無限に繰り返す
[kanim name="keiko" keyframe="keiko_breath" time=3500 count=infinite direction=alternate]

[font color="0xE8B8C8"]
「それ、面白い？」
[p]
[resetfont]
「まだ読んでないから分からないよ」
[p]

[font color="0xE8B8C8"]
「ふふ、そっか」
[p]

[resetfont]

彼女は小さく笑って、再び本に目を落とした。[p]

そのときだった。[l]

図書室のスピーカーから、突然ノイズが流れた。[p]

[quake count=4 time=180 hmax=6 vmax=3]

; =========================================
; SECOND BROADCAST
; =========================================

[font size=26 color=0xA8C8D8 bold=true]
――縦浜市広域臨時放送――
[r]
放送番号：002
[resetfont]
[l][r]

[font size=24 color=0xFFFFFF]
未住者の確認を開始します。[l]

無名籍に該当する住民は、
[r]
速やかに現地への到着を報告してください。[l]

なお、対象者の到着は確認されています。
[resetfont]
[p]

[font size=26 color=0x8795A5]
――放送終了――
[resetfont]
[p]

俺は慶子の方を見た。[l]


「今の放送、聞こえた？」[p]




[font color="0xE8B8C8"]
「うん。何だったんだろうね」[p]
[resetfont]


慶子は少し不思議そうな顔をしていた。[p]

そのとき。[l]

どこからか、小さな声が聞こえた。[p]

[font size=26 color=0xA8C8D8 italic=true]
「……見つけた」
[resetfont]
[p]

「今、何か聞こえなかった？」[l]

[font color="0xE8B8C8"]
「……ううん。何も」
[resetfont][p]


俺は昨夜の放送を思い出していた。[l]

北港区。
[r]
遡籍。
[r]
未住者。[p]

このまま放っておくわけにはいかない。[p]




; =========================================
; FIRST CHOICE
; =========================================

[cm]


「……少し調べてみようと思う」[p]

[font color="0xE8B8C8"]
「私も気になる。よかったら一緒に調べない？」[p]
[resetfont]
俺は少し考えた。[l]

まずは何から調べるべきだろうか。[p]



; 選択肢A
[glink x=180 y=350 width=850 height=45 text="慶子と一緒に古い住民記録を調べる" size=22 color=black font_color=white target=*route_a]

; 選択肢B
[glink x=180 y=440 width=850 height=45 text="一人で旧放送施設について調べる" size=22 color=black font_color=white target=*route_b]

[s]



*route_a

; =========================================
; ROUTE A
; 第2章：記録の中の名前
; =========================================

*route_a

[bg storage="P3.png" time=1000 wait=true]

; 本の表紙を中央に表示
[image layer=0 name="resident_book" storage="P5.png" visible=true x=430 y=45 width=420 height=630]

「じゃあ、住民記録を探してみよう」[p]

図書室の奥にある古い資料棚を調べることにした。[p]

しばらく探していると、
古びた一冊の本が目に留まった。[p]

表紙には、金色の文字でこう書かれている。

[font size=26 color=0xC8B080]
住民記録　第一巻
[resetfont]
[p]

「これ、北港区って書いてある……」[p]

[font color="0xE8B8C8"]
「本当だ。こんな資料、初めて見た」
[p]
[resetfont]

本を開くと、そこには住民の氏名や住所、
登録日などが細かく記されていた。[p]

どうやら、かなり古い時代の住民記録らしい。[p]

ページをめくっていく。[p]

1987年6月12日。[p]

1996年11月3日。[p]

2019年4月7日。[p]

異なる年代の記録が、同じ形式で並んでいた。[p]

その中に、一つ気になる名前があった。[p]

[font size=26 color=0xA8C8D8]
矢上 慶子
[resetfont]
[p]

「……これって」[p]

[font color="0xE8B8C8"]
「私と同じ名前だね」
[p]
[resetfont]

登録された住所を確認する。

北港区　第七居住区。[p]

さらにページをめくる。[p]

そこにも、同じ名前が記されていた。[p]

矢上 慶子。

登録日：1996年11月3日。[p]

そして、もう一つ。[p]

矢上 慶子。

登録日：1987年6月12日。[p]

「同じ名前が、こんなに昔から……」[p]

[font color="0xE8B8C8"]
「同姓同名ってことなのかな」
[p]
[resetfont]

そう言いながら、慶子は古い記録を見つめていた。[p]

「どうかした？」[p]

[font color="0xE8B8C8"]
「ううん。ただ……」
[p]

「このページ、前にも見たことがあるような気がする」
[p]

[resetfont]

慶子は少し考えてから、首を横に振った。[p]

[font color="0xE8B8C8"]
「気のせいだよね。こんな古い本、初めて見たし」
[p]
[resetfont]

さらに記録を確認する。[p]

1987年の登録情報には、他の年代にはない印が押されていた。[p]

[font size=28 color=0xB87878 bold=true]
遡籍
[resetfont]
[p]

「遡籍……？」[p]

聞いたことのない言葉だった。[p]

その下には、小さな注意書きがある。[r]

[font size=19 color=0xA8C8D8]
同一人物の重複登録を確認した場合、
最も古い記録を優先すること。
[resetfont]
[p]

「重複登録って、どういう意味だろう」[p]

[font color="0xE8B8C8"]
「同じ人が何度も登録されているってことかな」
[p]
[resetfont]

確かに、そう考えれば説明はつく。

しかし、なぜ同じ人物が異なる年代に登録されているのだろう。[p]

さらにページをめくると、最後の欄に小さな記載があった。[p]

[font size=23 color=0xA8C8D8]
関連資料：第七居住区　保管記録
保管場所：地下資料室
[resetfont]
[p]

「地下資料室か……」[p]

[font color="0xE8B8C8"]
「この図書館にそんな場所があったんだね」
[p]
[resetfont]

慶子は本を閉じた。[p]

「行ってみようか」[p]

[font color="0xE8B8C8"]
「うん。まだ何か分かるかもしれないし」
[p]
[resetfont]

本を棚に戻そうとしたとき、
ページの間から一枚の紙片が落ちた。[p]

拾い上げると、そこには手書きの文字が残されていた。[p]

[font size=24 color=0xA8B8C8]
1987年6月12日
記録と映像の照合を行うこと。
[p]

対象番号：017
[resetfont]
[p]

「017……」[p]

特に思いつくことはない。

しかし、なぜか気になった。[p]

慶子は紙片をじっと見つめていた。[p]

[font color="0xE8B8C8"]
「ねえ」
[p]

「もし、同じ人が何度も記録されていたら、どうなるんだろうね」
[p]

[resetfont]

「さあ……。普通なら間違いとして修正されるんじゃないかな」[p]

[font color="0xE8B8C8"]
「そうだよね」
[p]

「でも、この記録は修正されていないみたい」
[p]

[resetfont]

慶子の言う通りだった。[p]

1987年の記録も、1996年の記録も、
どちらも消されずに残っている。[p]

まるで、どちらも正しい記録であるかのように。[p]

時計を見ると、午後5時を過ぎていた。[p]

地下資料室の受付時間は、まだ終わっていない。[p]

「行ってみよう」[p]

[font color="0xE8B8C8"]
「うん」
[p]
[resetfont]

二人は資料を元の場所に戻し、
地下へ続く階段を探し始めた。[p]

そのとき、図書室のスピーカーから、
かすかなノイズが聞こえた。[p]

[quake count=2 time=180 hmax=3 vmax=2]

[font size=21 color=0xA8C8D8]
『……登録情報を確認しました』
[resetfont]
[p]

一瞬の沈黙。[p]

[font size=26 color=0xC05050]
――縦浜市広域臨時放送――[r]
放送番号：003

[p]

『登録情報を確認しました』
『対象者の移動を確認しています』[r]
[resetfont]
[p]
放送は、それだけで途切れた。[p]

「今の……聞こえた？」[p]

[font color="0xE8B8C8"]
「うん」
[p]

「でも、今の声……」
[p]
[resetfont]

慶子は何かを言いかけて、口を閉じた。[p]

「どうしたの？」[p]

[font color="0xE8B8C8"]
「……前にも聞いた気がする」
[p]
[resetfont]

そう言って、慶子は階段の方を見た。[p]

その表情には、ほんの少しだけ戸惑いが浮かんでいた。[p]

; =========================================
; ROUTE A END
; =========================================

[jump target=*route_a_ch3]















; =========================================
; ROUTE B
; 第2章：記録映像
; =========================================

*route_b

; 慶子を画面から消す
[chara_hide name="keiko"]

; 主人公の部屋から調査シーンへ
[bg storage="P2.png" time=1000 wait=true]

[layopt layer="message0" visible=true]
[current layer="message0"]
[cm]

慶子と別れた後、
俺は一人で北港区について調べることにした。[p]

インターネットで検索しても、
やはり北港区に関する情報は見つからない。[p]

しかし、検索結果の奥に、
一つの古い資料が残っていた。[p]

[font size=24 color=0xA8C8D8]
北港区旧放送施設
[resetfont]
[p]

所在地：縦浜市北部
施設状態：閉鎖済み
最終更新日：1987年6月12日[p]

1987年。

今から三十九年も前の記録だった。[p]

閉鎖された施設の情報が、
なぜ今も残っているのだろう。[p]

さらに調べると、
関連資料として一つの記録が見つかった。[p]

[font size=23 color=0xA8C8D8]
第七保管庫　記録映像
[resetfont]
[p]

保管場所：市立図書館　地下資料室[p]

「地下資料室……」[p]

昨夜の放送と関係があるのだろうか。[p]

[p]

[bg storage="P3.png" time=1000 wait=true]

翌日、俺は図書館へ向かった。[p]


一般利用者が立ち入らない地下の資料室。
適当に理由をつけて受付で許可をもらい、古い映像資料を閲覧することができた。[p]

[bg storage="P13.png" time=1000 wait=true]

資料棚には、何本ものビデオテープが並んでいた。[p]

その中に、一つだけ気になるものがあった。[p]

[font size=23 color=0xA8C8D8]
第七保管庫
1987年6月12日
[p]
対象番号：017
[resetfont]
[p]

なぜかはわからないが目についた。[p]

テープを再生する。[p]

[wait time=1000]

[bg storage="P11.png" time=1000 wait=true]

画面には、古い建物の映像が映し出された。[p]

画質は荒く、画面には絶えずノイズが走っている。[p]

右上には、1987年6月12日の日付。[p]

建物の看板には、
「北港区第七居住区」と書かれていた。[p]

映像の中には、二人の人物が立っていた。[p]

一人は男子生徒。
もう一人は、長い黒髪の女子生徒だった。[p]

女子生徒の顔が、少しずつカメラの方を向く。[p]

[bg storage="P9.png" time=1000 wait=true]

[wait time=1200]


「……慶子？」[p]

思わず声が出た。[p]

そこに映っていた少女は、
慶子によく似ていた。[p]

もちろん、映像が古く、顔もはっきりとは見えない。[p]

ただ、髪型も、制服も、
そしてこちらを見つめる表情もよく似ている。[p]

隣にいる男子生徒にも見覚えがあった。[p]

顔はノイズで隠れている。

しかし、その立ち姿は、
どこか自分に似ている気がした。[p]

「そんなはずはない……」[p]

1987年。

俺が生まれるよりも前の映像だった。[p]

映像はしばらくそのまま続いた。[p]

すると、少女が何かを話し始めた。[p]

音声を上げる。[p]

[font size=21 color=0xA8C8D8]
『……まだ、聞こえてる？』
[resetfont]
[p]

ノイズが激しくなる。[p]

[quake count=3 time=180 hmax=5 vmax=2]

『次は、終わらせて』
[p]

[bg storage="P10.png" time=300 wait=true]
[wait time=1500]

その直後、映像が乱れた。[p]

画面が暗転する。[p]

数秒後、白い文字が表示された。[p]

[font size=26 color=0xDCE7EF bold=true]
対象番号：017
[resetfont]
[p]

続いて、別の文字が浮かび上がる。[p]

[font size=24 color=0xB87878]
照合結果：不一致
[resetfont]
[p]

映像はそこで終わった。[p]

しばらく、何も操作できなかった。[p]

1987年の映像に、
慶子によく似た少女が映っていた。[p]

そして、もう一人の男子生徒。

あれは本当に自分だったのだろうか。[p]

テープを取り出そうとしたとき、
ケースの裏側に小さな紙片が貼られていることに気づいた。[p]

そこには、手書きでこう書かれていた。[p]

[font size=23 color=0xA8C8D8]
同一人物の映像を確認した場合、
前後の記録を照合すること。
[p]

対象：矢上慶子
[resetfont]
[p]

慶子の名前。

この映像は、最初から彼女を記録するためのものだったのだろうか。[p]

そのとき、資料室のスピーカーからノイズが流れた。[p]

[quake count=2 time=200 hmax=4 vmax=2]

[font size=26 color=0xC05050]
――縦浜市広域臨時放送――
放送番号：004

[p]

『記録映像の閲覧を確認しました』[r]
『対象者の存在を確認しています』
[resetfont]
[p]

放送は途切れた。[p]

その直後、テープケースの内側に、
もう一つの文字があることに気づいた。[p]

[font size=24 color=0xB87878]
次回照合予定：未定
[resetfont]
[p]

俺はテープを元の場所に戻した。[p]

ただ、一つだけ確かめたいことがあった。[p]

慶子は、この映像のことを知っているのだろうか。[p]

; =========================================
; ROUTE B END
; =========================================

[jump target=*route_b_ch4]










; =========================================
; ROUTE A
; 第3章：地下資料室
; =========================================

*route_a_ch3

[free layer=0 name="resident_book"]

[bg storage="P13.png" time=1000 wait=true]

[layopt layer="message0" visible=true]
[current layer="message0"]

図書室の奥にある階段を下りていく。[p]

地下は、普段使われていないのか、
少し埃っぽい空気が漂っていた。[p]

「ここが地下資料室か……」[p]

[font color="0xE8B8C8"]
「思ったより広いね」
[p]
[resetfont]

壁際には古い書類棚が並んでいた。[p]

その一番奥に、
第七居住区と書かれた箱が置かれている。[p]

箱を開けると、何冊かの記録簿と、
古い写真が出てきた。[p]

[image layer=0 name="old_photos" storage="P12.png" x=100 y=100 width=1080 height=608]
[wait time=1000]


[chara_hide name="keiko"]



[chara_show name="keiko" left=820 top=80]
; 呼吸アニメーションの定義
[keyframe name="keiko_breath"]
[frame p=50% y="-20"]
[frame p=100% y="0"]
[endkeyframe]

; 呼吸を無限に繰り返す
[kanim name="keiko" keyframe="keiko_breath" time=3500 count=infinite direction=alternate]

写真の日付は1987年6月12日。[p]

そこには、古い建物の前に立つ二人の学生が写っていた。[p]

「……この女の子」[p]

[font color="0xE8B8C8"]
「どうしたの？」
[p]
[resetfont]

写真の少女は、慶子によく似ていた。[p]

長い黒髪。
制服。
そして、少しだけこちらを見ているような表情。[p]

[font color="0xE8B8C8"]
「……私に似てるね」
[p]
[resetfont]

慶子は写真を手に取った。[p]

[font color="0xE8B8C8"]
「でも、この場所……」
[p]

「前にも来たことがある気がする」
[p]
[resetfont]

「本当に？」[p]

[font color="0xE8B8C8"]
「ううん。やっぱり分からない」
[p]
[resetfont]

写真の裏側には、短い文字が書かれていた。[p]

[font size=23 color=0xA8C8D8]
第七居住区
対象番号：017
[p]
記録照合用
[resetfont]
[p]

「また017か……」[p]

そのとき、棚の奥から一冊の薄いファイルが見つかった。[p]

表紙には、こう書かれている。[p]

[font size=24 color=0xA8C8D8]
写真記録　第二保管分
[resetfont]
[p]

中には、同じ場所で撮影された写真が何枚も保管されていた。[p]

しかし、どの写真にも日付以外の説明はない。[p]

慶子は一枚の写真を見つめていた。[p]

[font color="0xE8B8C8"]
「ねえ」
[p]

「この写真、私がいないものもあるのかな」
[p]
[resetfont]

「どうして？」[p]

[font color="0xE8B8C8"]
「なんとなく……そう思っただけ」
[p]
[resetfont]

その直後、地下資料室のスピーカーからノイズが流れた。[p]

[quake count=3 time=180 hmax=5 vmax=2]

[font size=22 color=0xC05050 bold=true]
――縦浜市広域臨時放送――
放送番号：005
[resetfont]
[p]

[font size=22 color=0xC05050]
『第七居住区の記録照合を開始します』

『対象者の重複在籍を確認しました』

『現在の記録を優先してください』

『過去の記録を参照しないでください』
[resetfont]
[p]

――放送終了――[p]

「過去の記録を参照するなって……」[p]

慶子は写真を机に置いた。[p]

[font color="0xE8B8C8"]
「でも、どうしてだろう」
[p]

「この写真、なくしちゃいけない気がする」
[p]
[resetfont]

写真の裏側をもう一度確認した。[p]

そこには、先ほどまで気づかなかった小さな文字があった。[p]

[font size=23 color=0xB87878]
次回照合予定：未定
[resetfont]
[p]

その下には、走り書きが記されていた。[p]

終わらせて。[p]

一体、どういう意味なのだろう。[p]

[free layer=0 name="old_photos"]

[jump target=*route_a_ch5]












; =========================================
; ROUTE B
; 第4章：記録されていない時間
; =========================================

*route_b_ch4

[bg storage="P2.png" time=1000 wait=true]

[layopt layer="message0" visible=true]
[current layer="message0"]

1996年の映像を確認してから、
俺は何度も同じことを考えていた。[p]

あの少女は、本当に慶子だったのだろうか。[p]

そして、隣にいた男子生徒は誰だったのか。[p]

もう一度、地下資料室へ向かった。[p]

[bg storage="P13.png" time=1000 wait=true]

今度は、1987年と1996年の映像を並べて確認することにした。[p]

[bg storage="P14.png" time=800 wait=true]

二本のテープを再生する。[p]


1987年6月12日。[p]

第七居住区の管理棟前。[p]

二人の学生が立っている。[p]



1996年11月3日。[p]

同じ建物。
同じ少女。
同じような構図。[p]

しかし、何かがおかしい。[p]

映像の右下に表示された時刻を確認した。[p]

1987年の映像も、1996年の映像も。[p]

[font size=25 color=0xA8C8D8]
02:17:26
[resetfont]
[p]

秒単位まで、同じ時刻だった。[p]

「偶然……なのか？」[p]

さらに映像を進める。[p]

二つの映像で、少女がほぼ同時に動いた。[p]

そして、どちらの映像でも、
少女はカメラの方を向き始めた。[p]

[wait time=1000]

画面にノイズが走る。[p]

[quake count=3 time=180 hmax=5 vmax=2]

一瞬だけ、映像の中に別の文字が表示された。[p]

[bg storage="P15.png" time=500 wait=true]

[font size=24 color=0xC05050 bold=true]
記録照合中
[resetfont]
[p]

「今のは……」[p]

映像を巻き戻す。[p]

しかし、同じ文字はもう表示されなかった。[p]

[bg storage="P14.png" time=800 wait=true]

そのとき、1996年の映像が突然切り替わった。[p]

[bg storage="P16.png" time=800 wait=true]

画面には、以前と同じ番号が表示されていた。[p]

[font size=25 color=0xC05050 bold=true]
対象番号：017
[resetfont]
[p]

その下に、新しい文字が浮かび上がる。[p]

[font size=22 color=0xC05050]
記録時刻：未確定
次回記録：02:16
[resetfont]
[p]


「次回記録……？」[p]

1987年でも1996年でもない。[p]

この映像は、いつの出来事を記録しようとしているのだろう。[p]

その直後、地下資料室のスピーカーから放送が流れた。[p]

[quake count=3 time=180 hmax=5 vmax=2]

[font size=22 color=0xC05050 bold=true]
――縦浜市広域臨時放送――
放送番号：008
[resetfont]
[p]

[font size=22 color=0xC05050]
『記録時刻の不一致を確認しました』

『過去の映像と現在の映像を照合します』

『対象者の移動を確認できません』

『次回の記録を待機してください』
[resetfont]
[p]

――放送終了――[p]

放送が終わった。[p]

俺は画面を見つめていた。[p]

過去の映像と現在の映像。[p]

その言葉が、ずっと頭から離れなかった。[p]

ふと、机の上に置いていたスマートフォンが目に入った。[p]

画面には、時刻が表示されている。[p]

午前2時16分。[p]

いつの間にか、日付も変わっていた。[p]

そのとき、停止していたはずのビデオデッキが動き始めた。[p]

[quake count=4 time=200 hmax=6 vmax=3]

画面に、再び映像が映し出される。[p]

[bg storage="P17.jpg" time=1000 wait=true]
[p]

そこには、見覚えのある図書室が映っていた。[p]


窓際の席。[p]

机の上の本。[p]

[bg storage="P18.jpg" time=1000 wait=true]

そして、その席に座っている少女。[p]

長い黒髪。[p]

見間違えるはずがなかった。[p]

慶子だった。[p]

しかし、映像の右下に表示された日付は、今日の日付だった。[p]

「どうして……」[p]
[bg storage="P19.jpg" time=1000 wait=true]

映像の中の慶子が、ゆっくりとこちらを向いた。[p]

[wait time=1200]

画面が暗転する。[p]
[bg storage="P8.jpg" time=800 wait=true]
しばらくして、赤い文字が一行だけ表示された。[p]
[bg storage="P20.jpg" time=1000 wait=true]



映像は停止した。[p]

[bg storage="P22.png" time=800 wait=true]
[p]

画面には、最後に一つの文字が表示されていた。[p]

[font size=22 color=0xC05050]
保管場所：北港区旧放送施設
第七保管庫
[resetfont]
[p]

映像の記録は、すべてあの施設につながっている。[p]

そこに行けば、何かわかるかもしれない。[p]

旧放送施設へ向かうことにした。[p]

[bg storage="P19.png" time=1000 wait=true]

北港区旧放送施設。[p]







[jump target=*route_b_ch7]

















*route_a_ch5

; 第5章「欠落した住民」

[bg storage="P13.png" time=1000 wait=true]

地下資料室を引き続き探索する。[p]

あの写真の裏にあった番号、017。[p]

それが何を意味するのか、確かめる必要があった。[p]

机の上には、古い住民記録が積まれていた。[p]

一冊ずつ確認していく。[p]

1987年。[p]

1996年。[p]

2004年。[p]

どの記録にも、同じ名前が残されていた。[p]

矢上慶子。[p]

「……やっぱり、あったんだ」[p]

慶子は一冊の台帳を開いた。[p]

[image layer=0 name="resident_book" storage="P5.png" visible=true x=430 y=45 width=420 height=630]

そこには、017という番号が記されていた。[p]

[font size=24 color=0xC05050]
対象番号：017
氏名：矢上慶子
登録状態：照合中
記録開始：1987年6月12日
[resetfont]
[p]

「これ、私の名前だよね」[p]

慶子は静かにページを見つめていた。[p]

「でも、変なんだ」[p]

「何が？」[p]

「この記録、私が生まれる前の日付から始まってる」[p]

ページをめくった。[p]

次のページには、別の記録があった。[p]

[font size=22 color=0xC05050]
対象番号：017
照合先：第七保管庫
記録状態：継続中
[resetfont]
[p]

「第七保管庫……」[p]

その名前には覚えがあった。[p]

北港区、第七居住区。[p]

そして、旧放送施設。[p]

「行ってみよう」[p]

慶子は台帳を閉じた。[p]


[free layer=0 name="resident_book"]

「そこに行けば、何かわかるかもしれない」[p]

[font color="0xA8C8D8"]
こちらは縦浜市防災管理室です。[p]

現在、記録の照合を継続しています。[p]

対象番号017は、指定区域内に存在しています。[p]

照合を終了しないでください。
[resetfont]
[p]

放送は途切れた。[p]

慶子は何も言わなかった。[p]

ただ、閉じた台帳をもう一度見つめていた。[p]

[jump target=*route_a_final]


*route_a_final

; Aルート最終章「放送施設」

[bg storage="P21.png" time=1000 wait=true]

旧放送施設の内部は、静まり返っていた。[p]

壁には古い配線が残り、奥にはいくつものモニターが並んでいる。[p]

その中央に、一台だけ電源の入った端末があった。[p]

画面には、見慣れた番号が表示されていた。[p]

[font size=24 color=0xC05050]
最終照合
対象番号：017
照合対象：矢上慶子
記録状態：継続中
[resetfont]
[p]

「これが、全部の原因なのかな」[p]

慶子は端末を見つめた。[p]

「わからない。でも……」[p]

彼女は少しだけ間を置いた。[p]

「もう、終わらせよう」[p]

端末の停止ボタンを押した。[p]

しばらくして、モニターが一斉に消えた。[p]

施設の中から音が消えた。[p]

そして、あの放送も聞こえなくなった。[p]

「終わったのかな」[p]

慶子は答えなかった。[p]

ただ、暗くなったモニターを見つめていた。[p]

[wait time=1000]
[chara_hide name="keiko"]

画面の一台が、再び点灯した。[p]

[bg storage="P21.png" time=800 wait=true]
[p]

[font size=22 color=0xC05050]
区域更新完了
[resetfont]
[p]

すぐに画面は暗くなった。[p]

[jump target=*epilogue]















*route_b_ch7

; Bルート最終章「最後の照合」

[bg storage="P12.png" time=1000 wait=true]

旧放送施設に到着した。[p]

内部には、まだ電源の入ったモニターが残っていた。[p]

画面には、最終記録が表示されていた。[p]

[font size=24 color=0xC05050]
最終照合
対象番号：017
照合時刻：02:16:00
照合対象：受信者
[resetfont]
[p]

その下には、二つの選択肢が表示されていた。[p]

[font size=22 color=0xC05050]
照合を終了しますか？
[resetfont]
[p]

「これを止めれば、終わるのかな」[p]

答えはなかった。[p]

画面の隅で、数字が点滅していた。[p]

017。[p]

また、017だった。[p]

端末の停止ボタンを押した。[p]

[bg storage="P24.png" time=800 wait=true]
[p]

モニターが一斉に暗くなった。[p]

しばらくして、施設の放送設備から最後の音声が流れた。[p]

[font color=0xC05050]
こちらは縦浜市防災管理室です。[p]

区域内の記録照合を終了します。[p]

これをもって、当該区域の放送を終了します。
[resetfont]
[p]

音声は途切れた。[p]

今度こそ、何も聞こえなかった。[p]

暗いモニターに、自分の姿が映っていた。[p]

その背後に、誰かが立っているように見えた。[p]

振り返った。[p]

そこには誰もいなかった。[p]

[jump target=*epilogue]









*epilogue

; エピローグ「受信区域外」

[bg storage="P2.png" time=1200 wait=true]

あれから数日が過ぎた。[p]

街には、いつもの日常が戻っていた。[p]

あの放送は聞こえない。[p]

北港区についても、新しい情報は何もなかった。[p]

すべて終わったのだと思っていた。[p]

[wait time=1000]

ふと、机の上に置かれた一枚の写真が目に入った。[p]

1987年6月12日。[p]

あの日の写真だった。[p]

そこに写っている慶子は、今と変わらない姿をしていた。[p]

写真を裏返した。[p]

何も書かれていない。[p]

ただ裏面に走り書きがあった。[p]

続けないで[p]

[wait time=1000]

そのとき、部屋のモニターが突然点灯した。[p]

[bg storage="P26.png" time=800 wait=true]
[p]

区域更新完了。[p]

対象番号：017。[p]

照合状態：終了。[p]

しかし、その下に新しい表示が現れた。[p]

[font size=22 color=0xC05050]
世界A：確認済
世界B：確認済
その他の区域：未確認
矢上慶子：登録済
[resetfont]
[p]

画面が一度だけ点滅した。[p]

そして、最後の一行が表示された。[p]

[font size=24 color=0xC05050]
受信状態：良好
[resetfont]
[p]

「外にでも出るか。」[p]
外に出ることにした。[p]

[bg storage="P25.png" time=800 wait=true]

[font color=0xC05050]
「……まだ終わってないよ」[p]
[resetfont]
[chara_new name="keiko" storage="P4.png" jname="矢上慶子" width=300]
[chara_show name="keiko" left=820 top=80]

ふと背後から慶子の声が聞こえた。[p]

振り返ると、慶子が立っていた。[p]


その表情は、いつもと変わらなかった。[p]


[font size=36 color=0xFFFFFF]
受信区域外
[resetfont]
[p]

[wait time=2000]

[font size=20 color=0xA8C8D8]
―― 放送は終了しました ――
[resetfont]
[p]

 [jump target=*fake_title]













; =================================
; 偽のタイトル画面
; =================================

*fake_title

[layopt layer=message0 visible=false]
[bg storage="P1.png" time=1000 wait=true]

[ptext layer=0 x=70 y=70 name="EQ" text="北港区広域臨時放送" size=18 color=0xA8B8C8 width=350]
[ptext layer=0 x=410 y=200 name= "FQ" text="受信区域外" size=64 color=0xFFFFFF face="瀞ノグリッチ黒体" width=550 align=center bold=true]

[chara_show name="keiko" left=820 top=80]

[glink x=500 y=440 width=270 height=25 text="START" face="IgyouMincho.tff" size=26 color=black font_color=white target=*fake_title_1]
[s]


; 1回目：慶子が消える
*fake_title_1

[chara_hide name="keiko"]

[glink x=500 y=440 width=270 height=25 text="START" face="IgyouMincho.tff" size=26 color=black font_color=white target=*fake_title_2]
[s]


; 2回目：慶子が現れる
*fake_title_2

[chara_show name="keiko" left=820 top=80]

[glink x=500 y=440 width=270 height=25 text="START" face="IgyouMincho.tff" size=26 color=black font_color=white target=*fake_title_3]
[s]


; 3回目：慶子が消えて異常表示
*fake_title_3

[chara_hide name="keiko"]





; 慶子を高速点滅させる
*keiko_flicker



[chara_show name="keiko" left=820 top=80]
[wait time=30]
[chara_hide name="keiko"]
[wait time=20]

[chara_show name="keiko" left=820 top=80]
[wait time=20]
[chara_hide name="keiko"]
[wait time=10]



; 選択肢
[glink x=500 y=410 width=270 height=22 text="終わらせる" target=*return_title]
[glink x=500 y=470 width=270 height=22 text="続ける" target=*stay_with_keiko]
[s]


; 戻らないを選んだ場合
*stay_with_keiko

[chara_new name="keikos" storage="P27.png" jname="矢上慶子" width=300]
[chara_show name="keikos" left=180 top=80]
[wait time=1000]
[jump target=*startX]




; 戻るを選んだ場合
*return_title
[chara_hide name="keiko"]
[wait time=1000]
[freeimage layer=0]
[jump target=*start]





; =========================================
; TITLE
; =========================================

*startX

[layopt layer=message0 visible=false]

; 慶子を一度だけ登録

; タイトル背景
[bg storage="P1.png" time=500 wait=true]

; タイトル表示
[ptext layer=0 x=70 y=70 name="XC" text="北港区広域臨時放送" size=18 color=0xA8B8C8 width=350 time=500]

[wait time=200]

[ptext layer=0 x=850 y=520 name="BC" text="未住者：確認中" size=19 color=0xC0A0A0 width=300 time=400]

[wait time=200]

[ptext layer=0 x=100 y=280 name="CC" text="受信状態：良好" size=17 color=0xA8B8C8 width=300 time=400]

[wait time=300]

[ptext layer=0 x=410 y=200 name ="WC" text="受信区域外" size=64 color=0xFFFFFF face="瀞ノグリッチ黒体" width=550 align=center bold=true edge=0x26394A time=1500]

[wait time=200]

[quake count=3 time=150 hmax=5 vmax=2]

; START
[glink x=500 y=440 width=270 height=25 text="START" face="IgyouMincho.tff" size=26 color=black font_color=white target=*game_startX]

[s]


; =========================================
; GAME START
; =========================================
*game_startX

; タイトル文字だけを消す
[free layer=0 x=70 y=70 name="XC"]
[free layer=0 x=70 y=70 name="EQ"]
[free layer=0 x=850 y=520 name="BC"]
[free layer=0 x=100 y=280 name="CC"]
[free layer=0 x=410 y=200 name="WC"]
[free layer=0 x=410 y=200 name="FQ"]

; 背景を主人公の部屋に変更
[bg storage="P2.png" time=1200 wait=true]

; 慶子を表示
[chara_show name="keikos" left=180 top=80]

; メッセージウィンドウ
[layopt layer=message0 visible=true]
[current layer=message0]

[position layer=message0 left=40 top=490 width=1200 height=190 color=0x080D14 opacity=220 marginl=30 margint=20 marginr=30 marginb=20]

[font size=24 color=0xFFFFFF]
; =========================================
; PROLOGUE
; =========================================

[font size=28 color=0xDCE7EF bold=true]
プロローグ
[resetfont]
[p]

ーー市。[p]

特に変わったところのない、どこにでもある街。
[r]
俺はこの街で、ごく普通の生活を送っていた。[p]

その夜。
[r]
時刻は午前2時16分。[l]
突然、部屋のスピーカーから音が流れた。[p]

[quake count=3 time=200 hmax=5 vmax=2]

[font size=26 color=0xA8C8D8 bold=true]
――ーー市広域臨時放送――
[r]
♪放送番号：001
[resetfont]
[l][r]

[font size=24 color=0xFFFFFF]
現在、ーー区において

住民登録情報の不整合が確認されています。[l]

対象となる住民は、速やかに--を確認し、
[r]
指定された場所にて--を行ってください。[l]

ーーーは、現地に留まらないでください。[l]

繰り返します。
[r]
ーーーは、現地に留まらないでください。
[resetfont]
[p]

[font size=26 color=0x8795A5]
――放送終了――
[resetfont]
[p]

部屋は静まり返っていた。[l]

時計を見る。
[r]
午前2時17分。[l]

たった1分間の放送だった。[p]

ーー区。
[r]
そんな地名を聞いたことがあっただろうか。[p]

俺はスマートフォンを手に取り、
[r]
ーー区について検索してみた。[l]

しかし、それらしい情報は何も見つからなかった。[p]

結局、その夜は何も分からないまま眠りについた。[p]


; =========================================
; NEXT MORNING
; =========================================

[bg storage="P3.png" time=1200 wait=true]

翌日、放課後。[l]

俺は図書室に立ち寄っていた。[p]

窓際の席に、一人の女子生徒が座っている。[l]

見覚えのある顔だった。[p]

「そこ、空いてる？」[l]

[font color="0xE8B8C8"]
「うん。どうぞ」[p]
[resetfont]

彼女は本から目を上げて答えた。[l][r]

[font color="0xE8B8C8"]
「何読んでるの？」[l][r]
[resetfont]

「小説。図書室で借りたんだ」[l][r]

[font color="0xE8B8C8"]
「そうなんだ」[p]
[resetfont]

何気ない会話だった。[l]

彼女の名前は、ーーーー。[r]
クラスメートだが、まともに話すのは初めてだった。[p]
初めてだった。[p]
初めてだった。[p]
初めてだった。[p]
初めてだった。[p]
初めてだった。[p]
初めてだった。[p]
初めてだった。[p]






[chara_show name="keiko" left=820 top=80]

[layopt layer="message0" visible=true]
[current layer=message0]




; 呼吸アニメーションの定義
[keyframe name="keiko_breath"]
[frame p=50% y="-20"]
[frame p=100% y="0"]
[endkeyframe]

; 呼吸を無限に繰り返す
[kanim name="keiko" keyframe="keiko_breath" time=3500 count=infinite direction=alternate]

[font color="0xE8B8C8"]
[wait time=7000]


[stop_kanim name="keiko"]
[p]


[bg storage="P8.png" time=500 wait=true]

; =========================================
; FINAL ERROR
; =========================================

*final_error

; 画面を暗転
[bg storage="black.png" time=500 wait=true]

; 2人の慶子を表示
[chara_show name="keikos" left=180 top=40]
[chara_show name="keiko" left=820 top=40]

[wait time=1000]


[font size=26 color=0xC05050 bold=true]
SYSTEM ERROR : 0x000017
[resetfont]
[p]

[font size=17 color=0xC05050]
----------------------------------------
【ERROR】 DUPLICATE SUBJECT DETECTED
【ERROR】 SUBJECT COUNT : 2
【ERROR】 REGISTERED NAME : YAGAMI KEIKO
【ERROR】 ID MATCH : TRUE
【ERROR】 RECORD MATCH : TRUE
【ERROR】 EXISTENCE CHECK : FAILED

----------------------------------------

【WARNING】 DUPLICATE REGISTRATION
【WARNING】 SUBJECT ID : 017
【WARNING】 SUBJECT ID : 017
【WARNING】 SAME NAME DETECTED
【WARNING】 SAME RECORD DETECTED
【WARNING】 SAME VOICE DETECTED
【WARNING】 SAME TIMESTAMP DETECTED

----------------------------------------

【DATABASE】 RECORD 001 : VALID
【DATABASE】 RECORD 002 : VALID
【DATABASE】 RECORD 003 : VALID
【DATABASE】 RECORD 004 : CORRUPTED
【DATABASE】 RECORD 005 : CORRUPTED

----------------------------------------

【IDENTITY CHECK】 FAILED
【LOCATION CHECK】 FAILED
【TIMESTAMP CHECK】 FAILED
【MEMORY CHECK】 FAILED
【EXISTENCE CHECK】 FAILED

----------------------------------------

【ERROR】 UNABLE TO DETERMINE ORIGINAL SUBJECT
【ERROR】 UNABLE TO DETERMINE DUPLICATE
【ERROR】 SUBJECT DEFINITION : AMBIGUOUS
【ERROR】 REGISTRATION STATUS : UNRESOLVED

----------------------------------------
[resetfont]


[wait time=1000]

[font size=24 color=0xFFFFFF]
「……どっちが、本物なの？」
[resetfont]
[p]

[font size=24 color=0xE8B8C8]
「ねえ。」
[p]
「私、どっち？」
[resetfont]
[p]

[wait time=1000]

[font size=27 color=0xC05050 bold=true]
FATAL ERROR
[resetfont]
[p]

[jump target=*final_end]


; =========================================
; FINAL END
; =========================================

*final_end

[font size=24 color=0xC05050]
SYSTEM SHUTDOWN : FAILED
RECEIVER STATUS : CONNECTED
UNKNOWN SUBJECT : 1
[resetfont]
[p]


[wait time=2000]
[freeimage layer=0]
; 画面を暗転
[bg storage="black.png" time=2000 wait=true]

[wait time=1000]


; タイトル画面へ戻る
[jump target=*start]