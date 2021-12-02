# Perl と日本語

---

## Perl と日本語

これまで、Perl でプログラムの基礎を学習してきました。

Perl を学習する上での最初の大きな壁はリファレンスですが、それと共に立ち塞がるのが日本語です。

ここからは Perl入学式 での学習環境（linux/mac/msys2）を前提に学習していきます。

---

## Perl と日本語

### プログラム中の日本語

早速試してみましょう。`length` 関数は引数の文字数を返します。

半角文字列 `hello` であれば、 5 と返します。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $greet = 'hello';

print 'length: ' . length($greet) . "\n";   # 5
```

[Perlの組み込み関数 length の翻訳 - perldoc.jp](https://perldoc.jp/func/length)

---

## Perl と日本語

### プログラム中の日本語

しかし、日本語で試すと意図しない結果になります。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 15
```

---

## Perl と日本語

### バイト列（バイナリ文字列）

これは、Perl が 'こんにちは' という日本語の文字列を、人間が読むように「5 文字の平仮名」とは認識しないためです。

Perl は入力、プログラム中の文字列、出力を **バイト列（バイナリ文字列）** として扱います。

この 'こんにちは' という文字列は Perl からは以下のような16進数の連なりとして見えています。

`E3 81 93 E3 82 93 E3 81 AB E3 81 A1 E3 82 8F`

このため、`length` 関数は 15 文字と文字数を返したのです。

---

## Perl と日本語

### プログラム中の日本語を正しく扱う

プログラム中にある「こんにちは」という文字列をひらがな 5 文字として認識するためには、`use utf8` を利用します。

この `use utf8` によって、Perl はバイト列（バイナリ文字列）を、 **テキスト文字列** として扱い、書いてあるままに解釈します。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 5
```

---

## Perl と日本語

### 入力された日本語を正しく扱う

コマンドライン引数から「こんにちは」と入力した時も同様の問題が発生します。

`use utf8` はプログラム中に日本語が書かれていた場合にはテキスト文字列にしますが、今回はコマンドライン引数から入力されるバイト列（バイナリ文字列）なので効果がありません。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8; # あってもなくても同じ

my $input = shift @ARGV;

print 'length: ' . length($input) . "\n";
```

---

## Perl と日本語

### 入力された日本語を正しく扱う

コマンドライン引数から入力されたバイト列（バイナリ文字列）をテキスト文字列にするには <ruby>`Encode`<rt>エンコード</rt></ruby> モジュールの <ruby>decode<rt>デコード</rt></ruby> を使います。

これで、正しく日本語入力を受け取ることができました。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use Encode;     # 追加

my $input = shift @ARGV;
my $decoded_input = decode('utf8', $input);

print 'length: ' . length($decoded_input) . "\n";
```

---

## Perl と日本語

### 出力する日本語を正しく扱う

これまで、「プログラム中に日本語が書いてある場合」「日本語の入力を受け付ける場合」の２つのパターンを学んできました。

最後は「プログラムで処理した日本語を出力する場合」です。

---

## Perl と日本語

### 出力する日本語を正しく扱う

`use utf8` を使った以下のプログラムで、日本語が代入されている `$greet` をそのまま `print` すると警告が出ます。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 5
print $greet . "\n";   # Wide character in print at 〜
```

---

## Perl と日本語

### 出力する日本語を正しく扱う

これは `use utf8` することでテキスト文字列になった 'こんにちは' （を代入した `$greet`）を、テキスト文字列のまま表示しようとしたためです。

> Perl は入力、プログラム中の処理、出力をこの**バイト列（バイナリ文字列）**で扱います。


---

## Perl と日本語

### 日本語の入出力

入力を受け取った後にデコードをしたように、出力する前に Encode モジュールの <ruby>encode<rt>エンコード</rt></ruby> を行うことで、対象の文字列をバイト列（バイナリ文字列）に変換できます。

これで、警告がなくなりました。

```
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Encode; # 追加

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 5
print encode('utf8', $greet) . "\n";        #こんにちは
```

---

## Perl と日本語

### 日本語の入出力

今まで見てきた通り、Perl の日本語処理は以下のようになります。

1. プログラム中に日本語を書いたり、日本語の正規表現などを書くときは `use utf8` してバイト列（バイナリ文字列）をテキスト文字列にする。

2. 日本語の入力を受け付ける場合には `decode` してバイト列（バイナリ文字列）をテキスト文字列にする。

3. 1, 2 のような処理をした文字列を出力するときは `encode` してテキスト文字列をバイト列（バイナリ文字列）にする。


---

## Perl と日本語

### 練習問題

以下のプログラムはコマンドライン引数に名前を入力すると、挨拶と文字数を表示するプログラムです。

これを改修して、コマンドライン引数に日本語を入力しても、正しく表示や文字数カウントができるようにしてください。`print` 文内の `$input` は各自で設定した変数に置き換えてください。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

my $input = shift @ARGV;

print 'こんにちは！' . $input . "さん。\n";
print 'あなたの名前は' . length($input) . "文字です。\n";
```
