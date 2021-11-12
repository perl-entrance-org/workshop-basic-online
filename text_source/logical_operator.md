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

不等号をはじめ、演算子には[優先順位](https://perldoc.jp/docs/perl/perlop.pod)があります。

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

<a href="https://perldoc.perl.org/perl5320delta#Chained-comparisons-capability">chained comparison</a> = **連鎖比較** とよびます。

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
