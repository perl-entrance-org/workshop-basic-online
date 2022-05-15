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

1. Windows（msys2）の場合は `start . ` で Explorer を 、macOS の場合は `open . ` で Finder を開き、中の `profile.txt` を Visual Studio Code にドラッグ＆ドロップする

1. 編集が終わったら Visual Studio Code の上にある ファイル メニューから 保存 を選択する
