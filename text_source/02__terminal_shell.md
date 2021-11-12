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

