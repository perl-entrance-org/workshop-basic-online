# Perl 入学式 第 1 回

## Perl 導入編



---

## 諸注意

### 会場について

- 飲食の可否

- 手洗いの場所

- 喫煙場所

---

## 諸注意

### 講義の進行について

- 講義中の疑問点

- うまくプログラムが動かない

- 分からない

上記についてはサポーターが適宜回答やアドバイスを Discord でおこないます。

テキストまたは音声チャットにて個別にサポートしますので、気軽に質問してください。

- <a href="https://discord.gg/2QNqVyk" target="_blank">Discord | 会話や交流が楽しめるプラットフォーム</a>

---

## 諸注意

### 講義環境について

- Youtube

- スライド共有ツール

- Discord

---

## 諸注意

### 本日のサポーター紹介



---

# Perl 入学式の学習環境について

---

## Perl 入学式の学習環境について

### 利用するツール

それぞれのツールへのリンクは <a href="https://perl-entrance.connpass.com/event/228086/" target="_blank">connpass のイベントページ</a>に掲載しています。

- 動画の中継：Youtube Live

- Perl 実行環境

  - Windows：msys2 上の Perl（<a href="https://github.com/perl-entrance-org/workshop-basic-online/blob/master/0th/slide.md" target="_blank">第 0 回 環境構築編</a>）
  - macOS：システムにインストールされている Perl
  - 予備：<a href="https://wandbox.org" target="_blank"><ruby>Wandbox<rt>ワンドボックス</rt></ruby></a>

- コミュニケーション：<a href="https://discord.com/channels/741610576609935430/741610901303721998" target="_blank"><ruby>Discord<rt>ディスコード</rt></ruby></a>

- 講義スライド共有：<a href="https://appslideshare.tugougaii.site/slide/Online2021?p=1&c=pre-left&cf=1" target="_blank">スライド同期くん</a>

---

## Perl 入学式の学習環境について

### オンライン時のおすすめの学習環境

- スマホ・タブレットで Youtube Live を視聴

- PC で スライド同期くん ・ Perl 実行環境 ・ Discord を開く

仮想デスクトップ機能・マルチディスプレイ、タブレットを併用するなどしながら学習を進めましょう。

---

## Perl 入学式の学習環境について

### Wandbox

手元の PC に Perl 実行環境を用意できない場合には、 Wandbox という Web サービスを利用します。

1. ブラウザで <a href="https://wandbox.org" target="_blank">Wandbox</a> のページを開きます。

2. 左上に `gcc HEAD 11.0.1 20xxx` というプルダウンメニューがありますのでクリックします。

  <img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox01.png" align='left'>

  <br clear="all">

---

## Perl 入学式の学習環境について

### Wandbox

3. メニューの右側から Perl を選択します。

4. 左側の Perl のバージョンから `Perl 5.34.0` を選択します。

  <img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox02.png" align='left'>

  <br clear="all">

---

## Perl 入学式の学習環境について

### Wandbox

5. `Load template` のリンクをクリックします。

  <img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox03.png" align='left'>

  <br clear="all">

---

## Perl 入学式の学習環境について

### Wandbox

この時点で、Perl のプログラムが右側のテキストエリアに表示されています。このテキストエリアをエディタと呼びます。

6. 下にある `Run (or Ctrl+Enter)` をクリックします。

  <img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox04.png" align='left'>

  <br clear="all">

---

## Perl 入学式の学習環境について

### Wandbox

7. 下にプログラムの実行結果が表示されます。この黒い部分をターミナルと呼びます。

  <img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox05.png" align='left'>

  <br clear="all">

このようにエディタで入力を行い、ターミナルで実行結果を確認しながら学習を進めていきます。

---

## Perl 入学式の学習環境について

### Wandbox

エディタ部は `+` でタブを増やすことができます。

ただし、`Run (or Ctrl+Enter)` で実行されるのは一番左端のタブのみとなります。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox06.png" align='left'>

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox07.png" align='right'>

<br clear="all">

---

## Perl 入学式の学習環境について

### Wandbox

Wandbox で書いたコードを共有することもできます。

共有すると URL が発行されます。コードの確認を依頼する際にとても便利な機能です。

共有すると URL に紐づいてコードがインターネット上に残ります。気をつけてください。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/wandbox08.png" align='left'>

<br clear="all">

---

## Perl 入学式の学習環境について

### スライド同期くん

講師が見ているスライドを受講生の手元で反映するためのツールです。

画面下にある「スライドを同期する」にチェックボックスを入れ、 講師のアカウントを選択します。

練習問題を解く時など、じっくりスライドを確認する時はチェックを外してください。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/appslideshare01.png" align='left'>

<br clear="all">

---

## Perl 入学式の学習環境について

### スライド同期くん

ネットワークの環境により、講師が行っている講義と Youtube Live で配信される映像がずれることが予想されます。

「同期の遅延」で設定されている 0 秒 のところをクリックすると、スライドをめくるタイミングを遅らせることができます。

まずは 30 秒を基準にして設定し、Youtube Live で配信される講師スライドに合わせて調整を行ってください。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/appslideshare02.png" align='left'>

<br clear="all">

---

## Perl 入学式の学習環境について

### スライド同期くん

スライドめくりなど、利用方法については画面右上のリンクで表示が可能です。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/appslideshare03.png" align='left'>

<br clear="all">


---

# ターミナルとシェル入門

---

## CUI（CLI）

macOS も Linux も、Windows と同じく <ruby>GUI<rt>ジーユーアイ</rt></ruby> で操作可能です。

ですが、プログラミングをする上で <ruby>CUI<rt>シーユーアイ</rt></ruby> (<ruby>CLI<rt>シーエルアイ</rt></ruby>) は避けて通れません。

- CUI ... <ruby>Character User Interface<rt>キャラクター ユーザー インターフェース</rt></ruby>

- CLI ... <ruby>Command Line Interface<rt>コマンド ライン インターフェース</rt></ruby>

これらは文字によって操作を行うインターフェイスのことを指します。

- Windows ならば、コマンドプロンプトに該当します。

- Linux / macOS ではターミナルに該当します。

---

## CUI（CLI）

実際に CUI（CLI）を操作して体験してみましょう。

---

## ターミナルとシェル

プログラムの起動や制御をCUI（CLI）で行うプログラムのことを、**シェル**と呼びます。

ターミナルを開くと、シェルを使った操作が出来るようになります。

![シェル](https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/shell.png)

---

## ターミナルの開き方（macOS）

Launchpadなどから「ターミナル」を選択し、起動します。

<small>ターミナルは頻繁に起動するため、Dockへ追加しておくことをおすすめします。</small>

![ターミナルのアイコン](https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/terminal.png)

↑ターミナルのアイコン

---

## プロンプト

ターミナルでは入力待ちの時に**プロンプト**が表示されます。

<ruby>zsh<rt>ズィーシェル</rt><ruby>, macOS Catalina(10.15)以降
```zsh
%
```

<ruby>Bash<rt>バッシュ</rt></ruby>, MSYS32, macOS Mojave(10.14)以前の標準, Linux
```bash
$
```

これら行頭に表示される記号は「入力受付の状態」を示すものです。この記号は入力する必要はありません。

また、プロンプトはカスタマイズも可能です。興味がある人はGoogleで「プロンプト カスタマイズ」等で検索してみましょう。

---

## シェルで使えるコマンド集

Perl入学式の中でもよく使うコマンドを紹介します。

シェルには、これから紹介する以外にも様々なコマンドがあります。

OSやシェルの種類によって使えるもの、使えないものがありますが、使いこなせば作業の負担を軽減することができます。

参考図書：<a href="https://system-admin-girl.com/" target="_blank">まんがでわかるLinux シス管系女子</a>

---

## コマンド集（`ls`）

```bash
$ ls
デスクトップ ダウンロード (以下略)
```
`ls` は、現在いるディレクトリにあるファイルを表示します。

コマンド名は 'list segments' の頭文字を取ったものです。

`ls -a` は、`.`(ドット) で始まる、通常は見えない隠しファイルも含め、すべて表示します。

このように、コマンドに追加の命令（`-a` の部分）をつけて動作を変えることができます。

この追加の命令を<ruby>引数<rt>ひきすう</rt></ruby>といいます。

---

## コマンド集（`pwd`）

```bash
$ pwd
/home/username
```
`pwd` は、現在いるディレクトリの場所（パス）を表示します。

コマンド名は 'print working directory' の頭文字を取ったものです。

---

## コマンド集（`mkdir`）

```bash
$ mkdir sample
$ ls
sample デスクトップ ダウンロード (以下略)
```
`mkdir DIRECTORY` は、`DIRECTORY` というディレクトリを作ります。

コマンド名は 'make directory' を短縮したものです。

---

## コマンド集（`cd`）

```bash
$ cd sample
$ pwd
/home/username/sample
$ cd ..
$ pwd
/home/username
```
`cd DIRECTORY` で、`DIRECTORY` に移動します。

コマンド名は 'change directory' を短縮したものです。

上の階層のディレクトリは `..` で表示されます。`cd ..` とする事で、上の階層に移動します。

---

## コマンド集（`touch`）

```bash
$ touch sample1 sample2
$ ls
sample1 sample2
```
`touch` には2つの役割があります。 `touch FILENAME` とした時・・・
- FILENAME がすでに存在する場合には、ファイルのアクセス日時と更新日時を現時刻に書き換える
- FILENAME が存在しない場合には、空のファイルを生成する

---

## コマンド集（`rm`）

```bash
$ ls
sample1 sample2
$ rm sample1
$ ls
sample2
```
`rm FILENAME` は、`FILENAME` のファイルを削除します。 `FILENAME1 FILENAME2` のように半角スペースで区切ることで複数個指定することができます。

コマンド名は 'remove' を短縮したものです。

この `rm` コマンドによる削除は即時反映されます。Windows の「ゴミ箱」に当たる機能はありません。注意しましょう。

---

## コマンド集（`rmdir`）

```bash
$ mkdir del_sample
$ ls
del_sample
$ rmdir del_sample
$ ls
$
```
`rmdir DIRNAME` は、`DIRNAME` のディレクトリを削除します。ただしディレクトリは空である必要があります。

コマンド名は 'remove directory' を短縮したものです。

ディレクトリの中身ごとを削除するときは、先に紹介した `rm` に引数をつけた `rm -r DIRNAME` で削除します。

`-r`という引数は <ruby>recursive<rt>リカーシブ</rt></ruby>（再帰的） を意味しています。

---

## コマンド集（`cp`）

```bash
$ ls
sample2
$ cp sample2 sample1
$ ls
sample1 sample2
```
`cp SOURCE_FILE DEST_FILE` は、`SOURCE_FILE` を `DEST_FILE` にコピーします。

コマンド名は 'copy' を短縮したものです。

ディレクトリをコピーするときは、引数 `-r` を指定し、`cp -r SOURCE_DIR DEST_DIR` となります。

---

## コマンド集（`mv`）

```bash
$ ls
sample1 sample2
$ mv sample1 sample_text
$ ls
sample_text sample2
```
`mv SOURCE_FILE DEST_FILE` で、`SOURCE_FILE` を `DEST_FILE` に移動します。

コマンド名は 'move' を短縮したものです。

ファイルやディレクトリの名前を変更する為にも使えます。

---

## コマンド集（`start`）

### [Windowsユーザ向け]

```bash
$ start .
```
`start DIRECTORY` で、`DIRECTORY` を Windows　標準の Explorerというファイルマネージャで開きます。

`start` は対象となるファイルの種類によって動作が変わります。

例えばディレクトリが対象ならば上記のように Explorer で表示、テキストならばテキストエディタで表示、エクセルファイルなら Excel で開く、という動作をします。

---

## コマンド集（`open`）

### [macOSユーザ向け]

```bash
$ open .
```

`open DIRECTORY` で、`DIRECTORY` を macOS 標準の Finder というファイルマネージャで開きます。

`open` は対象となるファイルの種類によって動作が変わります。

例えばディレクトリが対象ならば上記のように Finder で表示、テキストならばテキストエディタで表示、という動作をします。

---

## 練習問題
1. **ホームディレクトリ**に `perl-entrance` というディレクトリを作りましょう。

  ホームディレクトリとは、ユーザごとに用意された作業場所のようなものです。

  `cd` とだけ入力してエンターキーを押すと、ホームディレクトリに移動します。

2. 作った `perl-entrance` ディレクトリの中に移動しましょう。

3. **カレントディレクトリ**のパスを `pwd` で表示し、その後に、 `start` もしくは `open` を使って、ファイルマネージャで開いてみましょう。

    現在いるディレクトリをカレントディレクトリと言います。



---

# Visual Studio Code 入門

---

## Visual Studio Code 入門

### エディタ

コードを書く時に最も使う道具、それがエディタです。

プログラミングに特化した様々なエディタが開発されていますが、Perl 入学式では Visual Studio Code を推奨しています。

特にこだわりのない方は、今回紹介する Visual Studio Code を利用してください。

もちろん、<ruby>Emacs<rt>イーマックス</rt></ruby> や <ruby>Vim<rt>ヴィム</rt></ruby>、サクラエディタなど、既に使い慣れているエディタがある方はそちらをお使いください。

---

## Visual Studio Code 入門

### ダウンロード

Visual Studio Code の公式ページ <a href="https://code.visualstudio.com/" target="_blank">Visual Studio Code - Code Editing. Redefined</a> へアクセスし、 Download をクリックします。

---

## Visual Studio Code 入門

### インストール（Windows）

ダウンロードした `VSCodeUserSetup-**.exe` をダブルクリックすると、インストールが開始されます。

`**` としたところにはバージョン番号が入ります。

インストール後は、スタートメニューから「Visual Studio Code」をダブルクリックすれば Visual Studio Code が起動します。

インストール直後は自動的に起動します。

---

## Visual Studio Code 入門

### インストール（macOS）

ダウンロードした `VSCode-darwin-stable.zip` をダブルクリックすると、`Visual Studio Code.app` が生成されます。

これをダブルクリックすれば Visual Studio Code が起動します。

「 "Visual Studio Code.app" はインターネットからダウンロードされたアプリケーションです」という警告が出た場合、「開く」をクリックします。

---

## Visual Studio Code 入門

### 日本語化

メニューが英語でとっつきにくい場合には、日本語化することが可能です。

1. ウィンドウ左上の View -> Command Palette から `Configure Display Language` と入力して候補を選択する。

1. Install Addicional Languages を選択する。

1. 左側のメニューから「日本語」を選択し、緑色の「Install」ボタンを押す。

1. 一度 Visual Studio Code を閉じて、再度起動する。

1. 英語表記に戻す場合には、1. から en を選択してから Visual Studio Code を再起動します。

---

## Visual Studio Code 入門

### ファイルを開く

- 左上メニューから

  - Windows 版：ファイル -> ファイルを開く（または Ctrl を押しながら <ruby>o<rt>オー</rt></ruby>）

  - macOS 版：ファイル -> 開く（または command を押しながら <ruby>o<rt>オー</rt></ruby>）

「Ctrl を押しながら <ruby>o<rt>オー</rt></ruby>」などの、カーソルではなく、キーボードの上のキーのみで操作するための組み合わせを **ショートカット** といいます。

---

## Visual Studio Code 入門

### ファイルを保存する

- 左上メニューの ファイル -> 保存（Windows / Mac 共通）

  - Windows 版ショートカット（Ctrl を押しながら s）

  - Mac 版ショートカット（command を押しながら s）


---

## Visual Studio Code 入門

### ファイル編集手順

`perl-entrance` ディレクトリ内に `profile.txt` という空のファイルを用意して、Visual Studio Code で編集する例です。

1. `cd` コマンドを利用し、`perl-entrance` フォルダに移動する

1. `touch` コマンドを使い、`profile.txt` を作成する

1. Windows（msys2）の場合は `start . ` で Explorer を 、macOS の場合は `open . ` で Finder を開き、中の `profile.txt` を Visual Studio Code にドラッグ＆ドロップする

1. 編集が終わったら Visual Studio Code の上にある ファイル メニューから 保存 を選択する


---

# Hello, world!

---

## Hello, World!

### 最初のプログラム

プログラム言語の学習において、最初に解説するのは

「`Hello, world!` と表示するプログラム」

とされています。

作法に乗っ取り、`Hello, world!` を表示する Perl プログラムに挑戦してみましょう。

---

## Hello, World!

### ローカル開発環境でのプログラム作成

```perl
print "Hello, world!\n";
```
`hello.pl` というファイルを作成し、エディタで上記のプログラムを書いて保存します。

- `print` は、ターミナルに文字を出力する命令です。

- <ruby>`\n`<rt>バックスラッシュ エヌ</rt></ruby>は改行を意味します。

- Mac の日本語キーボードの場合、`\` は Option + `￥`キーで入力できます。

- 文の最後にはセミコロン( `;` )が必要です。文の区切りという意味です。

---

## Hello, World!

### ローカル開発環境でのプログラム作成

プログラムの保存が終わったら、ターミナルで以下のように打ち込みます。

```perl
$ perl hello.pl
```

`perl` の引数に実行したいファイル名を与えると、そのファイルが Perl で実行されます。

```perl
$ perl hello.pl
Hello, world!
```

無事、`Hello,world!` が表示されたでしょうか？

---

## Hello, World!

### wandbox でのプログラム作成

```perl
print "Hello, world!\n";
```

Wandbox の画面上部にあるエディタ（入力欄）に上記の文字を入力します。

- `print`は、ターミナルに文字を出力する Perl の命令です。

- <ruby>`\n`<rt>バックスラッシュ エヌ</rt></ruby>は改行を意味します。

- Mac の日本語キーボードの場合、`\`は Option + `￥`キーで入力できます。

- 文の最後にはセミコロン( `;` )が必要です。文の区切りという意味です。

---

## Hello, World!

### wandbox でのプログラム作成

Wandbox の入力欄の下にある [Run (or Ctrl+Enter)] ボタンを押します。

入力欄の下にあるターミナルに `Hello, world!` と表示されていれば成功です。

<a href="https://wandbox.org/permlink/noU3msxlbzeUY4OO" target="_brank">hello.pl [wandbox] での作成例</a>

---

## Hello, World!

### おまじない

```perl
#!/usr/bin/env perl
use strict;
use warnings;
```

プログラムには、問答無用で書いておく「おまじない」ともいうべきものがあります。

Perl では上記の 3 行が「おまじない」となります。

---

## Hello, World!

### おまじない

- `#!/usr/bin/env perl` ... <ruby>shebang<rt>シバン</rt></ruby> と呼ばれるもので、このプログラムが perl で動くことを明示する

- `use strict;` ... 厳密な書式で書くことを強制し、未定義の変数があれば警告する

- `use warnings;` ... 望ましくない記述を警告する

これらの「おまじない」により、わかりやすく堅牢なコードを書くことができます。

以降、Perl 入学式のサンプルコードではスペースの都合により「おまじない」を省略します。**書かれているもの**として扱ってください。

---

## 練習問題 `entrance.pl`

「この勉強会の名前」と「今日の日付」を表示するプログラム `entrance.pl` を書いてみましょう。

`print`文を 2 つ利用してください。以下はヒントです。

- プログラムは上から順に実行されます。

- 「おまじない」を忘れない事！

- 文末に `;` を入れるのを忘れないでください。

- 可読性（読みやすさ）向上のため、セミコロンの後に改行を入れて複数の行にしましょう。

---

## 練習問題 `newline.pl`

```perl
print "hello! \n\n\n\n\n world!";
```

上記のプログラムはどのような結果になるか考えてみてください。

また、上記のプログラムを入力、またはコピペして実行し、どのような結果になるかを確認してください。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションしてみてください。

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# スカラー変数

---

## スカラー変数

### コメント

```perl
print "Hello World!";   # -- ここがコメント部 --

# print "Hello! Perl Entrance!"; 行頭に # があるため、printは実行されない
```

- 各プログラム言語にはプログラムをわかりやすくするために、コメントを入れる仕組みがあります。

- Perl では、井桁記号 `#` より右にある文字列は全てコメントとして扱われます。

- コメントは実行されません。

- Perl 入学式のサンプルコードでも、 コメントを使ってプログラムに補足を行います。

---

## スカラー変数

### 変数とは?

- 「**<ruby>変数<rt>へんすう</rt></ruby>**」は、いわば「データを格納できる箱」です。

- Perl の変数には、「スカラ変数」、「<ruby>配列<rt>はいれつ</rt></ruby>」、「ハッシュ（<ruby>連想配列<rt>れんそうはいれつ</rt></ruby>）」という 3 つの種類があります。

---

## スカラー変数

### Perl の 3 種類の変数

3 種類の変数は、それぞれの変数の型を示す **シジル（sigil）** という記号で区別されます。

1. スカラ変数（<ruby>`$`<rt>ダラー</rt></ruby>）：1 つの要素を格納する。

1. 配列（<ruby>`@`<rt>アットマーク</rt></ruby>）：複数の要素を「順番に」格納する。

1. ハッシュ（<ruby>`%`<rt>パーセント</rt></ruby>）：複数の要素を「key名 => 値」の組み合わせで格納する。

配列とハッシュは次回以降に解説します。

---

## スカラー変数

### スカラー変数を利用する

```perl
my $num;    # 変数を宣言する

$num = 1;   # 右辺の 1 を左辺の $num に入れる

print "$num\n"; # \n は改行
```

- 変数を初めて使うときは、先頭に `my` をつけます。

- 変数を利用できるようにすることを「**変数を宣言**する」といいます。

- スカラ変数の先頭には、`$num` のように `$` をつけます。 `$` は`スカラ（scalar）`の `S` 、と覚えるとよいでしょう。

---

## スカラー変数

### スカラー変数を利用する

```perl
my $num;    # 変数を宣言する

$num = 1;   # 右辺の 1 を左辺の $num に入れる

print "$num\n";
```

- `=` という記号（**代入演算子**）を使うことで、「右辺の値」を「左辺のスカラー変数 `$foo` 」に入れる（代入する）ことができます。

- 小学校で学んだ算数で、両辺の値が等しいことを指す記号である `=` ですが、プログラムで使う `=` とは記号こそ同じでも意味が異なります。

- 代入演算子については、後ほど四則演算の項でも説明します。

---

## スカラー変数

### 仮の変数名（メタ構文変数）

プログラム言語の参考書には以下の単語が変数名として利用されることがあります。

- foo, bar, baz

- hoge, piyo, fuga

---

## スカラー変数

### 仮の変数名（メタ構文変数）

- これら「意味のない名前」をつけることで、「サンプル用」「例示用」の変数ということを明示するためです。

- `foo`, `bar`, `buz` このような単語を使った変数を「**メタ構文変数**」と呼称します。

- これらのメタ構文変数は現場のプログラムでは利用してはいけません。

- 変数名には、明確な名前をつけるようにしましょう。また、現場ごとの命名規則に従うことも大事です。

---

## スカラー変数

### 変数名に使える文字

- 変数名として使える文字は以下です。

  - 大文字・小文字の英数字
  - アンダースコア(`_`)

- さらに、変数名の先頭文字には以下の文字のみ利用が可能です。
  - 英文字
  - `_`

---

## スカラー変数

### 長い変数名の記述

複数の単語で変数名をつける時は、単語間を <ruby>`_`<rt>アンダースコア</rt></ruby> で繋げる場合が多いです。

このような `_` で単語をつなげる記法をスネークケース（snake_case）といいます。

Perl では基本的にスネークケースを推奨しています。

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

- 宣言した変数を 2 回目以降に使うときは、`my` は不要です。`my` は変数を宣言する初回のみ必要です。

- 値が入っているスカラー変数に別の値を代入すると、変数の中身が上書きされます。

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

### クォーテーションによる表示の違い

```perl
my $foo = 1;

print "$foo\n"; # " ダブルクォーテーションで囲うと 1 が表示される

print '$foo\n'; # ' シングルクォーテーションで囲うと $foo\n が表示される
```

- `" "` ダブルクォーテーションで変数を囲うと、その変数の中身が表示されます。

- `' '` シングルクォーテーションで変数を囲うと、変数の中身ではなく、書いてあるままに表示されます。

---

## スカラー変数

### エラーメッセージ

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $foo = "Hello"  # "Hello"の後にセミコロンがない
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

- よくありがちなエラーとして、行末の **セミコロン `;`** を忘れるというものがあります。

- さきほどの場合、6 行目の print の周辺（上下の行）でシンタックスエラーが発生しているという意味になります。

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

## 練習問題 `scalar_practice1.pl`

- 1 から 9 までの好きな数字をスカラー変数に格納し、それらの値を表示するプログラム `scalar_practice1.pl` を作成しよう！

  - `$number` や `$num` や `$int` など、数字を入れるのに相応しい変数名を利用してみましょう。

- 「おまじない」の 3 行を忘れずに！

---

## 練習問題 `scalar_practice2.pl`

- 好きなプログラミング言語の名前をスカラ変数に格納し、それらの値を表示するプログラム `scalar_practice2.pl` を作成しよう！

  - `$language` や `$lang` など、変数の中身が推測できる変数名を利用しましょう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---



# 四則演算

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

算数の掛ける `×` は <ruby>`*`<rt>アスタリスク</rt></ruby>、割る `÷` は <ruby>`/`<rt>スラッシュ</rt></ruby> と、算数と異なる記号を使います。

---

## 四則演算

### 基本的な演算子(べき乗・剰余)

```perl
my $foo = 4;
my $bar = 2;
my $result;

# べき乗 **
$result = $foo ** $bar;     # 4 の 2乗 を $result に代入する
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
$bar /= $foo;      # $bar = $bar / $foo と同じ
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

前置インクリメントと後置インクリメントを直接 `print` した場合、以下のような違いがでます。

```perl
$i = 0;
print $i++;  # prints 0

$j = 0;
print ++$j;  # prints 1
```

誤動作の素なので、表示用の変数を用意して代入してから `print` した方が無難です。

前置インクリメントと後置インクリメントの違いについては perldoc の [perlop](https://perldoc.jp/docs/perl/perlop.pod#Auto-increment32and32Auto-decrement)を参照してください。

---

## 練習問題 `keisan1.pl`

以下の問題を順番に書いて表示してみよう。

1. 変数 `$foo` に 10, `$bar` に 3 を代入し、それぞれを画面に表示させる。

1. 変数 `$foo` から 変数 `$bar` を引いた数を画面に表示させる。

1. 変数 `$foo` を 変数 `$bar` で割った時の余りを表示させる。

---

## 練習問題 `keisan2.pl`

以下の問題を順番に書いて表示してみよう。

1. 変数 `$num` に 8 を代入し画面に表示させる。

2. 省略記法を使って、変数 `$num` を 10 倍し、画面に表示させる

3. `$num` を 3 回インクリメントし、画面に表示させる。（正しくプログラムが書けていれば、83 と表示されるはずです。）

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# 文字列連結

---

## 文字列連結

### 文字列連結

```perl
my $word = 'word';
my $num = 123;

print "$word$num\n";         # word123

print $word . $num . "\n";   # word123

my $str = $word . $num;
print $str . "\n";          # word123
```

- `.` (ドット)で文字列や変数を連結することができます。

- 連結した文字列や変数を、別の変数に代入することも可能です。

---

## 文字列連結

### 数値演算と文字列連結は分ける

演算の優先順位と結合方向(演算の向き)は perldoc の [perlop](http://perldoc.jp/docs/perl/5.30.0/perlop.pod) の項に詳細が記載されています。

しかし、これを覚えるのも、他の人に読んでもらうのも大変な労力です。以下のように、わかりやすい記述を心がけましょう。

- `( )` で演算の順番を明確に示す

- 数値演算と文字列の連結は分けて書く

---

## 文字列連結

### 演算の順番（四則演算の補足）

```perl
my $num1 = 2 + 4 * 3;
print "$num1\n";    # 14

my $num2 = ( 2 + 4 ) * 3;
print "$num2\n";    # 18
```

- 演算の順序は、 `( )` を付けることで変更することができます。

- 通常の算数と同じく、Perl も「足し算･引き算」より「掛け算･割り算」の優先順位が高くなっています。

- 下段の例では `( )` を付けることで優先順位を変え、「足し算」を先に計算させています。

---

## 文字列連結

### 数値演算と文字列連結の混合

```perl
my $now                 = 2021;

my $start_perl_entrance = 2012;

print "Perl入学式は開講" . $now - $start_perl_entrance . "年です\n";
# -2012年です
```

上のプログラムは、「-2012 年です」と、おかしな結果になります。

これは数値演算と文字列連結を混ぜた「アンチパターン（良くない例）」です。

---

## 文字列連結

### 数値演算と文字列連結の混合

1. まず 「`Perl入学式は開講`」（文字列） と 「`2021`」（数字） が文字連結されます。（結果：「今年は開講 2021」）

1. 次に、「`今年は開講2021`」（文字列） から 「`2012`」（数字）を引き算しようとし、おかしな結果になります。

---

## 文字列連結

### 数値演算と文字列連結は分ける

```perl
my $now                 = 2021;

my $start_perl_entrance = 2012;

print "Perl入学式は開講" . ($now - $start_perl_entrance ). "年です\n"; # Perl入学式は開講9年です
```

文字と数値計算は `( )` を用いて明確に分け、その後に連結するのが確実です。

---

## 文字列連結

### 数値演算と文字列連結は分ける

```perl
my $now                 = 2021;

my $start_perl_entrance = 2012;

my $period = $now - $start_perl_entrance;
print "Perl入学式は開講" . $period . "年です\n"; # Perl入学式は開講9年です
```

計算結果を別の変数に入れてから連結するのも良い手法です。



---

# コラム：YAPCへ行こう！

---

## コラム：YAPCへ行こう！

年に一度、Perl のお祭りが開かれます。

それが <ruby>YAPC<rt>ヤプシー</rt></ruby> と呼ばれるイベントです。

2015年までは東京で、2016年からは日本各地で会場を移しつつ開催しています。

2020年の京都開催はコロナ禍のために延期になったものの、Japan.pm というオンラインイベントが開催されました。

Perl や Perl を利用したシステムについての発表が行われます。

---

## コラム：YAPCへ行こう！

これまで各地で開催されてきたYAPCのイベントページです。

画面上部の TIMETABLE からどのような発表が行われたのか、確認ができます。

YAPC::Asia Tokyo 2015
http://yapcasia.org/2015/

YAPC::Hokkaido 2016 SAPPORO
https://yapcjapan.org/2016hokkaido/

YAPC::Kansai 2017 OSAKA
https://yapcjapan.org/2017kansai/

YAPC::Fukuoka 2017 HAKATA
https://yapcjapan.org/2017fukuoka/

---

## コラム：YAPCへ行こう！

YAPC::Okinawa 2018 ONNASON
https://yapcjapan.org/2018okinawa/

YAPC::Tokyo 2019
https://yapcjapan.org/2019tokyo/

Japan.pm 2021
https://yapcjapan.connpass.com/event/198170/

---

## コラム：YAPCへ行こう！

発表には、初心者には難しい内容のものもあります。

しかし気負わずに「こんな世界もあるんだ〜」程度に聴講すると、数年後にふと繋がることもあります。

懇親会に参加すると、さらに業界や Perl 界隈の裏話が聴けたりもします。

Perl入学式のサポーターは大概参加しています。

皆さんの参加をお待ちしています。


---

# コマンドライン<br><ruby>引数<rt>ひきすう</rt></ruby>

---

## コマンドライン引数

### 入力とは？

- これまでは、あらかじめプログラムに書かれた文字や数字を表示してきました。これを「出力」といいます。

- 出力に対して、「入力」はプログラムやコンピュータに様々な数値や文字列を与えることをいいます。

- この「入力」を用いて、プログラムの実行の都度、中身や出力を変えることができます。

- コマンドライン引数は、プログラムが入力を受け取る方法の一つです。

---

## コマンドライン引数

### コマンドライン引数を設定する（ターミナル）

ターミナルの場合には、以下のようにしてコマンドライン引数を設定します。

`"arg"` とあるのが引数です。（`arg` は 引数 `argument` という語の略語です）

```bash
$ perl single.pl "arg"
```

複数の引数を受け取る場合には、空白で区切って列挙します。

```bash
$ perl multi.pl "arg1" "arg2"
```

この `arg` や `arg1`, `arg2` にある文字や数字がプログラムに入力されます。

---

## コマンドライン引数

### コマンドライン引数を設定する（Wandbox）

Wandbox の場合には、画面左上、バージョン情報の下にある `Runtime options:` の入力欄に「1 つの引数につき 1 行」で入力します。

<img src="https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/2nd/image/wandbox10.png" align='left'>

<br clear="all">

---

## コマンドライン引数

### Perl でコマンドライン引数を受け取る

まず、コマンドライン引数を受け取るために、プログラム側では変数を用意し、`shift` で代入します。

```perl
# コマンドライン引数の左から1番目の値を受け取り、変数 $first に代入する
my $first = shift;

# コマンドライン引数の左から2番目の値を受け取り、変数 $second に代入する
my $second = shift;

print 'first is ' . "$first\n";      # $first を表示する
print 'second is ' . "$second\n";    # $second を表示する
```

---

## コマンドライン引数

### Perl でコマンドライン引数を受け取る

ターミナルでコマンドライン引数をつけて実行

```bash
$ perl season.pl "autumn"
```

コマンドライン引数を受け取るプログラム例
```perl
my $season = shift;   # コマンドライン引数 autumn を受け取り、
                      # 変数 $season に格納する

print "Alice loves $season\n";    # Alice loves autumn
```

このように、コマンドライン引数によってプログラムの実行結果を変えることが可能です。

---

### 練習問題 `hello_name.pl`

コマンドライン引数にあなたの名前をローマ字（アルファベット）で入力して実行すると、

`Hello, あなたの名前!`

と表示されるようなプログラム `hello_name.pl` を作成しよう。

```bash
$ perl hello_name.pl Taro
Hello, Taro!
```

---

## 練習問題 `calc_argument.pl`

コマンドライン引数 から 0 以外の整数を 2 つ読み込み、 それらを四則演算（`+`, `-`, `*`, `/`）した結果を下の例のように表示するプログラム `calc_argument.pl`を作成しよう。

最初のコマンドライン引数に `1` 、次に `2` を入れた場合、以下のように表示されるプログラムです。

```bash
$ perl calc_argument 1 2
1 + 2 = 3
1 - 2 = -1
1 * 2 = 2
1 / 2 = 0.5
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# <ruby>if<rt>イフ</rt></ruby> 文

---

## if 文

### 条件分岐

プログラムは上から下へ順番に処理されていきます。

しかし、変数の状態に応じてプログラムの動きを分岐させることができます。これを **条件分岐** といいます。

条件分岐には様々なパターンがありますが、それらを **<ruby>真<rt>しん</rt></ruby>** と **<ruby>偽<rt>ぎ</rt></ruby>** の 2 つの組み合わせで表現します。

真 または 偽 の判断に用いる式を **条件式** といいます。

---

## if 文

### 条件式

条件式、といっても難しいことではありません。

以下の条件式は「信号が青であるか、青ではないか」を判断し、その結果行う行動を示しています。

普段おこなっている人間の判断に近いものです。

- 信号が青である（真）なら、横断歩道を渡る

- 信号が青でない（偽）なら、待機する

---

## if 文

### Perl における真値

条件式の結果は 真 または 偽 となります。

Perl では、次のページの 5 つの値が「偽」の値として扱われます。

これ以外の値は、Perl では全て「真」として扱われます。

例示などで「真の値」が必要なときは数字の **1** が利用されます。

---

## if 文

### Perl における偽値

1. 数値「`0`」
1. 文字列「`'0'`」
1. 文字列「`''`」（シングルクォーテーションの連続、間に何もない。空文字ともいう。）
1. 空のリスト「`()`」 Perl 入学式では扱わない
1. `undef`（値が入っていないスカラー変数）Perl 入学式では扱わない

---

## if 文

### Perl には true/false がない

他のプログラミング言語では、<ruby>`true`<rt>トゥルー</rt></ruby> や <ruby>`false`<rt>フォルス</rt></ruby> という単語に 真 または 偽 の意味を持たせたキーワードとして扱うことがあります。

しかし、Perl は `true` や `false` といった、ひと目で真偽値であることがわかる組み込みのキーワードはありません。

あくまで、Perl では先に述べた 5 つの偽値のみが偽、それ以外はすべて真となります。

---

## if 文

### if 文の構文（擬似プログラム）

```perl
if ( 条件式 ) {
    条件式の結果が 真 の場合に実行されるブロック;
}
else {
    条件式の結果が 偽 の場合に実行されるブロック;
}
```

- 丸括弧 `( )` の中に条件式を書く。

- 波括弧 `{ }` の中に 真の場合のプログラムを書く。なお、`{ }` で囲まれた部分を **ブロック** と呼ぶ。

- 偽の場合にもプログラムが必要な場合には <ruby>`else`<rt>エルス</rt></ruby> の後のブロックに書く。

---

## if 文

### if 文の構文（擬似プログラム）

先の青信号の例で例えてみます。

```perl
if ( 信号が青だ ) {
    信号を渡る
}
else {
    待機する
}
```

---

## if 文

### if 文の構文（Perl のプログラム）

```perl
if ( 1 ) {           # 条件式が明示的な「真」の値である 1
    print "OK\n";    # 条件が「真」なので出力される
}
else{
    print "NG\n";    # 実行されず、したがって出力されない
}
```

---

## if 文

### if 文の構文（Perl のプログラム）

```perl
if ( 0 ) {           # 条件式が「偽」の値である 0
    print "OK\n";    # 実行されない
}
else{
    print "NG\n";    # 条件が「偽」なので出力される
}
```

---

## 比較演算子

---

## 比較演算子

### 数値の比較演算子

if 文は条件式によって実行結果が変わります。

この条件式の中で利用するのが **比較演算子** です。まずは数値の比較演算子を紹介します。

```perl
== # 右辺と左辺が等しいならば「真」
!= # 右辺と左辺が等しくないならば「真」

<  # 右辺より左辺が小さいならば「真」
>  # 右辺より左辺が大きいならば「真」

<= # 右辺が左辺以上ならば「真」
>= # 右辺が左辺以下ならば「真」
```

---

## 比較演算子

### 数値を使った条件分岐の例

```perl
my $num = 1;
if ( $num == 1 ) { # <= ( ) の中が条件式！

    print "OK\n"; # こちらが表示される
}
else {
    print "NG\n";
}
```

条件式は `( )` の中の `$num == 1` です。

---

## 比較演算子

### 数値を使った条件分岐の例

```perl
my $num = 1;
if ( $num == 1 ) { # <= ( ) の中が条件式！

    print "OK\n"; # こちらが表示される
}
else {
    print "NG\n";
}
```

`==` は **右辺と左辺を数値として比較** します。

条件式内で `$num` が `1` と等しい場合に「真」となり、`OK` という文字が表示されます。

`$num` が `1` と等しくない場合は、「偽」となり `else` に処理が移って `NG` という文字が表示されます。

---

## 比較演算子

### 数値比較のよくあるまちがい (1)

```perl
my $num == 1; # NG

my $num =  1; # OK
```

数値の比較に用いる `==` と、代入演算子の `=` を間違えています。

この場合、実行すると以下の警告が出ます。

```plaintext
Useless use of numeric eq (==) in void context
```

---

## 比較演算子

### 数値比較のよくあるまちがい (2)

```perl
my $num = 1;
if ($num =  1) { print $num } # NG
if ($num == 1) { print $num } # OK
```

条件式に注目してください。代入演算子の `=` と、数値の比較に用いる `==` を間違えています。

この場合、実行すると以下の警告が出ます。

```perl
Found = in conditional, should be ==
```

---

## 比較演算子

### 文字列の比較演算子

文字列を比較する場合は `eq` や `ne` といった単語を用いた比較演算子を使います。

```perl
eq  # equal
ne  # not equal

gt  # greater than
ge  # greater equal

lt  # less than
le  # less equal
```

---

## 比較演算子

### 文字列の比較演算子

文字列を比較する場合は `eq` や `ne` といった単語を用いた比較演算子を使います。

また、`lt` や `gt` などで比較する「文字列の大小」とは、文字列の長さではありません。

辞書順に並べた時に前にくるものが小さく、後ろにくるものが大きいと判断されます。

---

## 比較演算子

### 文字列を使った条件分岐

条件式に注目してください。

```perl
my $foo = 'hello';

if ( $foo eq 'hello' ) { # ( ) 内が条件式

    print "OK\n";   # こちらが表示される
}
else {
    print "NG\n";
}
```

文字列を比較するので、 `==` ではなく `eq`を用います

---

## 比較演算子

### 数値 と 文字列 の比較が混合している<br>アンチパターン

```perl
print "eq で評価すると、";
if ( '51.0' eq 51 ) {
    print "文字列'51.0' と 数値 51 は等しい\n";
}
else {
    print "文字列'51.0' と 数値 51 は等しくない\n"; # こちらが表示される
}
```

`eq` は文字列を比較するときに使う比較演算子です。

このため、条件式の左辺・右辺は文字列として比較され、 **異なる** と判断されます。

---

## 比較演算子

### 数値 と 文字列 の比較が混合している<br>アンチパターン

```perl
print "== で評価すると、";
if ( '51.0' == 51 ) {
    print "文字列'51.0' と 数値 51 は等しい\n"; # こちらが表示される
}
else {
    print "文字列'51.0' と 数値 51 は等しくない\n";
}
```

条件式の比較演算子を `eq` から `==` に変更すると、先ほどとは逆の結果となります。数値として比較されるためです。

---

## 比較演算子

### 数値 と 文字列 の比較が混合している<br>アンチパターン

条件式を書くときは、

- 数値を比較したい

- 文字列を比較したい

どちらを比較するのかを明確にした上で、対応した比較演算子を選ぶことが重要です。

---

## 比較演算子

### 複数の条件分岐

<ruby>`elsif`<rt>エルジフ</rt></ruby> を使うことで、分岐条件を増やすことができます。

`else if` ではなく、 **`elsif`** です。

---

## 比較演算子

### 複数の条件分岐

```perl
my $num = 1;

if ( $num == 1 ) {
    print '$num is One' . "\n"; # これが表示される
}
elsif ( $num == 2 ) {
    print '$num is Two' . "\n";
}
elsif ( $num == 3 ) {
    print '$num is Three' . "\n";
}
else {
    print '$num is not even One, even Two, even Three' . "\n";
}
```

---

## 練習問題 `big_or_small.pl`

```perl
#!/usr/bin/env perl
use strict;
use warnings;
my $mycard = 10;    # 1から13までの好きな数字を入力しておく
```

トランプの大小判定ゲームを作ってみよう。

1. 変数 `$mycard` に 1 から 13 までの好きな数字（これがトランプの手札）を代入します。

2. `$mycard` の数が 7 より大きければ `BIG` と表示します。

3. それ以外(7 以下)であれば、 `SMALL` と表示します。

---

## 練習問題 `big_seven_small_arg.pl`

先に作ったトランプの大小判定ゲームを改良してみよう。

1. 変数 `$mycard` に、コマンドライン引数を利用して 1 から 13 までの好きな数字を直接入力できる様に改造しよう。

2. `$mycard` の数が 7 より大きければ `BIG!` と表示します。

3. `$mycard` の数が 7 と等しければ、 `Seven!` と表示します。

4. `$mycard` の数が 7 未満であれば、 `SMALL!` と表示します。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# 論理演算子

---

## 論理演算子

### 論理演算子 AND, OR

`if文` の条件式でより複雑な条件を扱いたいときは **論理演算子** を用いて複数の条件を連結します。

```perl
&& # かつ

|| # または
```

- `&&` 演算子は「かつ・AND」の意味を持つ。 `&&` の両辺の条件が 真 となるときのみ 真 となる。

- `||` 演算子は「または・OR」の意味を持つ。 `||` 両辺のうち、片方が 真 ならば 真 となる。

---

## 論理演算子

### AND

条件式に注目してください。

```perl
my $num = 10;

if ( $num > 0 && $num % 2 == 0 ) {  # $num が 0 より大きい かつ 2 で割り切れる
    print "&& : OK\n";    # こちらが表示される
}
else{
    print "&& : NG\n"
}
```

---

## 論理演算子

### AND

先の条件式の抜粋です。

```perl
my $num = 10;

if ( $num > 0 && $num % 2 == 0 ) {
```

1. `&&` の左辺にある `$num` が 0 より大きいので、`$num > 0` は 真。
1. `&&` の右辺にある `$num` を 2 で割った剰余は 0 なので、`$num % 2 == 0` も 真。
1. 「1. かつ 2. が 真」の条件を満たすので、条件式は 真 となり、`&&: OK` と表示される。

---

## 論理演算子

### OR

条件式に注目してください。

```perl
my $num = 10;

if ( $num > 0 || $num % 2 == 1 ) {  # $num が 0 より大きい または 2 で割り切れない
    print "|| : OK\n";     # こちらが表示される
}
else{
    print "&& : NG\n"
}
```

---

## 論理演算子

### OR

先の条件式の抜粋です。

```perl
my $num = 10;

if ( $num > 0 || $num % 2 == 1 ) {
```

1. `||` の左辺にある `$num` が 0 より大きいので、`$num > 0` は 真。

1. 「1. または 2. が 真」の条件のうち、「1. が 真 」を満たすので、条件式は 真 となり、`||: OK` と表示される。右辺は比較されない。

---

## 論理演算子

### 3 つ以上の値を比較したい場合（ Perl 5.32 以降）

```perl
my $small  = 10;
my $medium = 20;
my $large  = 30;

if ( $small < $medium <= $large ) { # Perl 5.30までのバージョンではエラーになる
    print "小さい順に並んでます\n";
}
```

不等号をはじめ、演算子には [優先順位](https://perldoc.jp/docs/perl/perlop.pod) があります。

上記の例の場合、以下のように解釈されます。

```perl
$small < $medium && $medium <= $large
```

---

## 論理演算子

### 3 つ以上の値を比較したい場合（ Perl 5.30 以前）

```perl
$small < $medium <= $large
```

この 3 つ以上の値の比較は Perl 5.32 から導入されました。

<a href="https://perldoc.perl.org/perl5320delta#Chained-comparisons-capability">chained comparison</a> 、 **連鎖比較** とよびます。

Perl 5.30 以前では、連鎖比較を利用することはできません。下記のようなエラーとなります。

    syntax error at sample.pl line 5, near "$medium <"

---

## 論理演算子

### 3 つ以上の値を比較したい場合(Perl 5.30 以前)

```perl
my $small  = 10;
my $medium = 20;
my $large  = 30;

if ( $small < $medium && $medium <= $large ) {
    print "小さい順に並んでます\n";
}
```

Perl 5.30 以前では、連鎖比較を利用することはできないため、

```perl
$small < $medium && $medium <= $large
```

というように、論理演算子を使って 3 つ以上の値の比較を行なっています。

---

## 練習問題 `fizzbuzz_cmd.pl`

コマンドラインから入力された数字を判定して応答を返すプログラムを作りましょう

- 数字が 3 の倍数の時に `fizz` と表示する
- 数字が 5 の倍数の時は `buzz` と表示する
- 数字が 3 と 5 の倍数の時は `fizzbuzz` と表示する
- それ以外の数字の時は、その数字を表示する

```bash
$ perl fizzbuzz_cmd.pl 3
Fizz
$ perl fizzbuzz_cmd.pl 5
Buzz
$ perl fizzbuzz_cmd.pl 15
FizzBuzz
$ perl fizzbuzz_cmd.pl 4
4
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# 配列

---

## 配列

### 配列とは

今まで学んできた変数はスカラー変数という、1 つの値のみを格納する変数でした。

例えば、小学校の 4 教科の平均点数を出すとき、$kokugo, $sansuu, $rika, $shakai と都度スカラー変数を 4 つ書いて計算するのは大変です。

そこで、「複数の値」や「複数のスカラー変数」をまとめて扱うことのできる **配列、配列変数** を紹介します。

---

## 配列

### 配列の作り方（右辺）

まずは、右辺に注目してください。

```perl
my @array = ( 1, "foo", 3 );
```

`( )` の中の `1`, `"foo"`, `3` それぞれを **要素** といいます。要素は `,` で区切られています。

右辺の `( 1, "foo", 3 )` の部分を **リスト** といいます。

このリストはスクリプトに書かれている通りの「要素の集合」でしかなく、要素を加えたり減らしたりすることができません。

---

## 配列

### 配列の作り方（左辺）

左辺に注目してください。

```perl
my @array = ( 1, "foo", 3 );
```

スカラー変数と同じく、初めてその配列を使うときは `my` で宣言します。

スカラー変数と同様に、代入演算子 `=` を使うことで、右辺のリストを左辺の配列に代入することができます。

配列は変数名の前に `@` をつけます。

`@` は `アレイ(array)`、 `@rray` 、と覚えるとよいでしょう。 （array は配列を意味する英単語です）

---

## 配列

### 配列の展開

```perl
my @array = ( 1, "foo", 3 );

print "@array" . "\n";    # 1 foo 3
```

配列はスカラー変数と同じく `" "` ダブルクォーテーションで囲むことで変数展開が可能です。

---

## 配列

### 配列の要素を利用する

配列の要素を利用する方法です。

```perl
my @array = ( 1, "foo", 3 );

print "$array[0]" . "\n";    # 1
```

配列 `@array` の最初の要素は `$array[0]` となります。

この時、シジルが配列を示す `@` からスカラー変数の `$` になっていることに注目してください。

これは **取り出す要素の数が 1 つだけなのでスカラー変数となる** ためです。

配列から複数の要素を取り出すときには perldoc の[perldata](https://perldoc.jp/docs/perl/5.16.1/perldata.pod#Slices)を利用します。この時のシジルは `@` になります。Perl 入学式では説明しません。

---

## 配列

### 添字を使って要素を利用

配列から要素を利用する際には、 <ruby>**添字**<rt>そえじ</rt></ruby> を使います。

```perl
my @array = ( 1, "foo", 3 );

print "$array[0]\n";    # 1
print "$array[1]\n";    # foo
print "$array[2]\n";    # 3
```

配列の 1 つ 1 つの要素にアクセスする場合は `$変数名[添字]` を使います。

配列の添字は数字で指定します。

配列の先頭の要素の添字は 0 となり、末尾に向けて 1 ずつ増えます。

---

## 配列

### 配列要素の添字

配列の添字には、数値が入ったスカラー変数を置くこともできます。

```perl
my @array = ( 1, "foo", 3 );
my $i = 1;

print "$array[$i]" . "\n";    # foo
```

---

## 配列

### 配列要素への代入

配列の要素に代入することも可能です。

```perl
my @array = ( 1, "foo", 3 );
$array[0] = "bar";    # 先頭の要素に文字列 "bar" を代入する

print "@array" . "\n";       # bar foo 3
```

---

## 配列

### 配列要素への代入

配列に、別の配列の中身を追加することもできます。

```perl
my @array_one_two = ( 1, 2 );
my @array_numbers = ( @array_one_two, 3 );

print "@array_numbers" . "\n";    # 1 2 3
```

---

## 配列

### 配列要素の計算

配列の要素はスカラ変数と同じように扱うことが可能です。

```perl
my @array = ( 1, "foo", 3 );

my $sum = $array[0] + $array[2];     # my $sum = 1 + 3

print "$sum\n"    # 4
```

添字を利用して配列の要素同士で足し算をしています。

---

## 配列

### 配列の要素数

```perl
my @array = ( 1, "foo", 3 );

my $count_array_element = scalar @array;    # 要素の数を取得
print "$count_array_element\n";             # 3

my $last_array_index = $#array;             # 配列の末尾の要素の添字を取得
print "$last_array_index\n";                # 2
```

- `scalar` 関数の引数に配列を与えると、配列に格納されている **要素の個数** を取得できます。

- 配列`@array` に対して `$#array` と書くことで、配列に格納されている **末尾の要素の添字** を取得できます。

---

## 配列

### 範囲演算子

連続する数字を配列に格納するときは **範囲演算子** `..` が便利です。

```perl
my @array1 = ( 1 .. 5 );
print "@array1" . "\n";    # 1 2 3 4 5
```

- `1 .. 5` と書くことで、1 から 5 までの連続する値を配列に代入できます。

- ただし「左側の数値より右側の数値が大きい」必要があります。

```perl
my @array2 = ( 5 .. 1 );
print "@array2\n";              # （何も表示されない）
print scalar @array2 . "\n";    # 0
```

---

## 配列

### for ループ

配列の要素を、順番に「すべて」処理する方法として、**for 文** があります。

```perl
my @array = ( 1, "foo", 3 );

for my $element (@array) {
    print "$element\n";  # 1 foo 3 がそれぞれ改行されて表示される
}
```

この場合、変数 `$element` に 配列 `@array` の先頭から順番に要素が格納されていきます。

最初に `$array[0]` , `$array[1]`, `$array[2]` とスカラー値が順番に代入され、処理（print）が行われます。

---

## 配列

### for ループと範囲演算子

for 文と範囲演算子を組み合わせることで、決まった回数だけ処理を繰り返すことができます。

- カウントアップ

```perl
for my $i ( 1 .. 50 ) {
    print "$i\n";    # 1 から 50 まで 1つずつ改行されて表示される
}
```

- 単なる繰り返し

```perl
for my $i ( 1 .. 50 ) {
    print "Hello, World\n";    # Hello, World が 50回表示される
}
```

---

## 練習問題 `fizzbuzz_for.pl`

1 から 100 までの数字について、以下のようなルールに従って表示を行う `fizzbuzz_for.pl` を作成しましょう。

- その数字が `3` で割り切れるなら `Fizz` と表示する。
- その数字が `5` で割り切れるなら `Buzz` と表示する。
- その数字が `3` でも `5` でも割り切れるなら `FizzBuzz` と表示する。
- その数字が `3` でも `5` でも割り切れないなら その数字 を表示する。

> コンピュータサイエンス学科卒業生の過半数にはそれ(fizzbuzz)ができないのだ<br> > [どうしてプログラマに・・・プログラムが書けないのか?](http://www.aoky.net/articles/jeff_atwood/why_cant_programmers_program.htm)

---


---

## お疲れ様でした!

サポーターや参加者の皆さんと交流しましょう。

不明点は Discord #雑談部屋 で是非質問してください。

「●●をやりたいが、何から手をつけていいかわからない」といった質問にも、何かしらアドバイスやヒントを提供できる場になればと考えています。

次回以降の参加もお待ちしております!


---

