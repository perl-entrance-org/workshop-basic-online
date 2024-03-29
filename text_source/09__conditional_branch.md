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
