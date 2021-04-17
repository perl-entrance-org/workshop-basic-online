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
- CLI ターミナルとシェル入門
- Visual Studio Code
- Hello, World
- スカラー変数
- 四則演算

---

## Perl 入学式の学習環境について

Perl 入学式 online 版では、以下のサービス・ツールを利用して学習を行っていきます。

それぞれのツールへのリンクは <a href="https://perl-entrance.connpass.com/event/189331/" target="_blank">connpass のイベントページ</a>に掲載しています。

- 動画の中継：Youtube Live

- Perl 実行環境

  - Windows：msys2 上の Perl（<a href="https://github.com/perl-entrance-org/workshop-basic-online/blob/master/0th/slide.md">第 0 回 環境構築編</a>）
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

# ターミナルと<br>シェル入門

---

## CUI(CLI)

<ruby>macOS<rt>マックオーエス</rt></ruby> も <ruby>Linux<rt>リナックス</rt></ruby> も、Windows と同じく<ruby>GUI<rt>ジーユーアイ</rt></ruby>で操作可能です。

ですが、プログラミングをする上で<ruby>CUI<rt>シーユーアイ</rt></ruby> (<ruby>CLI<rt>シーエルアイ</rt></ruby>) は避けられません。

- CUI ... Character User Interface
- CLI ... Command Line Interface

これらは文字によって操作を行うインターフェイスのことを指します。

- Windows ならば、コマンドプロンプトに該当します。
- Linux / macOS ではターミナルに該当します。

---

## CUI(CLI)

実際に CUI (CLI) を操作して体験してみましょう。

プログラマーやインフラエンジニアが操作している「黒い画面」というのはこのターミナルのことを指しています。

---

## ターミナルとシェル

プログラムの起動や制御を CUI(CLI)で行うプログラムのことを、**シェル**と呼びます。

ターミナルを開くと、シェルを使った操作が出来るようになります。

![シェル](image/shell.png)

<br clear="all">

---

## ターミナルの開き方(Windows)

スタートメニューから「MSYS2 XXbit」を選択し、「MSYS2 MSYS」をクリックします。

<small>MSYS2 は頻繁に起動するため、タスクバーへの追加やスタートメニューへのピン止めをおすすめします。</small>

![ターミナル](image/start-msys2-1.png)

<br clear="all">

△ スタートメニューから開いたところ（Windows10）

---

## ターミナルの開き方(macOS)

Launchpad などから「ターミナル」を選択し、起動します。

<small>ターミナルは頻繁に起動するため、Dock へ追加しておくことをおすすめします。</small>

![ターミナルのアイコン](image/terminal.png)

<br clear="all">

△ ターミナルのアイコン

---

## シェルで使えるコマンド集

シェルには様々なコマンドがあり、使いこなせば作業の負担を軽減することができます。

Perl 入学式の中でもよく使うコマンドを紹介します。

ターミナルを起動後、 `$` あるいは `%` が表示されます。この記号の後にコマンドを入力します。

```bash
$
```

```bash
%
```

---

## コマンド集(ls)

### [ Windows(msys2) / macOS ]

```bash
$ ls
example.pl example.txt
```

`ls` は、現在いるディレクトリにあるファイルを表示します。

コマンド名は '<strong>l</strong>ist <strong>s</strong>egments' の頭文字を取ったものです。

`ls -a` とすると、`.` (ドット)で始まる、通常は見えない隠しファイルも含め、すべて表示します。

このように、コマンドに追加の命令をつけて動作を変えることができます。

これを<ruby>引数<rt>ひきすう</rt></ruby>といいます。

---

## コマンド集(pwd)

### [ Windows(msys2) / macOS ]

```bash
$ pwd
/home/username
```

`pwd` は、現在いるディレクトリの場所（パス）を表示します。

コマンド名は '<strong>p</strong>rint <strong>w</strong>orking <strong>d</strong>irectory' の頭文字を取ったものです。

---

## コマンド集(mkdir)

### [ Windows(msys2) / macOS ]

```bash
$ mkdir sample
$ ls
example.pl example.txt sample
```

`mkdir DIRECTORY` は、`DIRECTORY`という名前のディレクトリを作ります。

コマンド名は '<strong>m</strong>a<strong>k</strong>e <strong>dir</strong>ectory' を短縮したものです。

---

## コマンド集(cd)

### [ Windows(msys2) / macOS ]

```bash
$ cd sample
$ pwd
/home/username/sample
$ cd ..
$ pwd
/home/username
```

`cd DIRECTORY` で、`DIRECTORY` 配下に移動します。

コマンド名は '<strong>ch</strong>ange <strong>dir</strong>ectory' を短縮したものです。

上の階層のディレクトリは `..` で表示されます。

---

## コマンド集(touch)

### [ Windows(msys2) / macOS ]

```bash
$ touch sample1 sample2
$ ls
sample1 sample2
```

`touch` には 2 つの役割があります。`touch FILE` とした時・・・

- FILE が存在しない場合には、空のファイルを生成する
- FILE がすでに存在する場合には、ファイルのアクセス日時と更新日時を現時刻に書き換える

---

## コマンド集(rm)

### [ Windows(msys2) / macOS ]

```bash
$ ls
sample1 sample2
$ rm sample1
$ ls
sample2
```

`rm FILE` は、`FILE` を削除します。

`rm FILE1 FILE2`のように複数のファイルを半角スペースで区切ることで、複数のファイルをまとめて削除することができます。

コマンド名は'<strong>r</strong>e<strong>m</strong>ove'を短縮したものです。

---

## コマンド集(rmdir)

### [ Windows(msys2) / macOS ]

```bash
$ mkdir del_sample
$ ls
del_sample
$ rmdir del_sample
$ ls
$
```

`rmdir DIRECTORY` は、`DIRECTORY` を削除します。

ただしディレクトリは空である必要があります。

コマンド名は '<strong>r</strong>e<strong>m</strong>ove <strong>dir</strong>ectory' を短縮したものです。

---

## コマンド集(ディレクトリを中身のファイルごと削除)

### [ Windows(msys2) / macOS ]

ディレクトリの中身ごとを削除するときは、先に紹介した `rm` に引数を加えて `rm -r DIRECTORY` とすることで、まとめて削除することができます。

`-r` という引数は <ruby>recursive<rt>リカーシブ</rt></ruby> （再帰的）を意味しています。

---

## コマンド集(cp)

### [ Windows(msys2) / macOS ]

```bash
$ ls
sample2
$ cp sample2 sample1
$ ls
sample1 sample2
```

`cp [OPTION] SOURCE DEST` は、`SOURCE` を `DEST` にコピーします。

コマンド名は '<strong>c</strong>o<strong>p</strong>y' を短縮したものです。

ディレクトリをコピーするときは、`[OPTION]` として `-r` を指定し、`cp -r SOURCE DEST` でコピーしなければなりません。

---

## コマンド集(mv)

### [ Windows(msys2) / macOS ]

```bash
$ ls
sample1 sample2
$ mv sample1 sample_text
$ ls
sample_text sample2
```

`mv SOURCE DEST` で、`SOURCE` を `DEST` に移動します。

コマンド名は '<strong>m</strong>o<strong>v</strong>e' を短縮したものです。

ファイルやディレクトリの名前を変更する用途にも使えます。

---

## コマンド集(start)

### [ Windows(msys2) ]

```bash
$ start .
```

`start [DIRECTORY]` で、`DIRECTORY` を <ruby>Explorer<rt>エクスプローラー</rt></ruby> というファイルマネージャで開きます。

`start` は対象となるファイルの種類によって動作が変わります。

例えば、ディレクトリが対象ならば上記のように Explorer で表示、テキストならばテキストエディタで表示... という動作をします。

---

## コマンド集(open)

### [ macOS ]

```bash
$ open .
```

`open [DIRECTORY]` で、 `DIRECTORY` を <ruby>Finder<rt>ファインダー</rt></ruby> というファイルマネージャで開きます。

`open` は対象となるファイルの種類によって動作が変わります。

例えばディレクトリが対象ならば上記のように Finder で表示、テキストならばテキストエディタで表示... という動作をします。

<br clear="all">

---

## 練習問題

ホームディレクトリとは、ユーザごとに用意された作業場所のようなものです。

`cd` とだけ入力してエンターキーを押すと、ホームディレクトリに移動します。

1. **ホームディレクトリ**に `perl-entrance` というディレクトリを作りましょう。

2. 作った `perl-entrance` ディレクトリの中に移動しましょう。

3. **カレントディレクトリ**のパスを `pwd` で表示し、その後に、`start` もしくは `open` を使って、ファイルマネージャで開いてみましょう。

<small>現在いるディレクトリをカレントディレクトリと言います。</small>

---

# エディタ入門

---

## エディタ

コードを書く時に最も使う道具、それがエディタです。

プログラミングに特化した様々なエディタが開発されていますが、Perl 入学式では Visual Studio Code を推奨しています。

特にこだわりのない方は、今回紹介する Visual Studio Code を試してみましょう。

もちろん、Emacs や Vim、サクラエディタなど、既に使い慣れているエディタがある方はそちらをお使いください。

---

## Visual Studio Code

<a href="https://code.visualstudio.com/" target="_blank">Visual Studio Code - Code Editing. Redefined</a> へアクセスし、 Download をクリックします。

---

## Visual Studio Code

### [ Windows ]

ダウンロードした `VSCodeUserSetup-**.exe` をダブルクリックすると、インストールが開始されます。

`**` としたところにはバージョン番号が入ります。

インストール後は、スタートメニューから「Visual Studio Code」をダブルクリックすれば Visual Studio Code が起動します。

インストール直後は自動的に起動します。

---

## Visual Studio Code

### [ macOS ]

ダウンロードした `VSCode-darwin-stable.zip` をダブルクリックすると、`Visual Studio Code.app` が生成されます。

これをダブルクリックすれば Visual Studio Code が起動します。

「 "Visual Studio Code.app" はインターネットからダウンロードされたアプリケーションです」という警告が出た場合、「開く」をクリックします。

---

## Visual Studio Code

### 日本語化

メニューが英語でとっつきにくい場合には、日本語化することが可能です。

1. ウィンドウ左上の View -> Command Palette から `Configure Display Language` と入力して候補を選択する。

1. Install Addicional Languages を選択する。

1. 左側のメニューから「日本語」を選択し、緑色の「Install」ボタンを押す。

1. 一度 Visual Studio Code を閉じて、再度起動する。

1. 英語表記に戻す場合には、1. から en を選択することで英語メニューになります。

---

## Visual Studio Code

### ファイルを開く

- 左上メニューから

  - Windows 版：ファイル -> ファイルを開く
  - macOS 版：ファイル -> 開く

<br>

### ファイルを保存する

- 左上メニューの ファイル -> 保存

---

## Visual Studio Code

### 参考書

- <a href="https://system-admin-girl.com/" target="_blank">まんがでわかる Linux シス管系女子</a>

- <a href="https://gihyo.jp/book/2020/978-4-297-11225-7" target="_blank">新版 zsh&bash 対応］macOS× コマンド入門 ── ターミナルとコマンドライン、基本の力</a>

---

## Visual Studio Code

### ファイル編集手順

`perl-entrance` ディレクトリ内に `profile.txt` という空のファイルを用意して、Visual Studio Code で編集する例です。

1. `cd` コマンドを利用し、`perl-entrance` フォルダに移動する

1. `touch` コマンドを使い、`profile.txt` を作成する

1. Windows(msys2) の場合は `start . ` で Explorer を 、macOS の場合は `open . ` で Finder を開き、中の `profile.txt` を Visual Studio Code にドラッグ＆ドロップする

1. 編集が終わったら Visual Studio Code の上にある ファイル メニューから 保存 を選択する

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（５ 〜 10 分）

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

以下、この資料のサンプルコードでは「おまじない」を省略します。**書かれているもの**として扱ってください。

---

## 練習問題 (1) `entrance.pl`

print 命令を複数個使って、Perl 入学式の情報を表示するスクリプト `entrance.pl` を書いてみましょう。

- 「この勉強会の名前」、「今日の日付」を表示してください。

- print 命令を複数書く場合にはセミコロンで文を区切りましょう。

  - セミコロンの後に改行を入れて複数の行にして読みやすくするのが通常です。

  - プログラムは上から順に実行されます。

---

## 練習問題 (2) `newline.pl`

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

- 「おまじない」の 3 行を忘れずに！

---

## スカラー変数

### 練習問題 2 (scalar_practice2.pl)

- 好きなプログラミング言語の名前をスカラ変数に格納し、それらの値を表示するプログラム `scalar_practice2.pl` を作成しよう！

  - `$language` 好きなプログラミング言語名

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（ 5 〜 10 分）

---

# 四則演算と<br>文字列連結

---

## 四則演算

### 基本的な演算子(足し算・引き算)

```perl
my $foo = 4;
my $bar = 2;
my $result;

# 足し算 +
$result = $foo + $bar;    # 足し算 して $result に代入する
print "$foo + $bar = ";   # 式の表示だけ。改行はしない。
print "$result\n";        # 上の式に続けて $result を表示する

# 引き算 -
$result = $foo - $bar;    # 引き算 して $result に代入する
print "$foo - $bar = ";   # 表示だけ。改行はしない。
print "$result\n";        # 上の式に続けて $result を表示する
```

算数と同じ + と - が利用できます。

---

## 四則演算

### 基本的な演算子(掛け算・割り算)

```perl
my $foo = 4;
my $bar = 2;
my $result;

# 掛け算 * （アスタリスク）
$result = $foo * $bar;    # 掛け算 して $result に代入する
print "$foo * $bar = ";   # 表示だけ。改行はしない。
print "$result\n";        # 上の式に続けて $result を表示する

# 割り算 / （スラッシュ）
$result = $foo / $bar;    # 割り算 して $result に代入する
print "$foo / $bar = ";   # 表示だけ。改行はしない。
print "$result\n";        # 上の式に続けて $result を表示する
```

算数の掛ける `×` は `*`、割る `÷` は `/` と、算数と異なる記号を使います。

---

## 四則演算

### 基本的な演算子(べき乗・剰余)

```perl
my $foo = 4;
my $bar = 2;
my $result;

# べき乗 **
$result = $foo**$bar;       # 4 の 2乗 を $result に代入する
print "$foo ** $bar = ";    # 式の表示だけ。改行はしない。
print "$result\n";          # 上の式に続けて $result を表示する

# 剰余 %
$result = $foo % $bar;     # 4 を 2 で割った余りを $result に代入する
print "$foo % $bar = ";    # 表示だけ。改行はしない。
print "$result\n";         # 上の式に続けて $result を表示する
```

---

## 四則演算

### 剰余の使い所

<ruby>**剰余**<rt>じょうよ</rt><ruby>は、初めて聞く言葉かもしれません。利用例を解説します。

```perl
print 100 % 7;    # 100 / 7 の余りである 2
```

例えば「今日の 100 日後の曜日」を求めるとき、100 日分カレンダーを辿るのは大変です。

---

## 四則演算

### 剰余の使い所

1 週間は 7 日なので、7 日後は同じ曜日となります。14 日後も同じ曜日となります。21 日、28 日、35 日... 7 の倍数日後は同じ曜日になります。

これを利用し、100 日 を 7 日 で割ってみます。剰余は 2 となります。

明日の曜日と同じであれば剰余は 1、 明後日と同じ曜日であれば 2、 と簡単に計算が可能です。

---

## 四則演算

### 代入演算子の性質

```perl
my $foo = 4;

$foo = $foo * 3;  # 右辺の計算結果( 4 * 3 )が、左辺の $foo に代入される

print "$foo\n";   # 12
```

- 代入演算子 `=` は、算数のイコールとは性質が異なります。

  - 算数　　　：左辺と右辺が等しいことを示す

  - プログラム：右辺の計算結果を左辺に代入する

- 上記の例では右辺の「 `$foo * 3` 」つまり 12 が `=` の左辺 `$foo` に代入されます。

---

## 四則演算

### 省略記法

代入演算子（ `=` ）を利用して、変数の中身を書き換える処理は多いため、専用の記法が用意されています。

```perl
my $bar = 100;
my $foo = 50;

$bar += 1;         # $bar = $bar + 1;と同じ
print "$bar\n";    # 101
$bar -= 1;         # $bar = $bar - 1;と同じ
print "$bar\n";    # 100

$bar *= 2;         # $bar = $bar * 2;と同じ
print "$bar\n";    # 200
$bar /= $foo;     # $bar = $bar / $foo と同じ
print "$bar\n";    # 4
```

---

## 四則演算

### インクリメント

1 ずつ加算することを「インクリメント」といいます。この処理も多用するので、専用の記法が用意されています。

```perl
my $foo = 4;

$foo = $foo + 1;# 代入演算子を利用
print "$foo\n"; # 5

$foo += 1;      # 省略記法
print "$foo\n"; # 6

++$foo;         # 前置インクリメント
print "$foo\n"; # 7

$foo++;         # 後置インクリメント
print "$foo\n"; # 8
```

---

## 四則演算

### インクリメント

前置インクリメントと後置インクリメントの違いについては[こちら](https://tutorial.perlzemi.com/blog/20180224151948.html)を参照してください。

---

## 四則演算

### 練習問題(keisan1.pl)

以下の問題を順番に書いて表示してみよう。

1. 変数 `$foo` に 10, `$bar` に 3 を代入し、それぞれを画面に表示させる。

1. 変数 `$foo` から 変数 `$bar` を引いた数を画面に表示させる。

1. 変数 `$foo` を 変数 `$bar` で割った時の余りを表示させる。

---

## 四則演算

### 練習問題(keisan2.pl)

以下の問題を順番に書いて表示してみよう。

1. 変数 `$num` に 8 を代入し画面に表示させる。

2. 省略記法を使って、変数 `$num` を 10 倍し、画面に表示させる

3. `$num` を 3 回インクリメントし、画面に表示させる。（正しくプログラムが書けていれば、83 と表示するはずです。）

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## お疲れ様でした!

長い時間、Perl 入学式第 1 回お疲れ様でした！

是非 Perl 入学式の Discord #雑談部屋 でサポーターや参加者の皆さんと交流しましょう。

不明点も Discord #雑談部屋 で是非質問してください。

第 2 回以降の参加もお待ちしております!

---

## 次回予告

- 文字列連結

- 標準入力

- 条件分岐「if 文, else 文」

- 論理演算子「&&（かつ）, ||（または）」
