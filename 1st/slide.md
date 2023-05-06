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

- コミュニケーション：<a href="https://discord.com/channels/741610576609935430/741610901303721998" target="_blank"><ruby>Discord<rt>ディスコード</rt></ruby></a>

- 講義スライド共有：<a href="https://appslideshare.tugougaii.site/slide/Online2021?p=1&c=pre-left&cf=1" target="_blank">スライド同期くん</a>

- Perl 実行環境

  - Windows：MSYS2 上の Perl（<a href="https://github.com/perl-entrance-org/workshop-basic-online/blob/master/0th/slide.md" target="_blank">第 0 回 環境構築編</a>）
  - macOS：システムにインストールされている Perl

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

## msys2 環境の構築（前半）

### Windows ユーザ向け msys2 のインストール

---

## msys2 インストール時の推奨環境

- msys2 で Perl の開発環境を構築するためには、約 1GB のストレージ容量を必要とします。

- C ドライブの容量が心配な方は、必要に応じて D ドライブや USB メモリ等にインストールしてください。

- メモリ（RAM）は Windows 自体がストレスなく動く環境であれば特に問題ありません。

- 一部のアンチウイルスソフトで誤検知を確認しています。アンチウイルスソフトは Windows Defender を推奨します。

---

## msys2 インストール動画

これから Windows で Perl を学ぶための環境構築を行なっていきます。

文字の説明だけでは難しいところもあるので、動画を用意しました。ぜひ活用してください。また、字幕での動画も各項目ごとに用意しています。

[![](https://img.youtube.com/vi/--XD8Q63XfU/0.jpg)](https://www.youtube.com/watch?v=--XD8Q63XfU)

---

## Windows の 32/64bit の判別法

<a href="https://support.microsoft.com/ja-jp/help/15056/windows-32-64-bit-faq" target="_blank">32 ビットと 64 ビットの Windows: よく寄せられる質問</a>内の「コンピューターで実行中の Windows が 32 ビット バージョンであるか 64 ビット バージョンであるかを確認するにはどうすればよいですか?」を参考に判別します。

また、動画も用意しています。

[![](https://img.youtube.com/vi/55PqdgiJ-mU/0.jpg)](https://www.youtube.com/watch?v=55PqdgiJ-mU)

---

## msys2 の入手

### msys2 のインストーラーを用意する

<a href="https://www.msys2.org/" target="_blank">https://www.msys2.org/</a>

環境にあわせて、「msys2-i686-YYYYMMDD.exe」または「msys2-x86_64-YYYYMMDD.exe」を利用します。

- Windows が 64 ビットバージョンの場合：msys2-x86_64-YYYYMMDD.exe

- Windows が 32 ビットバージョンの場合：msys2-i686-YYYYMMDD.exe

うまくダウンロードできない人はサポーターに聞いてください。

<small>ファイル名の i686 や x86_64 はアーキテクチャ名であり、YYYYMMDD は msys2 がリリースされた日付です。</small>

---

## msys2 の入手

### msys2 のインストーラーを用意する

動画も用意しています。

[![](https://img.youtube.com/vi/YD_2pi6isQ4/0.jpg)](https://www.youtube.com/watch?v=YD_2pi6isQ4)

---

## msys2 のインストール（１）

### ダウンロードした msys2 をインストールする

ダウンロードした `exe` ファイルをダブルクリックして開くと、インストールが始まります。

正常に終わらない場合は、右クリックして「管理者として実行」してください。

「MSYS2 xxbit のセットアップ」と表示されるので、「次へ」を押します。

<img src="image/0.png" align='left' style='width: 30%'><br clear="all">

<br clear="all">

---

## msys2 のインストール（１）

### ダウンロードした msys2 をインストールする

動画も用意しています。

[![](https://img.youtube.com/vi/LNPbSXNH0yM/0.jpg)](https://www.youtube.com/watch?v=LNPbSXNH0yM)

---

## msys2 のインストール（２）

### インストール先フォルダを指定する

デフォルトでは「C:¥msys64」や「C:¥msys32」と表示されます。

変更する必要がなければそのまま「次へ」を押します。

同じフォルダ名が存在する場合はエラーになります。

<img src="image/1.png" align='left' style='width: 30%'>

<br clear="all">

---

## msys2 のインストール（３）

### スタートメニューのショートカット名を指定

デフォルトでは「MSYS2 64bit」や「MSYS2 32bit」と表示されます。

任意の名前を指定できますが、変更する必要がなければそのまま「次へ」を押します。

<img src="image/2.png" align='left' style='width: 30%'>

<br clear="all">

---

## msys2 のインストール（４）

### インストールを開始します

ここまで完了すると「MSYS2 64bit のインストール」または「MSYS2 32bit のインストール」と表示され、msys2 のインストールがはじまります。
<img src="image/3.png" align='left' style='width: 30%'>

<br clear="all">

---

## msys2 のインストール（５）

### インストールの完了

インストールが完了すると「MSYS2 64bit のウィザードの完了」または「MSYS2 32bit のウィザードの完了」と表示されます。
<img src="image/4.png" align='left' style='width: 30%'>

<br clear="all">

「MSYS2 64bit を実行中。」「MSYS2 32bit を実行中。」どちらかが表示されます。チェックボックスはオンにしたまま「完了」をクリックします。

---

## msys2 のインストール（６）

### msys2 の起動

インストーラーで「完了」をクリックすると msys2 が起動します。

<img src="image/5.png" align='left' style='width: 30%'>

<br clear="all">

この「黒い窓」「黒い画面」のことを「**ターミナル**」「**端末**」と言います。

---

## msys2 のインストール（7）

### msys2 の起動（2 回目以降）

次回以降は次のどちらかの方法で起動します。

- スタートメニューから「MSYS2 MSYS」を選択して起動

- インストールしたディレクトリ内の「msys2.exe」を起動

- タスクバーの検索メニューに msys2 と入力し、検索候補の中から「MSYS2 MSYS」を選択して起動

---

## msys2 のインストール（8）

### msys2 を起動したときに

次のようなウィンドウが表示される場合があります。

<img src="image/mintty1.png" align='left' style='width: 30%'>

<br clear="all">

Perl を利用する場合は「MSYS2」が適しているため、「MSYS2」を選択します。

---

## msys2 環境の構築（後半）

### Windows ユーザ向け Perl のインストール

---

## msys2 のセットアップ（１）

### パッケージマネージャを利用する

**パッケージマネージャ**はソフトウェアを管理するためのソフトウェアです。

このパッケージマネージャを利用して Perl をインストールします。

msys2 では <ruby>pacman<rt>パックマン</rt></ruby> というパッケージマネージャを利用します。

---

## msys2 のセットアップ（２）

### コマンド入力時の注意点

これ以降、下記のように入力コマンドを示す記載が頻繁に例示されます。

```bash
# msys2 とデータベース情報のアップデート
$ pacman -Syu
```

「<ruby>`#`<rt>シャープ</rt></ruby>」から始まる行はコメントです。**入力は不要**です。

「<ruby>`$`<rt>ダラー</rt></ruby>」はプロンプトです。コマンドが入力ができる状態であることを意味します。`$` の入力は必要ありません。

上記は `pacman -Syu`と入力し、行末で enter キー、またはリターンキーを押すことを意味します。

---

## msys2 のセットアップ（２）

### コマンド入力時の注意点

Perl のインストールまで動画も用意しています。

[![](https://img.youtube.com/vi/I6zO4l6koMU/0.jpg)](https://www.youtube.com/watch?v=I6zO4l6koMU)

---

## msys2 のセットアップ（３）

### パッケージマネージャを利用する

利用するソフトウェアを最新で安全な状態に保つためには、パッケージマネージャが管理している情報の更新が不可欠です。

次のコマンドを実行して pacman が管理しているデータベースを更新しましょう。

大文字・小文字にも意味があります。書いてある通りに入力してください。

```bash
# msys2 とデータベース情報のアップデート
$ pacman -Syu
```

<img src="image/7.png" align='left' style='width: 30%'>

<br clear="all">

アップデートが成功すると、ターミナルは自動で閉じられます。

---

## msys2 のセットアップ（４）

### msys2 に perl をインストールする

pacman を利用して、さまざまなソフトウェアをインストールすることができます。

さっそく perl をインストールしてみましょう。

---

## msys2 のセットアップ（５）

### msys2 に perl をインストールする

次のコマンドを実行して perl を利用するために必要なソフトウェアをインストールします。
すべて完了するまで少し時間がかかります。

```bash
# perlと必要なソフトウェアのインストール
$ yes "" | pacman -Sy perl perl-CPAN msys2-devel make libcrypt-devel openssl perl-Net-SSLeay perl-IO-Socket-SSL
```

<img src="image/8.png" align='left' style='width: 30%'>

<br clear="all">

---

## perl の動作確認

### Windows ユーザ向け msys2 版

---

## perl の動作確認（１）

### perl が動作することを確認しましょう

次のコマンドを実行して perl のバージョンを確認します。

`This is perl 5, version xx, ...` などと表示されれば、インストールは成功しています。

```bash
# perlのバージョンを確認する
$ perl -v
```

<img src="image/9.png" align='left' style='width: 30%'>

<br clear="all">

---

## perl の動作確認（２）

### cpan が動作することを確認しましょう

次のコマンドを実行して perl で利用する cpan が動作することを確認します。

```bash
# cpanの動作状況を確認する。入力を求められるので yes と入力してエンターキーを押す
$ cpan JSON::XS

# インストールが完了したら以下を実行。正常な場合は何も出力されません。
$ perl -MJSON::XS -e 1
```

---

## perl の動作確認（3）

### すでに別の Perl をインストールしている場合

<img src="image/10.png" align='left' style='width: 30%'>

<br clear="all">

既に別の Perl をインストールしている場合、環境変数 PERL5LIB の影響を受ける場合があります。

その場合は「PERL5LIB=」などを実行し、PERL5LIB を空にしてから実行してください。

---

## msys2 の基本

### Windows ユーザ向け

---

## msys2 の基本 (１)

msys2 に限らず、ほとんど全てのソフトウェアは様々な理由でアップデートされます。

msys2 は pacman 利用することで、インストールされているソフトウェアを最新にすることができます。定期的に実行しましょう。

以下のコマンドを実行すると msys2 にインストールされているソフトウェアがアップデートされます。

ただし、アップデートは時間がかかるため、**ここでは実行せずに家で実行する** ようにしてください。

```bash
# ソフトウェアのアップデート
$ pacman -Syu
```

更新内容によっては、全ての更新が 1 度で終了せずに msys2 を 1 度閉じてから、再度起動し、もう一度上記のコマンドを実行する必要があるので覚えておきましょう。

---

## msys2 の基本 (２)

パッケージマネージャを利用したパッケージの検索とインストールの方法を紹介します。

もしもインストールが失敗する場合は、先ほど紹介したアップデートを実行してみましょう。

```bash
# パッケージの検索（perl-YAMLを検索する）
$ pacman -Ss perl-YAML

# パッケージ情報を確認（perl-YAMLを確認する）
$ pacman -Si perl-YAML

# パッケージのインストール（perl-YAMLをインストールする）
$ pacman -S perl-YAML
```

---

## msys2 の基本 (３)

msys2 では windows のコマンドも実行できます。

ただし、ターミナルの文字コードの問題で文字化けが発生する場合があります。

<img src="image/ping1.png" align='left' style='width: 70%'>

<br clear="all">

---

## msys2 の基本 (４)

msys2 に用意されている `start` コマンドは、アプリケーションを実行するためのコマンドです。

これは非常に便利な機能です。試しに以下のコマンドを実行してみてください。

```bash
# startの後にスペースと.（ドット）を入力して実行
$ start .
```

現在のディレクトリで <ruby>Explorer<rt>エクスプローラー</rt></ruby> が起動します。

---

## msys2 の基本 (５)

先ほどの start コマンドで開いた Explorer のディレクトリパスを見てみましょう。

次のようなパスになっているはずです。

```bash
# XXはアーキテクチャによって変わります。
# <User>の部分は皆さんが利用しているユーザー名です。
C:\msysXX\home\<User>
```

msys2 は標準で `C:\msysXX\` 配下に様々なディレクトリを作成します。

そのため、ファイルの編集には Windows のアプリケーションをそのまま利用することができます。

大切なことなので、必ず覚えておいてください。

---

## これで perl のインストールは完了です。お疲れ様でした!


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

### 練習問題：`entrance.pl`

「この勉強会の名前」と「今日の日付」を表示するプログラム `entrance.pl` を書いてみましょう。

`print`文を 2 つ利用してください。以下はヒントです。

- プログラムは上から順に実行されます。

- 「おまじない」を忘れない事！

- 文末に `;` を入れるのを忘れないでください。

- 可読性（読みやすさ）向上のため、セミコロンの後に改行を入れて複数の行にしましょう。

---

## Hello,World!

### 練習問題：`newline.pl`

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

### 変数とは？

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

- Alice, Bob, Carol, Dave, Eve

---

## スカラー変数

### 仮の変数名（メタ構文変数）

- これら「意味のない名前」をつけることで、「サンプル用」「例示用」の変数ということを明示します。

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

### スカラー変数を再利用する

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

## スカラー変数

## 練習問題：`number.pl`

- 1 から 9 までの好きな数字をスカラー変数に格納し、それらの値を表示するプログラム `number.pl` を作成しよう！

  - `$number` や `$num` や `$int` など、数字を入れるのに相応しい変数名を利用してみましょう。

- 「おまじない」の 3 行を忘れずに！

---

## スカラー変数

## 練習問題：`word.pl`

- 好きなプログラミング言語の名前をスカラ変数に格納し、それらの値を表示するプログラム `word.pl` を作成しよう！

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

まず、剰余が 0 であれば、「割られる数」は「割る数」の倍数であることが確認できます。
```perl
print 100 % 10;    # 100 / 10 の余りである 0 が表示される
```

さらに、剰余はグルーピングに利用できます。

例えば「今日の 100 日後の曜日」を求めるとき、100 日分カレンダーを辿るのは大変です。

---

## 四則演算

### 剰余の使い所

1 週間は 7 日なので、7 日後は同じ曜日となります。14 日後も同じ曜日となります。21 日、28 日、35 日... 7 の倍数日後は同じ曜日になります。

これを利用し、100 日 を 7 日 で割ってみます。剰余は 2 となります。

```perl
print 100 % 7;    # 100 / 7 の余りである 2 が表示される
```

今日の曜日と同じであれば剰余は 0、明日の曜日と同じであれば剰余は 1、明後日と同じ曜日であれば 2、と簡単に計算が可能です。

これは、曜日が 7 種類あることを利用したグルーピングです。

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
my $now                 = 2022;

my $start_perl_entrance = 2012;

print "Perl入学式は開講" . $now - $start_perl_entrance . "年です\n";
# Argument "PerlM-eM-^EM-%M-eM--M-&M-eM-<M-^OM-cM-^AM-/M-iM-^VM-^KM-h..." isn't numeric in subtraction (-) at / line 8.
# -2012年です
```

上のプログラムは、警告が出た上に「-2012 年です」と、おかしな結果になります。

これは数値演算と文字列連結を混ぜた「アンチパターン（良くない例）」です。

---

## 文字列連結

### 数値演算と文字列連結の混合

1. まず 「`Perl入学式は開講`」（文字列） と 「`2022`」（数字） が文字連結されます。（結果：「今年は開講 2022」）

1. 次に、「`今年は開講2022`」（文字列） から 「`2012`」（数字）を引き算しようとし、おかしな結果になります。

---

## 文字列連結

### 数値演算と文字列連結は分ける

```perl
my $now                 = 2022;

my $start_perl_entrance = 2012;

print "Perl入学式は開講" . ($now - $start_perl_entrance ). "年です\n"; # Perl入学式は開講10年です
```

文字と数値計算は `( )` を用いて明確に分け、その後に連結するのが確実です。

---

## 文字列連結

### 数値演算と文字列連結は分ける

```perl
my $now                 = 2022;

my $start_perl_entrance = 2012;

my $period = $now - $start_perl_entrance;
print "Perl入学式は開講" . $period . "年です\n"; # Perl入学式は開講10年です
```

計算結果を別の変数に入れてから連結するのも良い手法です。



---

# コラム：YAPCへ行こう！

---

## コラム：YAPCへ行こう！

年に一度、Perl のお祭りが開かれます。

それが <ruby>YAPC<rt>ヤプシー</rt></ruby> と呼ばれるイベントです。

2015年までは東京で、2016年からは日本各地で会場を移しつつ開催しています。

前回は 2023年3月19日に京都で開催されました。

    YAPC::Kyoto 2023
    https://yapcjapan.org/2023kyoto/

YAPC では Perl や Perl を利用したシステムについての発表が行われます。

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

YAPC::Kyoto 2023
https://yapcjapan.org/2023kyoto/

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

`arg` とあるのが引数です。（`arg` は 引数 `argument` という語の略語です）

```bash
$ perl single.pl arg
```

複数の引数を受け取る場合には、空白で区切って列挙します。

```bash
$ perl multi.pl arg1 arg2
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
$ perl season.pl autumn
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

## お疲れ様でした!

サポーターや参加者の皆さんと交流しましょう。

不明点は Discord #雑談部屋 で是非質問してください。

「●●をやりたいが、何から手をつけていいかわからない」といった質問にも、何かしらアドバイスやヒントを提供できる場になればと考えています。

次回以降の参加もお待ちしております!


---

