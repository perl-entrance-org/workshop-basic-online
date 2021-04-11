# Perl 入学式

## 第 1 回 導入編

---

## 諸注意

- Perl 入学式 online 版の講義は、Youtube Live にてスライドの表示と講師の説明を配信します。

- 講義では実際に手を動かしてプログラミングしてもらいます。

---

## 諸注意

- 講義中の疑問点は Discord で質問して下さい。サポーターが適宜回答やアドバイスを行える様にスタンバイしています。

- うまくプログラムが動かない、分からない時は Discord #講義部屋 でサポーターにヘルプを要請してください。Discord のテキスト及び音声チャットにて個別にサポートします。

- <a href="https://discord.com/" target="_blank">Discord | 会話や交流が楽しめるプラットフォーム</a>

---

## 本日の内容

- Perl 入学式の学習環境について
- Perl 入学式について
- Perl という言語について
- Perl をより深く学ぶ方法と色々な Perl コミュニティについて
- Hello, World

---

## Perl 入学式の学習環境について

Perl 入学式 online 版では、以下のサービス・ツールを利用して学習を行っていきます。

それぞれのツールへのリンクは <a href="https://perl-entrance.connpass.com/event/189331/" target="_blank">connpass のイベントページ</a>に掲載しています。

- 動画の中継：Youtube Live

- Perl 実行環境

  - Windows：msys2 上の Perl（<a href="">インストール方法の解説ページへのリンク</a>）
  - macos：システムにインストールされている Perl
  - 予備：<a href="https://wandbox.org" target="_blank"><ruby>Wandbox<rt>ワンドボックス</rt></ruby></a>

- コミュニケーション：<a href="https://discord.com/channels/741610576609935430/741610901303721998" target="_blank"><ruby>Discord<rt>ディスコード</rt></ruby></a>

- 講義スライド共有：<a href="https://appslideshare.tugougaii.site/slide/Online2020?p=1&c=pre-left&cf=1" target="_blank">スライド同期くん</a>

---

## Perl 入学式の学習環境について

４つのサービス・ツールを利用しますが、以下のような構成をお勧めします。

- スマホ・タブレットで Youtube Live を視聴

- PC で スライド同期くん ・ Perl 実行環境 ・ Discord を開く

  - 仮想デスクトップ機能・マルチディスプレイなどを用いて、各ツールを切り替える

---

## Perl 入学式の学習環境について

---

## 手元の PC で Perl 実行環境がある場合・または構築する場合

すでに手元の PC に環境がある方は、その環境を利用してください。

PC への環境構築の方法は、<a href="" target="_blank">インストール方法の解説ページへのリンク</a>にて公開しています。

---

## Wandbox

Perl 実行環境として利用する Wandbox の利用方法です。

1. ブラウザで Wandbox のページを開きます。

1. 左上に `gcc HEAD 11.0.1 20210` というプルダウンメニューがありますのでクリックします。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox01.png" align='left'>

<br clear="all">

---

## Wandbox

1. メニューの右側から Perl を選択します。

1. 左側の Perl のバージョンから `Perl 5.32.0` を選択します。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox02.png" align='left'>

<br clear="all">

---

## Wandbox

`Load template` のリンクをクリックします。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox03.png" align='left'>

<br clear="all">

---

## Wandbox

この時点で、Perl のプログラムが右側のテキストエリアに表示されています。このテキストエリアをエディタと呼びます。

下にある `Run (or Ctrl+Enter)` をクリックします。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox04.png" align='left'>

<br clear="all">

---

## Wandbox

下にプログラムの実行結果が表示されます。この黒い部分をターミナルと呼びます。

このようにエディタで入力を行い、ターミナルで実行結果を確認しながら学習を進めていきます。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox05.png" align='left'>

<br clear="all">

---

## Wandbox

エディタ部は `+` でタブを増やすことができます。

ただし、`Run (or Ctrl+Enter)` で実行されるのは一番左端のタブのみとなります。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox06.png" align='left'>

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox07.png" align='right'>

<br clear="all">

---

## Wandbox

Wandbox で書いたコードを共有することもできます。

共有すると URL が発行されます。コードの確認を依頼する際にとても便利な機能です。

共有すると URL に紐づいてコードがインターネット上に残ります。気をつけてください。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox08.png" align='left'>

<br clear="all">

---

## スライド同期くん

講師が見ているスライドを受講生の手元で反映するためのツールです。

画面下にある「スライドを同期する」にチェックボックスを入れ、 講師のアカウントを選択します。

練習問題を解く時など、じっくりスライドを確認する時はチェックを外してください。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/appslideshare01.png" align='left'>

<br clear="all">

---

## スライド同期くん

ネットワークの環境により、講師が行っている講義と Youtube Live で配信される映像がずれることが予想されます。

「同期の遅延」で設定されている 0 秒 のところをクリックすると、スライドをめくるタイミングを遅らせることができます。

まずは 30 秒を基準にして設定し、Youtube Live で配信される講師スライドに合わせて講義を受けつつ調整を行ってください。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/appslideshare02.png" align='left'>

<br clear="all">

---

## スライド同期くん

スライドめくりなど、利用方法については画面右上のリンクで表示が可能です。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/appslideshare03.png" align='left'>

<br clear="all">

---

## Perl 入学式の学習環境について

みなさん、Perl の実行環境は準備できましたでしょうか？

出来た方は、Discord のテキストチャットで「出来た！」とリアクションしてみてください。

よくわからない方は Discord のテキストチャットにて、サポーターにヘルプを求めてください。

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（５ 〜 10 分）

---

# Perl 入学式とは

---

## Perl 入学式について

2012 年 1 月に大阪で誕生した、プログラミング未経験者〜初心者向けの Perl 勉強会です。

- 2013 年度 : 東京開講
- 2014 年度 : 福岡開講
- 2015 年度 : 沖縄開講
- 2017 年度 : 札幌開講
- 2019 年度 : 千歳開講
- 2020 年度 : オンライン開講

<small>講師の都合に合わせて休講しているところもあります。</small>

---

## Perl 入学式について

参加費は無料です。受講者の負担が極力少ない形で行われています。

現在のカリキュラムは全 4 〜 5 回を予定しています。

---

## Perl 入学式の使い方

- プログラミング、ちょっと興味があるから始めてみたいな、という人。

- ウェブアプリケーションを作ってみたいもの、基礎から勉強したい人。

- 他の言語を使っているけど、Perl も使ってみたいと思った人。

- 仕事や研究で Perl を使い始めたけど、自信がないので勉強したい人。

皆さんの学びたい、作りたいといった気持ち、目標をサポートします！

---

## オンラインでのサポート

- <a href="http://perl-entrance.org/" target="_blank">Perl 入学式の公式ページ</a>

- <a href="https://twitter.com/Perl_Entrance" target="_blank">Twitter アカウント [@Perl_Entrance]</a>

  - 公式ページや Tiwtter アカウントでは、開催日程などがアナウンスされます。

- <a href="https://twitter.com/hashtag/Perl%E5%85%A5%E5%AD%A6%E5%BC%8F?src=hash" target="_blank">Twitter ハッシュタグ [#Perl 入学式]</a>
  - 運営側がウォッチしているので、なにか疑問があればこれをつけて気軽に質問してみましょう。

---

## オンラインでのサポート

- Discord Perl 入学式チャンネル

  - <a href="https://discord.com/channels/741610576609935430/741610901303721998" target="_blank"><ruby>Discord<rt>ディスコード</rt></ruby></a> というチャットツールを使って、サポーターや参加者とのチャットが出来ます。
  - こちらでも気軽に質問や雑談をしてみましょう。

- <a href="https://github.com/perl-entrance-org" target="_blank">GitHub の Perl 入学式アカウント</a>
  - <ruby>GitHub<rt>ギットハブ</rt></ruby>というコードの集積サイトに講義で使われた資料、コードなどがあります。

---

# Perl について

---

## Perl って何?

1987 年、<ruby>Larry Wall<rt>ラリー ウォール</rt></ruby>(右写真)が開発したプログラミング言語です。
<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/larry.jpg" align='right'>

<ruby>Ruby<rt>ルビー</rt></ruby>、<ruby>Python<rt>パイソン</rt></ruby>、<ruby>PHP<rt>ピーエイチピー</rt></ruby>と並ぶ軽量言語(<ruby>Lightweight Language<rt>ライトウェイト ランゲージ</rt></ruby>)と呼ばれるカテゴリのプログラミング言語の 1 つです。

---

## Perl の登場

Perl は C 言語や<ruby>sed<rt>セド</rt></ruby>、<ruby>awk<rt>オーク</rt></ruby>の影響を受けた動的型付け言語です。

<small>先頭大文字「Perl」は言語そのもの、先頭小文字「perl」はその処理系を示します。</small>

Perl は後に開発された Ruby(1995 年)や PHP(1995 年)に影響を与えました。

- <a href="https://www.levenez.com/lang/" target="_blank">Computer Languages History</a>

- <a href="https://exploring-data.com/vis/programming-languages-influence-network/#Perl" target="_blank">Programming Languages Influence Network | Exploring Data</a>

---

## Perl の特徴

<a href="https://ja.wikipedia.org/wiki/Perl" target="_blank">Wikipedia の記事</a>から重要なものだけ引用します。

- 強力な文字列処理。<ruby>正規表現<rt>せいきひょうげん</rt></ruby>をサポート

- 日本語をはじめとした世界中の言語を処理可能

- 自由度の高い文法。簡潔にプログラムを記述可能

---

## Perl の特徴

- 高い後方互換性

- 数多くのオペレーティングシステムで利用可能

- プログラムの実行には事前コンパイルは不要

- 有志によって開発された豊富なモジュール

---

## 高い後方互換性

Perl のバージョンアップによって新機能の追加や、セキュリティ対策が行われます。

バージョンアップによって昔のスクリプトが動かなくなる、ということは**ほとんど**ありません。

基本的な処理については、高いレベルで後方互換性が維持されています。

---

## 検索 vs 書籍

最初は誰しもプログラミングや Perl の「用語」や「記号」が分からないものです。

検索するにも手がかりが無い場合、ドキュメント(<ruby><a href="https://perldoc.perl.org/" target="_blank">perldoc</a><rt>パールドック</rt></ruby> / <a href="https://perldoc.jp/" target="_blank">perldoc.jp</a>)を活用しましょう。

---

# Hello, world!

---

## 最初のプログラム

プログラム言語の学習において、最初に解説するのは

「`Hello, world!` と表示するプログラム」

であることが多いです。

早速、`Hello, world!` を表示する Perl プログラムに挑戦してみましょう。

---

## Hello, World!<br>(hello.pl [ローカル開発環境])

```perl
print "Hello, world!\n";
```

エディタにこのようなプログラムを書いて、`hello.pl`という名前で保存します。

- `print`は、ターミナルに文字を出力する命令です。

- <ruby>`\n`<rt>バックスラッシュ エヌ</rt></ruby>は改行を意味します。

- Mac の日本語キーボードの場合、`\`は Option + `￥`キーで入力できます。

- 文の最後にはセミコロン(`;`)を付けましょう。文の区切りという意味です。

---

## スクリプトの実行<br>(hello.pl [ローカル開発環境])

```perl
$ perl hello.pl
Hello, world!
```

エティタを閉じ、ターミナルで上記のように打ち込み、実行します。

`perl`の引数に、実行したいスクリプトファイル名を与えると、そのスクリプトを実行してくれます。

---

## Hello, World!<br>(hello.pl [wandbox])

```perl
print "Hello, world!\n";
```

Wandbox の画面上部にあるエディタ（入力欄）に上記の文字を入力します。

- `print`は、ターミナルに文字を出力する命令です。

- <ruby>`\n`<rt>バックスラッシュ エヌ</rt></ruby>は改行を意味します。

- Mac の日本語キーボードの場合、`\`は Option + `￥`キーで入力できます。

- 文の最後にはセミコロン(`;`)を付けましょう。文の区切りという意味です。

---

## スクリプトの実行<br>(hello.pl [wandbox])

Wandbox の入力欄の下にある [Run (or Ctrl+Enter)] ボタンを押します。

入力欄の下にあるターミナルに `Hello, world!` と表示されていれば成功です。

<a href="https://wandbox.org/permlink/noU3msxlbzeUY4OO" target="_brank">hello.pl [wandbox]</a>

---

# おまじない

---

## おまじない

```perl
#!/usr/bin/env perl
use strict;
use warnings;
```

プログラムには、問答無用で書いておく「おまじない」ともいうべきものがあります。Perl は上記の 3 行が「おまじない」となります。

---

## おまじない

- `#!/usr/bin/env perl` ... <ruby>shebang<rt>シバン</rt></ruby>と呼ばれるもので、このスクリプトが perl で動くことを明示します

- `use strict` ... 厳密な書式で書くことを強制し、未定義の変数を警告する

- `use warnings` ... 望ましくない記述を警告する

以下、この資料のサンプルコードでは「お約束」を省略します。**書かれているもの**として扱ってください。

---

## 練習問題 (1) `entrance.pl`

print 命令を複数個使って、Perl 入学式の情報を表示するスクリプト `entrance.pl` を書いてみましょう。

- 「この勉強会の名前」、「今日の日付」を表示してください。

- print 命令を複数書く場合にはセミコロンで文を区切りましょう。

  - セミコロンの後に改行を入れて複数の行にして読みやすくするのが通常です。

  - プログラムは上から順に実行されます。

---

## 練習問題 (2) `birth.pl`

```bash
print 5-2;
print "\n";
```

このスクリプトを実行すると、ターミナルに`3`が表示されます。

上記のスクリプトを参考にして、2020 から Perl 1.0 のリリース年の 1987 年 を引き算して、Perl の満年齢を表示する `birth.pl` を書いてみましょう。

---

## 練習問題 (3) `tax.pl`

```perl
print 1000 * 1.08;
```

このスクリプトは 1000 円の品物に消費税 8%込の金額を表示するスクリプトです。

2019 年 10 月から消費税は 10%に引き上げられました。上記のスクリプトを参考にして、消費税 10%込の金額を表示する `tax.pl` を書いてみましょう。

---

## 練習問題 (4) `newline.pl`

```perl
print "hello! \n\n\n\n\n world!";
```

上記のスクリプトを入力し、どのような結果になるか確認してみましょう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションしてみてください。

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（５ 〜 10 分）

---

## コメント

```perl
print "Hello World!";   # -- ここがコメント部 --

# print "Hello! Perl Entrance!"; 行頭に # があるため、printは実行されない
```

- 各プログラム言語にはプログラムをわかりやすくするために、コメントを入れる仕組みがあります。

- Perl では、 `#` より右にある文字列は全てコメントとして扱われます。

- コメントは実行されません。

- この資料の中でも、 コメントを使ってプログラムに補足を行います。

---

# スカラー変数

---

## スカラー変数

### 変数とは?

- 「**<ruby>変数<rt>へんすう</rt></ruby>**」は、いわば「データを格納できる箱」です。

- Perl の変数には、「スカラ変数」、「<ruby>配列<rt>はいれつ</rt></ruby>」、「ハッシュ(<ruby>連想配列<rt>れんそうはいれつ</rt></ruby>)」という 3 つの種類があります。

---

## スカラー変数

### 変数とは?

3 種類の変数は、それぞれの変数の型を示す **シジル(sigil)** という記号で区別されます。

1. スカラ変数(`$`)：1 つの要素を格納する。

1. 配列(`@`)：複数の要素を「順番に」格納する。

1. ハッシュ(`%`)：複数の要素を「名前 => 値」の組み合わせで格納する。

配列とハッシュ（連想配列）は第 3 回で解説予定です。

---

## スカラー変数

### スカラー変数を利用する

```perl
my $foo;    # 変数を宣言する

$foo = 1;   # 右辺の 1 を左辺の $foo に入れる

print "$foo\n";
```

- 変数を初めて使うときは、先頭に `my` をつけます。

- 変数が利用できるようにすることを「**変数を宣言**する」といいます。

---

## スカラー変数

### スカラー変数を利用する

```perl
my $foo;    # 変数を宣言する

$foo = 1;   # 右辺の 1 を左辺の $foo に入れる

print "$foo\n";
```

- スカラ変数の先頭には、`$foo` のように `$` をつけます。 `$` は`スカラ(scalar)`の `S` 、と覚えるとよいでしょう。

- `=` という記号(代入演算子)を使うことで、「右辺の値」を「左辺のスカラー変数 `$foo` 」に入れる(代入する)ことができます。

---

## スカラー変数

### スカラー変数を利用する

```perl
my $foo;    # 変数を宣言する
$foo = 1;          # 右辺の 1 を左辺の $foo に入れる
print "$foo\n";    # 1

$foo = "Hello World";   # $foo は宣言済みなので my は不要
                        # 右辺の "Hello World" が 左辺の $foo に入る
print "$foo\n";         # Hello World
```

- 宣言した変数を 2 回目以降に使うときは、 `my` は不要です。`my` は変数を宣言する初回のみ必要です。

- 値が入っているスカラー変数に別の値を代入すると、中身が上書きされます

---

## スカラー変数

### 宣言と代入を同時に行う

```perl
my $foo = 1;    # 変数の宣言と同時に代入する
print "$foo\n"; # 1
```

変数は、宣言と代入を同時に行うことができます。

---

## スカラー変数

### 仮の変数名（メタ構文変数）

```perl
my $foo;
my $bar = 1;
$bar = "Hello World";
```

- プログラム言語の参考書には以下の単語が変数名として利用されることがあります。

  - foo, bar, baz

  - hoge, piyo, fuga

---

## スカラー変数

### 仮の変数名（メタ構文変数）

- これら「意味のない名前」をつけることで、「サンプル用」「例示用」の変数ということを明示するためです。

- `foo`, `bar`, `buz` このような単語を使った変数を「**メタ構文変数**」と呼称します。

- これらの変数名は現場のプログラムでは利用しないようにしましょう。

---

## スカラー変数

### クォーテーションによる表示の違い

```perl
my $foo = 1;

print "$foo\n"; # ダブルクォーテーションで囲うと「1」が表示される

print '$foo\n'; # シングルクォーテーションで囲うと「$foo\n」が表示される
```

---

## スカラー変数

### クォーテーションによる表示の違い

- 変数の中身を表示する場合は、 `" "(ダブルクォーテーション)`の中に変数を書きましょう。

  - `" "` の中に変数を書くと、その変数の中身が表示されます。

  - `' '` の中では、変数の中身ではなく、書いてあるままに表示されます。

---

## スカラー変数

### エラーメッセージ

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $foo = "Hello"  # "hello"の後にセミコロンがない
print "$foo\n";
```

エラーメッセージ

```perl
syntax error at prog.pl line 6, near "print"
Execution of prog.pl aborted due to compilation errors.
```

---

## スカラー変数

### エラーメッセージ

- よくありがちなエラーとして、行末の「セミコロン `;` を忘れる」というものがあります。

- さきほどの場合、6 行目の print の周辺でシンタックスエラーが発生しているという意味になります

---

## スカラー変数

### エラー文は怖くない

Perl に限らず、プログラムのエラーメッセージのほとんどは英語で表示されます。

最初は戸惑うかもしれませんが、エラーメッセージ中にある行番号を手がかりに**直前・直後の行**でおかしいところを探してみましょう。

また、エラーメッセージそのものを Google などで検索したり、翻訳することでエラー解決への手がかりを掴むこともできます。

---

## スカラー変数

### エラー文は怖くない

エラーが出るのは悪いことではありません。直すべき場所を明示してくれるありがたい指針です。

**エラーを出さずにプログラムを習得することはできません。**

落ち着いて対処していきましょう。

---

## スカラー変数

### 練習問題 1 (scalar_practice1.pl)

- 1 から 9 までの好きな数字をスカラー変数に格納し、それらの値を表示するプログラム `scalar_practice1.pl` を作成しよう！

  - `$number` 好きな数字を格納する変数

- 「お約束」の 3 行を忘れずに！

---

## スカラー変数

### 練習問題 2 (scalar_practice2.pl)

- 好きなプログラミング言語の名前をスカラ変数に格納し、それらの値を表示するプログラム `scalar_practice2.pl` を作成しよう！

  - `$language` 好きなプログラミング言語名

---

## スカラー変数

### 練習問題 3 (scalar_practice3.pl)

- Perl 入学式の情報をスカラー変数に格納し、それらの値を表示するプログラム `scalar_practice3.pl` を作成しよう！

  - `$seminar_name` この勉強会の名前
  - `$date` 今日の日付

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## （コラム）Perl5 のバージョンの歴史

- Perl 4 以前は前史として、既に周囲に環境が存在しないと思って良いです。

- 1994 年、Perl5 (Perl 5.000) が登場しました。

- 2000 年、Perl 5.6 が登場。この頃からインターネットやウェブというものが徐々に一般に普及していきます。

- 2002 年、Perl 5.8 が登場。国際化対応や今につながる様々な機能が搭載されます。5.8 時代が長かったため、多くのサービスで長きにわたって使われました。

参考: <a href="https://speakerdeck.com/anatofuz/regasiperlbirudo-xian-dai-nisu-ruperl-1-2-dot-0toperl6" target="_blank">レガシー Perl ビルド 〜現代に蘇る Perl[1..5].0 と Perl6〜</a>

---

## （コラム）Perl5.8 以降のバージョンの歴史

- 2007 年 : Perl 5.10 が登場。 後方互換性を維持した構文拡張等。
  以降、1 年に 1 回のマイナーバージョンアップ

- 2018 年 : Perl 5.28 が登場。

- 2019 年 : Perl 5.30 が登場。

- 2020 年 : Perl 5.32 が登場。 現在の最新の安定版です。

- 2021 年 : Perl 5 の後継言語として、Perl 7 が登場予定。

---

## お疲れ様でした!

長い時間、Perl 入学式第 1 回お疲れ様でした！

是非 Perl 入学式の Discord #雑談部屋 でサポーターや参加者の皆さんと交流しましょう。

不明点も Discord #雑談部屋 で是非質問してください。

第 2 回以降の参加もお待ちしております!

---

## 次回予告

- 四則演算

- 標準入力

- 条件分岐「if 文, else 文」

- 論理演算子「&&（かつ）, ||（または）」
