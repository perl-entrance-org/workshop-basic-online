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
- 配列の操作（join, split, push, pop, unshift, shift, reverse sort）
- ハッシュ
- ハッシュの操作（keys, delete, exists）

---

# 配列

---

## 配列

### 配列とは

今まで学んできた変数はスカラー変数という、1 つの値のみを格納する変数でした。

例えば、小学校の 4 教科の平均点数を出すとき、$kokugo, $sansuu, $shakai, $science と都度スカラー変数を 4 つ書いて計算するのは大変です。

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
@nums に格納された数字を全て足した合計を画面に出力させてみましょう。

```perl
#!/usr/bin/env perl

use strict;
use warnings;

my @nums = (10, 33, 7, 90, 42 );

```

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

先ほどの練習問題 arraysum.pl のプログラムを書き換えてみよう。
for 文を使って、 @nums に格納された数字を全て足した合計を画面に出力させてみましょう。

```perl
#!/usr/bin/env perl

use strict;
use warnings;

my @nums = (10, 33, 7, 90, 42 );

```

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

## 練習問題(for.pl)

コマンドライン引数を用いて配列 `@array` に好きな数値や文字列を入力し、for 文で出力してください。

---

## 練習問題(even.pl)

- for 文を使って `1` から `100` までを出力してみましょう。

- 次に `1` から `100` までのうち、偶数のみを出力するようにプログラムを変えてみましょう。

  - ヒント: Perl では計算の剰余を求める `%` 演算子があります。

  - 例えば `5 % 3` は 5 を 3 で割った余りですので `2` が求まります。

---

## 練習問題(fizzbuzz.pl)

1 から 100 までの数字について、以下のようなルールに従って表示を行う `fizzbuzz.pl` を作成しましょう。

- その数字が `3` で割り切れるなら `Fizz` と表示する。
- その数字が `5` で割り切れるなら `Buzz` と表示する。
- その数字が `3` でも `5` でも割り切れるなら `FizzBuzz` と表示する。
- その数字が `3` でも `5` でも割り切れないなら その数字 を表示する。

> コンピュータサイエンス学科卒業生の過半数にはそれ(fizzbuzz)ができないのだ<br> > [どうしてプログラマに・・・プログラムが書けないのか?](http://www.aoky.net/articles/jeff_atwood/why_cant_programmers_program.htm)

---

# 配列の操作

---

## 配列の操作

### join, split

<ruby>**関数**<rt>かんすう</rt></ruby> とは、ある働きをもつ機能のことです。

いままで変数の中身を表示してきた `print` も関数です。

配列に関係する関数を、まずは 2 つ紹介します。

- join

  - リストや配列の要素を連結してスカラー値にする

- split
  - 文字列やスカラー変数の値を分割して、リストにする

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

- `/ /` は正規表現リテラルと呼ばれるものです。この二つのスラッシュ `/` の間 にあるもので文字列を分割します。上記の例では、アンダースコア（下線）で文字列を区切っています。

---

## 練習問題 (1/4)

次の処理をする `join.pl` を作りましょう。

1. `("0120", "123", "XXX")` という配列を作ってください。

2. 作成した配列を join 関数を利用して `-` で連結して表示してください。

---

## 練習問題 (2/4)

次の処理をする `split.pl` を作りましょう。

- "There's more than one way to do it." という文字列を作り、split 関数で `" "`（半角スペース）ごとに分割して配列 `@array` に格納し、すべて出力してください。

---

## 練習問題 (3/4)

次の処理をする `join2.pl` を作りましょう。
`@array` の中身の数字を、半角スペース区切りの文字列として画面に表示しましょう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my @array = (2, 8, 10, 203, 8760);
```

---

## 練習問題 (4/4)

次の処理をする `split2.pl` を作りましょう。
変数 \$log には、カンマ区切りのデータが格納されています。各要素を配列に格納しましょう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $log = "2020-7-10,12:30:55,GET /css-combinators/ HTTP/1.1,200,7974,http://webllica.com/feed-icon-by-html-css/,Mozilla/5.0 (Windows NT 6.0)";
```

---

## 配列の操作

### push, pop, unshift, shift

引き続き、配列の操作を学んでいきます。

配列やリストの用途は主に 2 つです。

- 名簿など、要素の **単純な集まり** として表現したい場合。

- ランキングなど、要素間の **順序** 関係を表現したい場合。

これらの用途においては、要素の順番の並べ替えや、要素の追加、取り出しが必要になります。

まずは追加と取り出しを学んでいきます。

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

### push / pop

push / pop は配列の末尾の値を操作する関数です。

```perl
my @array = ( 'Alice', 'Bob' );
push @array, 'Chris';    # 末尾に要素 Chris を追加する
print "@array" . "\n";   # Alice Bob Chris

my $element = pop @array;    # 末尾の要素 Chris を取り出す
print "@array" . "\n";       # Alice Bob
print "$element" . "\n";     # Chris
```

- 配列の **末尾に要素を追加** するときには `push` を利用します。

- 配列の **末尾から要素を取り出す** ときには `pop` を利用します。

---

## 配列の操作

### 練習問題(push_pop.pl)

次のコードに `push`、`pop` 関数を使って、 `@array` の中身の順番を正しくするプログラムを書きましょう。
`$temp` 変数は、一時的にデータを仮置するために使用する変数です。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $elements = "second";
my $temp;
my @array = ( 'first', 'third' );

<<ここにコードを書く>>

print "@array\n";
```

---

## 配列の操作

### unshift / shift

unshift / shift は配列の先頭の値を操作する関数です。

```perl
my @array = ( 'Alice', 'Bob' );
unshift @array, 'Chris';    # 先頭に要素 Chris を追加する
print "@array" . "\n";      # Chris Alice Bob

my $element = shift @array; # 先頭の要素 Chris を取り出す
print "@array" . "\n";      # Alice Bob
print "$element" . "\n";    # Chris
```

- 配列の **先頭に要素を追加** するときには `unshift` を利用します。

- 配列の **末尾から要素取り出す** ときには `shift` を利用します。

---

## 配列の操作

### 練習問題(shift.pl)

次のコードに `shift`、`unshift` 関数を使って、 `@array` の中身の順番を正しくするプログラムを書きましょう。
`$temp` 変数は、一時的にデータを仮置するために使用する変数です。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $elements = "second";
my $temp;
my @array = ( 'first', 'third' );

<<ここにコードを書く>>

print "@array\n";
```

---

## 練習問題 (1/2)

次の処理をする `array_pop_shift.pl` を作りましょう。

1. ('Alice', 'Bob', 'Chris') という配列 `@array` を作ってください。

2. 配列 `@array` から 'Chris' を取り出し、出力してください。

3. 配列 `@array` から 'Alice' を取り出し、出力してください。

---

## 練習問題 (2/2)

次の処理をする `array_push_unshift.pl` を作りましょう。

1. ('Alice', 'Bob', 'Chris') という配列 `@array` を作ってください。

2. 配列 `@array` の末尾に `Diana` を追加し、 ('Alice', 'Bob', 'Chris', 'Diana') という配列を作ってください。

3. 配列 `@array` の最初に `Eve` を追加し、 ('Eve', 'Alice', 'Bob', 'Chris', 'Diana') という配列を作ってください。

4. 配列を for 文で出力してみましょう。

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

### 配列の操作 reverse

連番を逆順で配列に格納したいときは、範囲演算子と組み合わせると便利です。

```perl
my @array = reverse( 1 .. 5 );

print "@array" . "\n";    # 5 4 3 2 1
```

---

## 練習問題(count_down.pl)

1. 下のプログラムに追記して、100 から 4 までカウントダウンするプログラムを作りましょう。

2. 1.で作ったプログラムに追記して(1.で使った配列を利用して)、１から 97 までカウントアップするプログラムを作りましょう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my @array = (1 .. 100);
```

---

## 配列の操作

### 文字列 sort

sort は配列をルール順に並べ替えて、その配列を返します。

`sort`のみ、あるいは `sort { $a cmp $b } @array` と書くと、「文字列」として昇順に（ `a` から `z` へ）並べ替えます。

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

### 数値 sort

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

- sort ブロック内の $a と $b を入れ替える方法

```perl
my @num = ( 5, 200, 40, 3, 1 );
my @sorted1 = sort { $b <=> $a } @num;
print "@sorted1" . "\n";    # 200, 40, 5, 3, 1
```

- sort した結果を reverse で逆順にする方法

```perl
my @num = ( 5, 200, 40, 3, 1 );
my @sorted2 = reverse sort { $a <=> $b } @num;
print "@sorted2" . "\n";    # 200, 40, 5, 3, 1
```

---

## 練習問題(sort.pl)

以下のプログラムに追記して、`@array` の中身を昇順にソートして出力しよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my @array = (10, 3, 21, 7, 1, 100);
```

---

## （コラム）より深く学ぶには？ 勉強会への参加

日本中の Perl コミュニティが、定期的/不定期に勉強会を開催しています。

Q. 難しい内容かもしれないので不安...

A. 参加するだけなら怖くありません。参加費も無料、もしくは会場費の割勘程度です。

---

## （コラム）勉強会への参加

こんな世界もあるんだ〜、程度に聴講すると、数年後にふと繋がることもあります。

懇親会に参加して盛り上がると、さらに業界や Perl 界隈の裏話が聴けたりも！？

---

# ハッシュ

---

## ハッシュ

### ハッシュとは

ハッシュは Perl のデータ構造の 1 つで、配列と同じく要素の格納・取り出しができます。

ただし、配列と異なり **名前（key）** と **値（value）** のペアで格納されます。

このペアのことを **要素** と呼びます。

---

## ハッシュ

### ハッシュを作ってみよう

ハッシュはシジル `%` を使って定義します。

```perl
my %hash = (
    name  => 'Larry',   # 名前（key）はname, 値（value）は'Larry'
    birth => 1954,      # 名前（key）はbirth, 値（value）は 1954
);
```

名前（key）と 値（value）の間にある `=>` はファットコンマ演算子と呼ばれ、コンマと同等の役割を果たします。

```perl
my %hash = ( 'name' , 'Larry', 'birth' , 1954, );
```

このようにコンマに置き換えても動きますが、配列と見分け難くなります。ハッシュではファットコンマ演算子を使いましょう。

---

## ハッシュ

### ハッシュを作ってみよう

名前（key）は文字列として解釈されます。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
);
```

上記の例のように、名前（key）である `name` と `birth` は、シングルクォート `' '` やダブルクオート '" "' で囲む必要はありません。

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

配列では<ruby>角括弧<rt>かくかっこ</rt></ruby> `[ ]` を使いましたが、ハッシュでは波括弧 `{ }` を使います。

波括弧 `{ }`に名前（key）を入れることで、対応する値（value）を取り出すことができます。

---

## 練習問題(nickname_hash.pl)

1. ニックネームのキー `nickname` と 身長のキー `height` の２つのキーを持つハッシュを作ろう。

2. それぞれのキーに自分のニックネーム、身長を設定しよう。

3. ハッシュの中身を画面に出力してみよう。

---

## ハッシュ

### ハッシュに要素を追加する

ハッシュに要素を追加してみましょう。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
);
$hash{lang} = 'Perl';    # 名前（key）が 'lang', 値（value）が 'Perl' の要素を追加
print "$hash{lang}\n";   # Perl
```

追加は取り出すときと同様に、`{key}` を使います。ハッシュの中身は以下のようになります。

```perl
name  => 'Larry',
birth => 1954,
lang  => 'Perl',
```

既に存在する名前（key）の値を代入すると、上書きされます。

---

## ハッシュ

### ハッシュの利点

配列は名前（key）で値（value）にアクセスできるため、格納順番に左右されることがありません。これは配列との大きな違いであり利点です。

配列を例に説明します。

```perl
my @user = ( 'Name', 'Job', 'lang' );
print "$user[1]\n"    # Job
```

もし突然、要素の順番が入れ替わってしまったらどうなるでしょう？

```perl
my @user = ( 'lang', 'Name', 'Job' );
print "$user[1]\n"    # Name
```

同じ添字 `[1]` でも、配列の中身が変わっているため、同じ結果にはなりません。

---

## ハッシュ

### ハッシュの利点

しかしハッシュであれば、値は添字の数値（順番）ではなく、名前（key）で対応づけられています。
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

## 練習問題(nickname_hash2.pl)

1. 先の練習問題 `nickname.pl` で作ったハッシュに要素を追加しよう。

2. ハッシュに `favorite` というキーで、好きな何か（食べ物、スポーツ etc...）を値として追加しよう。

3. `height` の値を 10 倍した値に書き換えてみよう。

4. ハッシュの中身(3 つの要素)を画面に出力してみよう。

---

## ハッシュ

### ハッシュの中身を楽に全部見たい！

- 質問: ハッシュの中身を全部一度に見たい場合はどうするの？ダブルクォーテーションで囲っても、変数展開できない！

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
print "%hash\n";   # %hash 変数名がそのまま表示される
```

- 回答: `Data::Dumper` モジュールを使います。これについては第 4 回で解説します。

```
use Data::Dumper;     # チラ見せ
print Dumper \%hash;  # ハッシュリファレンス（第4回で説明）
```

---

## 練習問題（hash_profile.pl）

1. 以下の人物のプロフィールを `%larry_profile` に格納してください。

   - 名前(name) : Larry Wall
   - 誕生(birth) : 1954
   - 言語(lang) : Perl

2. key である `name`、`birth`、`lang` を使って、それぞれの value を出力してください。

3. 時間に余裕のある人は、Larry のプロフィールを充実させましょう。

   - [ラリー・ウォール](https://ja.wikipedia.org/wiki/%E3%83%A9%E3%83%AA%E3%83%BC%E3%83%BB%E3%82%A6%E3%82%A9%E3%83%BC%E3%83%AB)

---

## （コラム）検索 vs 書籍

最近は検索する(ググる)ことで解決することも多いです。

しかし、書籍を通読することで、体系だった知識を身につけることができます。

ネットの情報は玉石混交、一方で書籍の場合は情報の陳腐化があり、一長一短と言えます。

---

## （コラム）オススメの書籍

- 「<a href="https://www.oreilly.co.jp/books/4873110963/" target="_blank">プログラミング Perl</a>」(通称: ラクダ本)。プログラミング未経験の初心者にはハードルが高い。海外では第 4 版まで出版されている（https://www.oreilly.com/library/view/programming-perl-4th/9781449321451/）

- 「<a href="https://www.oreilly.co.jp/books/9784873118246/" target="_blank">初めての Perl</a>」(通称: リャマ本)。若干プログラミング初心者向け、オライリーの文体に慣れていないと多少厳しいかも。

- 「<a href="https://www.wgn.co.jp/store/dat/3227/" target="_blank">CPAN モジュールガイド</a>」CPAN モジュール（後述）のガイド本。Perl の可能性を知ることができる良書。

---

## （コラム）オススメの書籍

- 「<a href="https://booth.pm/ja/items/260345" target="_blank">雅な Perl</a>」2015 年に第 3 版刊行。同人誌、とはいえ初心者向けという意味ではかなり秀逸な解説をしています。

- 「<a href="https://gihyo.jp/book/2012/978-4-7741-5025-3" target="_blank">もっと自在にサーバを使い倒す 業務に役立つ Perl</a>」サーバーのログ加工を中心に、Perl の実用例を学べる本です。

様々な書籍がたくさんありますが、割愛します。

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

値のみを順不同で受け取る `values` 関数もありますが、Perl 入学式のカリキュラムでは使いません。

[Perl 入門ゼミ values 関数 - ハッシュのすべての値の取得](https://tutorial.perlzemi.com/blog/20100222126425.html)

---

## 練習問題(hashkeys.pl)

次のハッシュの key を全て取り出して、画面に出力してみよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my %users = (
    'Alice'  => 1,
    'Bob'    => 2,
    'Chris'  => 3,
    'Daiana' => 4,
);
```

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
print "$hash{lang}\n";
```

この例では、最後の行で削除した名前（key）に対応する値（value）を表示しようとしています。

このとき、しっかり「おまじない」を書いていれば、存在しないキーを print しようとしている、と警告してくれます。

---

## ハッシュの操作

### exists

`exists` 関数は、指定したハッシュの名前（key）が存在するか確認します。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
if ( exists $hash{name} ) { print "exists\n" }    # exists
if ( exists $hash{foo} )  { print "exists\n" }    # 何も出てこない
```

- 名前（key）が存在すれば `1`（真）を返します。

- 名前（key）が存在しなければ `' '`(空文字、偽)を返します。

---

## 練習問題(menu.pl)

次のハッシュはカフェのメニュー一覧を表しています。

1. `icecream` のメニューを削除(ハッシュから`icecream`のキーと値を削除)してみよう。

2. `icecream` のメニューが削除されていれば、"夏期メニューは終了しました"と画面に表示してみよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my %menu = (
    'coffee'   => 380,
    'tea'      => 380,
    'sandwich' => 800,
    'icecream' => 200,
    'salad'    => 600,
    'cake'     => 400,
);
```

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

どのような結果になるでしょうか？

---

## 練習問題（1/3）

次の処理をする `menu_print.pl` を作りましょう。以下のハッシュをコピペして利用してください。

次のハッシュのデータを全て `"<<商品名>> の価格は <<金額>> 円です。"` の形式で出力してみよう。

出力する順番は商品名を ABC 順(降順)で出力しよう。また、1 品目毎に改行して見やすく出力しよう。

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

## 練習問題（2/3）

次の処理をする `hash_func.pl` を作りましょう。以下のハッシュをコピペして利用してください。

```perl
my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);
```

1. 以下の要素を追加してください。
   - 名前（key）: software
   - 値（value）: patch
2. `keys` 関数を使って, `%hash` の名前（key）をすべて出力してください。

3. `delete` 関数を使って, 1 で使ったハッシュから birth の要素を削除してください。

---

## 練習問題（3/3）

練習問題（2/3）で作成した `hash_func.pl` を利用します。

`exists` 関数を使って、`name`, `birth`, `lang`, `software` の各要素が存在するか確認してください。`名前（key）`は各要素の key 名が入るものとします。

- 存在している場合は `名前（key） is exist.` と表示する。

- 存在しない場合は `名前（key） is not exist.` と表示しする。

---
