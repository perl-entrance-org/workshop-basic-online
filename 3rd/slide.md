# Perl 入学式

## 第 3 回 配列/ハッシュ編

---

## 諸注意

- 講義中の疑問点は Discord で質問して下さい。サポーターが適宜回答やアドバイスを行える様にスタンバイしています。

- うまくプログラムが動かない、分からない時は Discord #講義部屋 でサポーターにヘルプを要請してください。Discord のテキスト及び音声チャットにて個別にサポートします。

- <a href="https://discord.com/" target="_blank">Discord | 会話や交流が楽しめるプラットフォーム</a>

---

## 今日の流れ

- if 文
- 配列
- 配列の操作（join, split, push, pop, unshift, shift, reverse, sort）
- ハッシュ
- ハッシュの操作（keys, delete, exists）

---

# if 文

---

## if 文

### 条件分岐

プログラムは上から下へ順番に処理されていきます。

しかし、変数の状態に応じてプログラムの動きを分岐させることができます。これを **条件分岐** といいます。

条件分岐には様々なパターンがありますが、それらを **真** と **偽** の 2 つの組み合わせで表現します。

真 または 偽 の判断に用いる式を **条件式** といいます。

---

## if 文

### 条件式

条件式、と言っても難しいことではありません。

- 信号が青なら、横断歩道を渡っても良い
- 信号が青でないなら、横断歩道を渡ることはできない

これも立派な条件分岐です。

この場合の条件式は「信号が青であるか、青ではないか」を判断するものです。

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
1. `undef`（まだ値を設定していないスカラー変数）Perl 入学式では扱わない

---

## if 文

### Perl には true/false がない

他のプログラミング言語では、`true` や `false` という単語に 真 または 偽 の意味を持たせたキーワードとして扱うことがあります。

しかし、Perl は `true` や `false` などの文字で真偽値を表すことはできません。

また特別な意味もありません。

あくまで、Perl では先に述べた 5 つの偽値のみが偽、それ以外はすべて真となります。

---

## if 文

### if 文の構文（擬似プログラム）

Perl の if 文はこのような構造です。

```perl
if ( 条件式 ) {
    条件式の結果が 真 の場合に実行されるブロック;
}
else {
    条件式の結果が 偽 の場合に実行されるブロック;
}
```

- 丸括弧 `( )` の中に条件式を書く

- 波括弧 `{ }` の中に 真・偽 それぞれの場合のプログラムを書く。なお、`{ }` で囲まれた部分を **ブロック** と呼ぶ。

---

## if 文

### if 文の構文（擬似プログラム）

先の青信号の例で例えてみます。

```perl
if ( 信号が青だ ) {
    信号を渡る
}
else {
    信号を渡らない
}
```

---

## if 文

### if 文の構文（Perl のプログラム）

```perl
if ( 1 ) {           # 条件式の結果が明示的な「真」の値である 1
    print "OK\n";    # 条件が「真」なので出力される
}
else{
    print "NG\n";    # 実行されない
}
```

---

## if 文

### if 文の構文（Perl のプログラム）

```perl
if ( 0 ) {           # 条件式の結果が「偽」の値である 0
    print "OK\n";    # 実行されない
}
else{
    print "NG\n";    # 条件が「偽」なので出力される
}
```

---

## if 文

### 数値の比較演算子

if 文は条件式によって実行結果が変わります。この条件式の中で利用するのが **比較演算子** です。まずは数値の比較演算子を紹介します。

```perl
== # 右辺と左辺が等しいならば「真」
!= # 右辺と左辺が等しくないならば「真」

<  # 右辺より左辺が小さいならば「真」
>  # 右辺より左辺が大きいならば「真」

<= # 右辺が左辺以上ならば「真」
>= # 右辺が左辺以下ならば「真」
```

---

## if 文

## 数値を使った条件分岐の例

```perl
my $foo = 1;
if ( $foo == 1 ) { # <= ここが条件式！

    print "OK\n"; # こちらが表示される
}
else {
    print "NG\n";
}
```

条件式は `( )` の中の `$foo == 1` です。

---

## if 文

## 数値を使った条件分岐の例

`==` は **右辺と左辺が数値として等しければ真** であることを意味します。

条件式内で `$foo` が `1` と等しい場合に「真」となり、`OK` という文字が表示されます。

`$foo` が `1` と等しくない場合は、「偽」となり `else` に処理が移って `NG` という文字が表示されます。

---

## if 文

### よくあるまちがい (1)

```perl
my $foo == 1; # NG

my $bar =  1; # OK
```

数値の比較に用いる `==` と、代入の `=` を間違えています。

この場合、実行すると以下のエラーが出ます。

```perl
Useless use of numeric eq (==) in void context
```

「おまじない」の 3 行を忘れた場合はエラーが出ずに危険です。

---

## if 文

### よくあるまちがい (2)

```perl
my $foo = 1;
if ($foo =  1) { print $foo } # NG
if ($foo == 1) { print $foo } # OK
```

条件式に注目してください。代入の `=` と、数値の比較に用いる `==` を間違えています。

この場合、実行すると以下のエラーが出ます。

```perl
Found = in conditional, should be ==
```

「おまじない」の 3 行を忘れた場合はエラーが出ずに危険です。

---

## 練習問題(big_or_small.pl)

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

## 回答 ＆ 休憩 ＆ 質問 ＆ 雑談 タイム<br>（ 5 〜 10 分）

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## if 文

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

## if 文

### 文字列の比較演算子

文字列を比較する場合は `eq` や `ne` といった単語を用いた比較演算子を使います。

「文字列の大小」とは、文字列の長さではありません。

辞書順に並べた時に前にくるものが小さく、後ろにくるものが大きいという意味です。

---

## if 文

### 文字列を使った条件分岐

条件式に注目してください。

```perl
my $foo = 'hello';

if ( $foo eq 'hello' ) { # <= ここが条件式

    print "OK\n";   # こちらが表示される
}
else {
    print "NG\n";
}
```

文字列を比較しているので、 `==` ではなく `eq`を用いています

---

## 練習問題(question_word_arg.pl)

```perl
#!/usr/bin/env perl
use strict;
use warnings;
my $answer = 'perl';    # 好きな文字を入力しておく
```

簡単な文字当てゲーム `question_word.pl`を作成しよう。

1. コマンドライン引数から文字列を一つ入力します。

1. その文字列が `$answer` と一致したら`OK`と表示します。

1. 外れたら `NG` と表示します。

---

## 回答 ＆ 休憩 ＆ 質問 ＆ 雑談 タイム<br>（ 5 〜 10 分）

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## if 文

### 数値 と 文字列 の比較を混合させる<br>アンチパターン

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

このため、条件式の左辺・右辺は文字列として **異なる** と判断されます。

---

## if 文

### 数値 と 文字列 の比較を混合させる<br>アンチパターン

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

## if 文

### 数値 と 文字列 の比較を混合させる<br>アンチパターン

条件式を書くときは、

- 数値を比較したい

- 文字列を比較したい

どちらなのかを認識した上で、対応した比較演算子を選ぶことが重要です。

---

## if 文

### 複数の条件分岐

`elsif`を使うことで、分岐条件を増やすことができます。

`else if` ではなく、 **`elsif`** です。

---

## if 文

### 複数の条件分岐

```perl
my $foo = 1;

if ( $foo == 1 ) {
    print '$foo is One' . "\n"; # これが表示される
}
elsif ( $foo == 2 ) {
    print '$foo is Two' . "\n";
}
elsif ( $foo == 3 ) {
    print '$foo is Three' . "\n";
}
else {
    print '$foo is not even One, even Two, even Three' . "\n";
}
```

---

## 練習問題(big_seven_small_arg.pl)

先に作ったトランプの大小判定ゲームを改良してみよう。

1. 変数 `$mycard` に、コマンドライン引数を利用して 1 から 13 までの好きな数字を直接入力できる様に改造しよう。

2. `$mycard` の数が 7 より大きければ `BIG!` と表示します。

3. `$mycard` の数が 7 と等しければ、 `Seven!` と表示します。

4. `$mycard` の数が 7 未満であれば、 `SMALL!` と表示します。

---

## 回答 ＆ 休憩 ＆ 質問 ＆ 雑談 タイム<br>（ 5 〜 10 分）

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

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
my $foo = 10;

if ( $foo > 0 && $foo % 2 == 0 ) {  # $fooが 0 より大きい かつ 2 で割り切れる
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
my $foo = 10;

if ( $foo > 0 && $foo % 2 == 0 ) {
```

1. `&&` の左辺にある `$foo` が 0 より大きいので、`$foo > 0` は 真。
1. `&&` の右辺にある `$foo` を 2 で割った剰余は 0 なので、`$foo % 2 == 0` も 真。
1. 「1. かつ 2. が 真」の条件を満たすので、条件式は 真 となり、`&&: OK` と表示される。

---

## 論理演算子

### OR

条件式に注目してください。

```perl
my $foo = 10;

if ( $foo > 0 || $foo % 2 == 1 ) {  # $fooが 0 より大きい または 2 で割り切れない
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
my $foo = 10;

if ( $foo > 0 || $foo % 2 == 1 ) {
```

1. `||` の左辺にある `$foo` が 0 より大きいので、`$foo > 0` は 真。

1. 「1. または 2. が 真」の条件のうち、「1. が 真 」を満たすので、条件式は 真 となり、`||: OK` と表示される。右辺は比較されない。

---

## 論理演算子

### 3 つ以上の値を比較したい場合

```perl
my $small  = 10;
my $medium = 20;
my $large  = 30;

if ( $small < $medium <= $large ) { # Perl 5.30までのバージョンではエラーになる
    print "小さい順に並んでます\n";
}
```

---

## 論理演算子

### 3 つ以上の値を比較したい場合

```perl
$small < $medium < $large
```

上記のように、に 3 つ以上の値を同時に比較することはできません。

下記のようなエラーとなります。

    syntax error at sample.pl line 5, near "$medium <"

ただし、2020 年にリリースされた Perl 5.32 より、3 つ以上の値を同時に比較することが可能になりました。

---

## 論理演算子

### 3 つ以上の値を比較したい場合(Perl 5.32 以降)

```perl
my $small  = 10;
my $medium = 20;
my $large  = 30;

if ( $small < $medium <= $large ) { # 不等号が2種類ある
    print "小さい順に並んでます\n";
}
```

不等号をはじめ、演算子には[優先順位](https://perldoc.jp/docs/perl/perlop.pod)があります。

上記の例の場合、以下のように解釈されます。

```perl
$small < $medium  && $medium <= $large
```

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

`$small < $medium` かつ `$medium <= $large` というように、論理演算子を使って比較することも可能です。

---

## 練習問題(question_num_arg.pl)

```perl
#!/usr/bin/env perl
use strict;
use warnings;
my $answer = 10;    # 好きな値を入力しておく
```

簡単な数当てゲーム `question_num_arg.pl`を作成しよう。

コマンドライン引数から数字を一つ入力し、その数字とプログラム中の `$answer` とを比較して、次ページの条件に従った表示をするプログラムを作ってください。

---

## 練習問題(question_num_arg.pl)

- `$answer` と一致したら `OK`

- `$answer` より大きければ `too big`

- `$answer` より小さければ `too small`

- （余裕があれば）入力した値が `$answer`から -5 〜 +5 の範囲内(例えば、`$answer`が 10 なら 5 〜 15)の場合、`near`と表示する。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## （コラム）TMTOWTDI

Perl のスローガン、「ティムトゥーディー」と読みます。

" There's more than one way to do it. " の頭文字をとったもの。

意味は「やり方はひとつじゃない」。

---

## （コラム）TMTOWTDI

Larry は「プログラミング言語は、いろんな対象をシンプルに記述する為に、ある程度複雑でなければならない」と信じています。

Perl は同じ処理を、様々な書き方で表すことができます。

これについては、きっとこれからの Perl 入学式のカリキュラムの中で実際に体験することになります。

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

このリストはスクリプトに書かれている通りの「要素の集合」でしかなく、スクリプトが加えたり減らしたりすることができません。

そこで、このリストを配列に代入することで、Perl が配列内の要素を操作することが可能になります。

---

## 配列

### 配列の作り方（左辺）

左辺に注目してください。

```perl
my @array = ( 1, "foo", 3 );
```

スカラー変数と同じく、初めてその配列を使うときは `my` で宣言します。

同様に `=` 演算子を使うことで、右辺のリストを左辺の配列に代入することができます。

配列は変数名の前に `@` をつけます。

`@` は `アレイ(array)`、 `@rray` 、と覚えるとよいでしょう。 (array は配列を意味する英単語です)

---

## 配列

### 配列の展開

```perl
my @array = ( 1, "foo", 3 );

print "@array" . "\n";    # 1 foo 3
```

配列はスカラー変数と同じく `" "` ダブルクォーテーションで囲むことで変数展開が可能です。

---

## 練習問題(make_array.pl)

1. 配列 `@num` に好きな数値 3 つを設定しましょう。

2. `@num` の中身を print 文を使って画面に出力してみましょう。

3. 配列 `@strings` に好きな文字列(好きな何か(食べ物でもスポーツでも本でも)何でも構いません)3 つを設定しましょう。

4. `@strings` の中身を print 文を使って画面に出力してみましょう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

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

配列から複数の要素を取り出すときには[配列スライス](https://tutorial.perlzemi.com/blog/20080216120316.html)を利用します。この時のシジルは `@` になります。Perl 入学式では説明しません。

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

## 練習問題(fruits.pl)

以下のサンプルプログラムでは、果物の名前が格納された配列 `@fruits` の中に、野菜が 1 つ紛れ込んでいます。
その場所を "メロン" で上書きして、配列の要素を全て果物にしましょう。

```perl
#!/usr/bin/env perl

use strict;
use warnings;

my @fruits = ( "りんご", "バナナ", "ネギ", "もも", "キウイ" );

print "@fruits" . "\n";
```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 配列

### 配列要素への代入

配列に新たな要素を代入する際は、取り出すときと同様に添字を使って要素を指定します。

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

## 練習問題(array_sum.pl)

以下のサンプルプログラムにプログラムを追記して完成させよう。
@numbers に格納された数字を全て足した合計を画面に出力させてみましょう。

```perl
#!/usr/bin/env perl

use strict;
use warnings;

my @numbers = (10, 33, 7, 90, 42 );

```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

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

## 練習問題(array_sum2.pl)

先ほどの練習問題 array_sum.pl のプログラムを書き換えてみよう。
for 文を使って、 @numbers に格納された数字を全て足した合計を画面に出力させてみましょう。

```perl
#!/usr/bin/env perl

use strict;
use warnings;

my @numbers = (10, 33, 7, 90, 42 );

```

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

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

## 練習問題(count_up.pl)

1. 1 から 100 まで順番に画面に出力するプログラムを書きましょう。

2. 1.で作ったプログラムを改良し、3 の倍数の数字の時だけ、数字と一緒に"3 の倍数"と出力してみましょう。

---

## 練習問題(array.pl)

配列 `@array` に好きな数値や文字列を設定し、for 文で出力してください。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 練習問題(for.pl)

コマンドライン引数を用いて配列 `@array` に好きな数値や文字列を入力し、for 文で出力してください。

---

## 練習問題(even.pl)

- for 文を使って `1` から `100` までを出力してみましょう。

- 次に `1` から `100` までのうち、偶数のみを出力するようにプログラムを変えてみましょう。

  - ヒント: Perl では計算の剰余を求める `%` 演算子があります。

  - 例えば `5 % 3` は 5 を 3 で割った余りですので `2` が求まります。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## コラム 変数名

スカラー変数 $number と 配列 @number は名前こそ同じですが、異なる種類の変数です。

以下のような for 文も正しく動きます。

```perl
my @number (1 .. 10)
for my $number (@number){
    print $number . "\n";
}
```

---

## コラム 変数名

しかし、変数の種類が違うといえど、同じ名前がついていると紛らわしいこともあります。

Perl 入学式では、基本的に 「スカラー変数は単数形」「配列は複数形」のルールで記述していきます。

なお、実際の現場のコードでは会社やチームのルールに従って記述してください。

---

## 練習問題(fizzbuzz.pl)

1 から 100 までの数字について、以下のようなルールに従って表示を行う `fizzbuzz.pl` を作成しましょう。

- その数字が `3` で割り切れるなら `Fizz` と表示する。
- その数字が `5` で割り切れるなら `Buzz` と表示する。
- その数字が `3` でも `5` でも割り切れるなら `FizzBuzz` と表示する。
- その数字が `3` でも `5` でも割り切れないなら その数字 を表示する。

> コンピュータサイエンス学科卒業生の過半数にはそれ(fizzbuzz)ができないのだ<br> > [どうしてプログラマに・・・プログラムが書けないのか?](http://www.aoky.net/articles/jeff_atwood/why_cant_programmers_program.htm)

---

## 回答 ＆ 休憩 ＆ 質問 ＆ 雑談 タイム<br>（ 5 〜 10 分）

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## お疲れ様でした!

第 2 回よりもさらに増えた長い時間、Perl 入学式第 3 回お疲れ様でした！

是非 Perl 入学式の Discord #雑談部屋 でサポーターや参加者の皆さんと交流しましょう。

不明点も Discord #雑談部屋 で是非質問してください。

第 4 回以降の参加もお待ちしております!

---

## 次回（以降）予告

- 配列の操作

- ハッシュ

- ハッシュの操作

- サブルーチン
