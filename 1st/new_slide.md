# Perl 入学式 第 1 回

## 導入編



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

  - Windows：MSYS2 上の Perl（<a href="https://github.com/perl-entrance-org/workshop-basic-online/blob/master/0th/slide.md" target="_blank">第 0 回 環境構築編</a>）
  - macOS：システムにインストールされている Perl

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

## ターミナルとシェル入門

### キャラクター・ユーザー・インターフェース

macOS も Linux も、Windows と同じく <ruby>GUI<rt>ジーユーアイ</rt></ruby> で操作可能です。

ですが、プログラミングをする上で <ruby>CUI<rt>シーユーアイ</rt></ruby> (<ruby>CLI<rt>シーエルアイ</rt></ruby>) は避けて通れません。

- CUI ... <ruby>Character User Interface<rt>キャラクター ユーザー インターフェース</rt></ruby>

- CLI ... <ruby>Command Line Interface<rt>コマンド ライン インターフェース</rt></ruby>

これらは文字によって操作を行うインターフェイスのことを指します。

- Windows ならば、コマンドプロンプトに該当します。

- Linux / macOS ではターミナルに該当します。

---

## ターミナルとシェル入門

### ターミナルとシェル

プログラムの起動や制御をCUI（CLI）で行うプログラムのことを、**シェル**と呼びます。

ターミナルを開くと、シェルを使った操作が出来るようになります。

![シェル](https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/shell.png)

---

## ターミナルとシェル入門

### ターミナルの開き方

Windowsの方はインストールした `MSYS2 MSYS` を 、 Mac ユーザーの方は Launchpad から「ターミナル」を選択し、起動します。

<small>ターミナルは頻繁に起動するため、タスクバーやDockへ追加しておくことをおすすめします。</small>

![ターミナルのアイコン](https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/1st/image/terminal.png)

---

## ターミナルとシェル入門

### プロンプト

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

## ターミナルとシェル入門

### シェルで使えるコマンド集

Perl入学式の中でもよく使うコマンドを紹介します。

シェルには、これから紹介する以外にも様々なコマンドがあります。

OSやシェルの種類によって使えるもの、使えないものがありますが、使いこなせば作業の負担を軽減することができます。

参考図書：<a href="https://system-admin-girl.com/" target="_blank">まんがでわかるLinux シス管系女子</a>

---

## ターミナルとシェル入門

### ls：ファイル一覧の表示

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

## ターミナルとシェル入門

### pwd：現在位置を表示

```bash
$ pwd
/home/username
```
`pwd` は、現在いるディレクトリの場所（パス）を表示します。

コマンド名は 'print working directory' の頭文字を取ったものです。

---

## ターミナルとシェル入門

### mkdir：ディレクトリを作成

```bash
$ mkdir sample
$ ls
sample デスクトップ ダウンロード (以下略)
```
`mkdir DIRECTORY` は、`DIRECTORY` というディレクトリを作ります。

コマンド名は 'make directory' を短縮したものです。

---

## ターミナルとシェル入門

### cd：ディレクトリへ移動

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

## ターミナルとシェル入門

### touch：空のファイルを作成する

```bash
$ touch sample1 sample2
$ ls
sample1 sample2
```
`touch` には2つの役割があります。 `touch FILENAME` とした時・・・
- FILENAME がすでに存在する場合には、ファイルのアクセス日時と更新日時を現時刻に書き換える
- FILENAME が存在しない場合には、空のファイルを生成する

---

## ターミナルとシェル入門

### rm：ファイルを削除する

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

## ターミナルとシェル入門

### rmdir：ディレクトリを削除する

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

## ターミナルとシェル入門

### cp：ファイルをコピーする

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

## ターミナルとシェル入門

### mv：ファイルを移動する

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

## ターミナルとシェル入門

### start：エクスプローラーから開く

```bash
$ start .
```
`start DIRECTORY` で、`DIRECTORY` を Windows　標準の Explorer というファイルマネージャで開きます。`start` は対象となるファイルの種類によって動作が変わります。

例えばディレクトリが対象ならば上記のように Explorer で表示、エクセルファイルなら Excel で開く、という動作をします。

![Explorer](https://raw.githubusercontent.com/perl-entrance-org/workshop-basic-online/master/image_source/explorer.png)

---

## ターミナルとシェル入門

### open：ファインダーから開く

```bash
$ open .
```

`open DIRECTORY` で、`DIRECTORY` を macOS 標準の Finder というファイルマネージャで開きます。

`open` は対象となるファイルの種類によって動作が変わります。

例えばディレクトリが対象ならば上記のように Finder で表示、テキストならばテキストエディタで表示、という動作をします。

---

## ターミナルとシェル入門

### 練習問題：ターミナル操作のおさらい

1. **ホームディレクトリ**に `perl-entrance` というディレクトリを作りましょう。

  ホームディレクトリとは、ユーザごとに用意された作業場所のようなものです。

  `cd` とだけ入力してエンターキーを押すと、ホームディレクトリに移動します。

2. 作った `perl-entrance` ディレクトリの中に移動しましょう。

続きます

---

## ターミナルとシェル入門

### 練習問題：ターミナル操作のおさらい

3. **カレントディレクトリ（現在いるディレクトリ）**のパスを `pwd` で表示し、その後に、 `start` もしくは `open` を使って、ファイルマネージャで開いてみましょう。

4. `touch` で `text.txt` というファイルを作成し、 `open` コマンドで開いてみましょう。


---

# エディタ入門

---

## エディタ入門

### エディタ

コードを書く時に最も使う道具、それがエディタです。

プログラミングに特化した様々なエディタが開発されていますが、Perl 入学式では Visual Studio Code を推奨しています。

特にこだわりのない方は、今回紹介する Visual Studio Code を利用してください。

もちろん、<ruby>Emacs<rt>イーマックス</rt></ruby> や <ruby>Vim<rt>ヴィム</rt></ruby>、サクラエディタなど、既に使い慣れているエディタがある方はそちらをお使いください。

---

## エディタ入門

### ダウンロード

Visual Studio Code の公式ページ <a href="https://code.visualstudio.com/" target="_blank">Visual Studio Code - Code Editing. Redefined</a> へアクセスし、 Download をクリックします。

---

## エディタ入門

### インストール：Windows

ダウンロードした `VSCodeUserSetup-**.exe` をダブルクリックすると、インストールが開始されます。

`**` としたところにはバージョン番号が入ります。

インストール後は、スタートメニューから「Visual Studio Code」をダブルクリックすれば Visual Studio Code が起動します。

インストール直後は自動的に起動します。

---

## エディタ入門

### インストール：macOS

ダウンロードした `VSCode-darwin-stable.zip` をダブルクリックすると、`Visual Studio Code.app` が生成されます。

これをダブルクリックすれば Visual Studio Code が起動します。

「 "Visual Studio Code.app" はインターネットからダウンロードされたアプリケーションです」という警告が出た場合、「開く」をクリックします。

---

## エディタ入門

### 日本語化

メニューが英語でとっつきにくい場合には、日本語化することが可能です。

1. ウィンドウ左上の View -> Command Palette から `Configure Display Language` と入力して候補を選択する。

1. Install Addicional Languages を選択する。

1. 左側のメニューから「日本語」を選択し、緑色の「Install」ボタンを押す。

1. 一度 Visual Studio Code を閉じて、再度起動する。

1. 英語表記に戻す場合には、1. から en を選択してから Visual Studio Code を再起動します。

---

## エディタ入門

### ファイルを開く

- 左上メニューから

  - Windows 版：ファイル -> ファイルを開く（または Ctrl を押しながら <ruby>o<rt>オー</rt></ruby>）

  - macOS 版：ファイル -> 開く（または command を押しながら <ruby>o<rt>オー</rt></ruby>）

「Ctrl を押しながら <ruby>o<rt>オー</rt></ruby>」などの、カーソルではなく、キーボードの上のキーのみで操作するための組み合わせを **ショートカット** といいます。

---

## エディタ入門

### ファイルを保存する

- 左上メニューの ファイル -> 保存（Windows / Mac 共通）

  - Windows 版ショートカット（Ctrl を押しながら s）

  - Mac 版ショートカット（command を押しながら s）


---

## エディタ入門

### ファイル編集手順

`perl-entrance` ディレクトリ内に `profile.txt` という空のファイルを用意して、Visual Studio Code で編集する例です。

1. `cd` コマンドを利用し、`perl-entrance` フォルダに移動する

1. `touch` コマンドを使い、`profile.txt` を作成する

1. Windows（MSYS2）の場合は `start . ` で Explorer を 、macOS の場合は `open . ` で Finder を開き、中の `profile.txt` を Visual Studio Code にドラッグ＆ドロップする

1. 編集が終わったら Visual Studio Code の上にある ファイル メニューから 保存 を選択する


---

# Hello,world!

---

## Hello,World!

### 最初のプログラム

プログラム言語の学習において、最初に解説するのは

「`Hello, world!` と表示するプログラム」

とされています。

作法に乗っ取り、`Hello, world!` を表示する Perl プログラムに挑戦してみましょう。

---

## Hello,World!

### プログラム作成

```perl
print "Hello, world!\n";
```
`hello.pl` というファイルを作成し、エディタで上記のプログラムを書いて保存します。

- `print` は、ターミナルに文字を出力する命令です。

- <ruby>`\n`<rt>バックスラッシュ エヌ</rt></ruby>は改行を意味します。

- Mac の日本語キーボードの場合、`\` は Option + `￥`キーで入力できます。

- 文の最後にはセミコロン( `;` )が必要です。文の区切りという意味です。

---

## Hello,World!

### プログラム実行

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

## Hello,World!

### おまじない

```perl
#!/usr/bin/env perl
use strict;
use warnings;
```

プログラムには、問答無用で書いておく「おまじない」ともいうべきものがあります。

Perl では上記の 3 行が「おまじない」となります。

---

## Hello,World!

### おまじない解説

- `#!/usr/bin/env perl` ... <ruby>shebang<rt>シバン</rt></ruby> と呼ばれるもので、このプログラムが perl で動くことを明示する

- `use strict;` ... 厳密な書式で書くことを強制し、未定義の変数があれば警告する

- `use warnings;` ... 望ましくない記述を警告する

これらの「おまじない」により、わかりやすく堅牢なコードを書くことができます。

以降、Perl 入学式のサンプルコードではスペースの都合により「おまじない」を省略します。**書かれているもの**として扱ってください。

---

## Hello,World!

### 練習問題：entrance

「この勉強会の名前」と「今日の日付」を表示するプログラム `entrance.pl` を書いてみましょう。

`print`文を 2 つ利用してください。以下はヒントです。

- プログラムは上から順に実行されます。

- 「おまじない」を忘れない事！

- 文末に `;` を入れるのを忘れないでください。

- 可読性（読みやすさ）向上のため、セミコロンの後に改行を入れて複数の行にしましょう。

---

## Hello,World!

### 練習問題：newline

```perl
print "hello! \n\n\n\n\n world!";
```

上記のプログラムはどのような結果になるか考えてみてください。

また、上記のプログラムを入力、またはコピペして実行し、どのような結果になるかを確認してください。

ファイル名は `newline.pl` とするのが良いでしょう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションしてみてください。

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

## お疲れ様でした!

サポーターや参加者の皆さんと交流しましょう。

不明点は Discord #雑談部屋 で是非質問してください。

「●●をやりたいが、何から手をつけていいかわからない」といった質問にも、何かしらアドバイスやヒントを提供できる場になればと考えています。

次回以降の参加もお待ちしております!


---

