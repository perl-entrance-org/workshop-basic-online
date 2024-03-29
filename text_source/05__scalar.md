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
