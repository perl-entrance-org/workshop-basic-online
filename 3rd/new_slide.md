# Perl 入学式 第 3 回

## 条件分岐 / 配列 / ハッシュ編


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

# 配列の操作

---

## 配列の操作

### これから学ぶ配列操作の関数

<ruby>**関数**<rt>かんすう</rt></ruby> とは、ある働きをもつ機能のことです。`print` も変数の中身や文字列を表示する関数です。以下が配列を操作する関数です。

- `join`, `split`
    - 配列をスカラー値に、スカラー値を配列にする

- `reverse`, `sort`
    - 配列を逆順にする、並べ替える

- `pop`, `shift`, `push`, `unshift`
    - 配列から要素を取り出す、要素を追加する

---

## 配列の操作

### join

`join` はリストや配列の要素を連結して、スカラー値にする関数です。

```perl
my @words = ( 'I', 'Love', 'Perl.' );    # 配列を作る
my $poem  = join '_', @words;            # 第1引数 _ , 第2引数 @words
print $poem . "\n";                      # I_Love_Perl.
```

- `join` が受け取る第 1 引数 (上の例では \_ アンダースコア) は、リストや配列の要素をくっつける糊のような役割を果たします。

- 第 2 引数には、対象の配列やリストを渡します。

---

## 配列の操作

### split

`split` は指定したパターンに従ってスカラー値や文字列を分割し、リストにします。

```perl
my $poem  = 'I_Love_Perl.';
my @words = split /_/, $poem;
print "@words\n";    # ('I', 'Love', 'Perl.')
```

- `split` が受け取る第 1 引数 (上の例ではアンダースコア) は、文字列を分割する区切りのような役割を果たします。

- 第 2 引数には、対象の文字列を渡します。

---

## 配列の操作

### split

```perl
my @words = split /_/, $poem;
```

- `/ /` は正規表現リテラルと呼ばれるものです。この二つのスラッシュ `/` の間 にあるもので文字列を分割します。上記の例では、アンダースコア（下線）で文字列を区切っています。

- 正規表現については次回以降で解説します。

---

## 配列の操作

### reverse

reverse はリストを逆順に並べ替えて、そのリストを返す関数です。

```perl
my @lang     = ( 'perl', 'php', 'ruby', 'python', 'java', 'go');

my @reversed = reverse @lang;

print "@reversed" . "\n";    # go java python ruby php perl
```

---

## 配列の操作

### reverse

連番を逆順で配列に格納したいときは、範囲演算子と組み合わせると便利です。

```perl
my @array = reverse( 1 .. 5 );

print "@array" . "\n";    # 5 4 3 2 1
```

---

## 配列の操作

### sort （文字列）

sort は配列をルール順に並べ替えて、その配列を返します。

`sort`のみ、あるいは `sort { $a cmp $b } @array` と書くと、「文字列」として昇順（ `a` から `z` へ）に並べ替えます。

```perl
my @lang        = ( 'perl', 'php', 'ruby', 'python', 'java', 'go' );
my @sorted_lang = sort @lang;
print "@sorted_lang" . "\n";    # go java perl php python ruby

my @num        = ( 5, 200, 40, 3, 1 );
my @sorted_num = sort @num;
print "@sorted_num" . "\n";     # 1 200 3 40 5
```

---

## 配列の操作

### sort （数値）

`sort { $a <=> $b } @array` と書くと、「数値」として昇順（小さい順）に並べ替えます。

```perl
my @num = ( 5, 200, 40, 3, 1 );
my @sorted = sort { $a <=> $b } @num;

print "@sorted" . "\n";    # 1 3 5 40 200
```

変数 `$a` と `$b` は sort で使うために予約されているので、 **sort 以外で使わないようにしましょう**。

---

## 配列の操作 sort

「数値」として降順（大きい順）にソートする場合、以下の 2 つの書き方ができます。

- sort ブロック内の $a と $b を入れ替える書き方

```perl
my @num = ( 5, 200, 40, 3, 1 );
my @sorted1 = sort { $b <=> $a } @num;
print "@sorted1" . "\n";    # 200, 40, 5, 3, 1
```

- sort した結果を reverse で逆順にする書き方

```perl
my @num = ( 5, 200, 40, 3, 1 );
my @sorted2 = reverse sort { $a <=> $b } @num;
print "@sorted2" . "\n";    # 200, 40, 5, 3, 1
```
---

### 練習問題 `join_split.pl`

1. `("0120", "123", "XXX")` という配列を作り、join 関数を利用して `-` で連結して表示してください。

1. `There's more than one way to do it.` という文字列を、split 関数で `" "`（半角スペース）ごとに分割し、すべて改行付きで出力してください。

---

### 練習問題 `sort_reverse.pl`

以下のプログラムに追記して、条件通りに出力するプログラムを完成させてください。

```perl
my @numbers = (10, 3, 21, 7, 1, 100);
```

1. `@numbers` の中身を数字の値として昇順（小さい順）でソートして出力する。

2. 1.の出力を逆に出力する。

3. `@numbers` の中身を文字として昇順でソートして出力する。

4. 3.の出力を逆に出力する。

---

## 回答 ＆ 休憩 ＆ 質問 ＆ 雑談<br>（ 5 〜 10 分）

### 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 配列の操作

### push, pop, unshift, shift

引き続き、配列の操作を学んでいきます。

配列やリストの用途は主に 2 つです。

- 名簿など、要素の **単純な集まり** として表現したい場合。

- ランキングなど、要素間の **順序** 関係を表現したい場合。

これらの用途においては、要素の順番の並べ替えや、要素の追加、取り出しが必要になります。

---

## 配列の操作

### 要素の追加と削除

- 要素の追加
  - push
  - unshift

- 要素の取り出し
  - pop
  - shift

---

## 配列の操作

### 追加と取り出しの関係

|          | **追加** | **取り出し** |
| -------- | -------- | ------------ |
| **末尾** | push     | pop          |
| **先頭** | unshift  | shift        |

---

## 配列の操作

### push, pop, unshift, shift

配列のデータを処理するパターンとして <ruby>LIFO<rt>ライフォ,リフォ</rt></ruby> と <ruby>FIFO<rt>フィフォ, ファイフォ</rt></ruby> があります。

LIFO: Last In First Out

- 最後に入ってきたデータを、一番最初に処理する
- 現実世界でいうと、積み上がった書類の山を上から処理していく
- `pop` と `push` で実現が可能

FIFO: First In First Out

- 最初に入ってきたデータを、最初に処理する
- 現実世界でいうと、行列の先頭からラーメン屋の店内に迎え入れていく
- `shift` と `push` で実現が可能

---

## 配列の操作

### push / pop

push / pop は配列の末尾の要素を操作する関数です。

```perl
my @members = ( 'Alice', 'Bob' );
push @members, 'Carol';    # 末尾に要素 Carol を追加する
print "@members" . "\n";   # Alice Bob Carol

my $member = pop @members;    # 末尾の要素 Carol を取り出す
print "@members" . "\n";       # Alice Bob
print "$member" . "\n";     # Carol
```

- 配列の **末尾に要素を追加** するときには `push` を利用します。

- 配列の **末尾から要素を取り出す** ときには `pop` を利用します。

---

## 配列の操作

### unshift / shift

unshift / shift は配列の先頭の要素を操作する関数です。

```perl
my @members = ( 'Alice', 'Bob' );
unshift @members, 'Carol';    # 先頭に要素 Carol を追加する
print "@members" . "\n";      # Carol Alice Bob

my $member = shift @members; # 先頭の要素 Carol を取り出す
print "@members" . "\n";      # Alice Bob
print "$member" . "\n";    # Carol
```

- 配列の **先頭に要素を追加** するときには `unshift` を利用します。

- 配列の **末尾から要素取り出す** ときには `shift` を利用します。

---

### 練習問題 `array_pop_shift.pl`

1. ('Alice', 'Bob', 'Carol') という配列 `@members` を作ってください。

2. 配列 `@members` から 'Carol' を取り出し、出力してください。

3. 配列 `@members` から 'Alice' を取り出し、出力してください。

---

### 練習問題 `array_push_unshift.pl`

1. ('Alice', 'Bob', 'Carol') という配列 `@members` を作ってください。

2. 配列 `@members` の末尾に `Dave` を追加し、 ('Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。

3. 配列 `@members` の最初に `Eve` を追加し、 ('Eve', 'Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。

4. 配列を for 文で出力してください。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# ハッシュ

---

## ハッシュ

### ハッシュとは

ハッシュは Perl のデータ構造の 1 つで、配列と同じく要素の格納・取り出しができます。

ただし、配列と異なり **キー名（key）** と **値（value）** のペアで格納されます。

このペアのことを **要素** と呼びます。

---

## ハッシュ

### 配列とハッシュ

先に学習した配列と、これから学ぶハッシュはどちらも複数の値を扱うことができる変数です。簡単に違いと利用シーンを書いておきます。

配列

- 同じ種類のデータを格納するのに適している（例：複数の生徒の国語の点数など）
- 格納する順番に意味があるデータ（例：ランキング）

ハッシュ

- 異なる種類のデータを格納するのに適している（例：5教科それぞれの点数など）
- 格納する順番に意味がないデータ（例：個人の名前・身長・体重・生年月日など）

---

## ハッシュ

### ハッシュを作ってみよう

ハッシュはシジル `%` を使って定義します。

```perl
my %hash = (
    name  => 'Larry',   # キー名（key）はname, 値（value）は'Larry'
    birth => 1954,      # キー名（key）はbirth, 値（value）は 1954
);
```

---

## ハッシュ

### ハッシュを作ってみよう

キー名（key）と 値（value）の間にある `=>` はファットコンマ演算子と呼ばれ、コンマと同等の役割を果たします。

```perl
my %hash = ( 'name' => 'Larry', 'birth' => 1954, );
```

以下のようにコンマに置き換えても動きますが、配列と見分け難くなります。ハッシュではファットコンマ演算子を使いましょう。

```perl
my %hash = ( 'name' , 'Larry', 'birth' , 1954, );
```

---

## ハッシュ

### ハッシュを作ってみよう

キー名（key）は文字列として解釈されます。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
);
```

上記の例のように、キー名（key）である `name` と `birth` は、シングルクォート `' '` やダブルクオート '" "' で囲む必要はありません。

---

## ハッシュ

### ハッシュを作ってみよう

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
);
```

1 つのハッシュ内の値（value）に文字列や数値が混在しても構いません。

最後の要素の末尾に `,` があってもなくても構いません。しかし、追加や変更の可能性をふまえて付けることをお勧めします。

---

## ハッシュ

### ハッシュから要素を取り出す

ハッシュの要素にアクセスし、value（値）を取り出してみましょう。

```perl
my %hash = (
    name => 'Larry',
    birth => 1954,
);
print "$hash{name}\n";    # Larry
print "$hash{birth}\n";   # 1954
```

ハッシュの value（値）を取り出すときは、配列と同様に添字を使います。

---

## ハッシュ

### ハッシュから要素を取り出す

```perl
my %hash = (
    name => 'Larry',
    birth => 1954,
);
print "$hash{name}\n";    # Larry
print "$hash{birth}\n";   # 1954
```

配列では<ruby>角括弧<rt>かくかっこ</rt></ruby> `[ ]` を使いましたが、ハッシュでは波括弧 `{ }` を使います。

波括弧 `{ }`にキー名（key）を入れることで、対応する値（value）を取り出すことができます。

---

## ハッシュ

### ハッシュに要素を追加する

ハッシュに要素を追加してみましょう。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
);
$hash{lang} = 'Perl';    # キー名（key）が 'lang', 値（value）が 'Perl' の要素を追加
print "$hash{lang}\n";   # Perl

# name  => 'Larry',
# birth => 1954,
```

追加は取り出すときと同様に、`{ }` を使います。既に存在するキー名（key）の値を代入すると、上書きされます。

---

## ハッシュ

### ハッシュの利点

ハッシュはキー名（key）で値（value）にアクセスできるため、格納順番に左右されることがありません。これは配列との大きな違いであり利点です。

配列を例に説明します。

```perl
my @user = ( 'Name', 'Job', 'lang' );
print "$user[1]\n"    # Job
```

---

## ハッシュ

### ハッシュの利点

前ページの配列です。
```perl
my @user = ( 'Name', 'Job', 'lang' );
print "$user[1]\n"    # Job
```

もし突然、要素の順番が入れ替わってしまったらどうなるでしょう？

```perl
my @user = ( 'lang', 'Name', 'Job' );
print "$user[1]\n"    # Name
```

同じ添字 `[1]` でも、配列の順番が変わっているため、同じ結果にはなりません。

---

## ハッシュ

### ハッシュの利点

しかしハッシュであれば、値は添字の数値（順番）ではなく、キー名（key）で対応づけられています。
このため、ハッシュ内部の要素の格納順に影響を受けません。

```perl
my %hash = (
    lang  => 'Perl',
    birth => 1954,
    name  => 'Larry',
);

print "$hash{name}\n";    # name が表示される  => "Larry"
print "$hash{birth}\n";   # birth が表示される => 1954
print "$hash{lang}\n";    # lang が表示される  => "Perl"
```

---

## ハッシュ

### ハッシュの中身を楽に全部見たい！

質問: ハッシュの中身を全部一度に見たい場合はどうするの？ダブルクォーテーションで囲っても、変数展開できない！

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
print "%hash\n";   # %hash 変数名がそのまま表示される
```

---

## ハッシュ

### ハッシュの中身を楽に全部見たい！

- 回答: `Data::Dumper` モジュールを使います。モジュールについては次回以降で解説します。

```
use Data::Dumper;     # チラ見せ
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
print Dumper \%hash;  # ハッシュリファレンス（第4回で説明）
```

---

### 練習問題 `hash_profile.pl`

1. 以下の人物のプロフィールを `%larry_profile` に格納してください。

   - 名前(name) : Larry Wall
   - 誕生(birth) : 1954
   - 言語(lang) : Perl

1. キー名（key）である `name`、`birth`、`lang` を使って、それぞれの値（value） を出力してください。

1. `wear` というキー名（key）と 'hat' を追加して `Data::Dumper` モジュールで出力してください。

1. 時間に余裕のある人は、Larry のプロフィールを充実させましょう。

   - [ラリー・ウォール](https://ja.wikipedia.org/wiki/%E3%83%A9%E3%83%AA%E3%83%BC%E3%83%BB%E3%82%A6%E3%82%A9%E3%83%BC%E3%83%AB)

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# ハッシュの操作

---

## ハッシュの操作

### keys, delete, exists

ハッシュを便利に扱うための関数について説明します。

- keys

  - ハッシュの名前（key）の集合を返す。

- delete

  - ハッシュの要素を削除する。

- exists
  - ハッシュの要素が存在するかしないかを返す。

---

## ハッシュの操作

### keys

`keys` 関数はハッシュの名前（key）を配列にして返します。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
my @keys = keys %hash;
print "@keys\n";    # birth name lang （順不同）
```

ただし、この `keys` は名前（key）を **順不同、順番が不定** で返します。

ハッシュに書かれた順番で返ってくるとは限りません。

---

## ハッシュの操作

### 名前（key）を決まった順番で受け取る

名前（key）を同じ順番で受け取りたい場合は、 `sort` 関数を使って並び替えます。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
my @keys = keys %hash;      # この時点では順不同
my @sorted = sort @keys;    # sort で並び替える
print "@sorted\n";            # birth lang name （常にこの順番）
```

---

## ハッシュの操作

### 名前（key）を決まった順番で受け取る

値のみを順不同で受け取る `values` 関数もありますが、Perl 入学式のカリキュラムでは使いません。

[Perlの組み込み関数 values の翻訳 - perldoc.jp](https://perldoc.jp/func/values)
---

## ハッシュの操作

### delete

`delete` 関数は、指定したハッシュの名前（key）と、それに対応する値（value）を削除します。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
delete $hash{lang};     # lang という名前（key）を指定して削除
print "$hash{lang}\n";  # Use of uninitialized value ... 警告が表示される
```

---

## ハッシュの操作

### delete

先の例では、最後の行で削除した名前（key）に対応する値（value）を表示しようとしています。

このとき、しっかり「おまじない」を書いていれば、存在しないキーを print しようとしている、と警告してくれます。

---

## ハッシュの操作

### exists

`exists` 関数は、指定したハッシュの名前（key）が存在するか確認します。

```perl
my %hash = (
    name  => 'Larry',
);
if ( exists $hash{name} ) { print "exists\n" }    # exists
if ( exists $hash{foo} )  { print "exists\n" }    # 何も出てこない
```

- 名前（key）が存在すれば `1`（真）を返します。

- 名前（key）が存在しなければ `' '`(空文字、偽)を返します。

---

## ハッシュの操作

### 添字には変数が利用可能

ハッシュの名前（key）は文字列が入ったスカラー変数でも指定可能です。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
my $key = 'lang';
print $hash{$key};    # Perl
```

- `{foo}` であれば foo という文字列が名前（key）となります。

- `{$foo}` であればスカラー変数 `$foo` に代入された文字列が名前（key）となります。

---

## ハッシュの操作

### ハッシュのすべての要素を処理する

`keys` 関数は配列を返します。これを for 文と組み合わせて、ハッシュのすべての要素を処理することができます。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);

for my $key ( keys %hash ) {
    my $value = $hash{$key};
    print "$key is $value\n";
}
```

---

## 練習問題 `menu_print.pl`

以下のハッシュをコピペして利用してください。ハッシュのデータを全て `"<<商品名>> の価格は <<金額>> 円です。"` の形式で出力してみよう。

出力する順番は商品名を ABC 順(昇順)で出力しよう。また、1 品目毎に改行して見やすく出力しよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my %menu = (
    'coffee'   => 380,
    'tea'      => 380,
    'sandwich' => 800,
    'icecream' => 200,
    'salada'   => 600,
    'cake'     => 400,
);
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
