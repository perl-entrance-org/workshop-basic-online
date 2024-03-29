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
