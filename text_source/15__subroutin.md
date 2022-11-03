# サブルーチン

---

## サブルーチン

### サブルーチンとは?

プログラムの中で、意味や内容がまとまっている作業をひとかたまりにしたものを **サブルーチン** と呼びます。

Perl におけるサブルーチンは、「関数」とほぼ同義です。

---

## サブルーチン

### サブルーチンと組み込み関数

Perl には、これまで使ってきた `print` や `join` など、Perl が提供する関数（組み込み関数）が用意されています。

サブルーチンを使うことで、 `print` や `join` のように、「特定の処理を行うプログラム」をひとかたまりにして、 簡単に利用することが出来るようになります。

---

## サブルーチン

### サブルーチンの利点

サブルーチンを使い、特定の処理を分離することでプログラムの見通しをよくすることができ、コードの再利用も容易になります。

また、Perl の学習を進める上で「オブジェクト指向」は避けて通れません。このオブジェクトを構成する要素の一つがサブルーチンです。（他にはリファレンスがありますが、それは次回でやります）

---

## サブルーチン

### サブルーチンの定義

それでは、早速サブルーチンを定義していきましょう。

今回は、末尾に自動的に改行 `\n` を付与しながら文字列を表示する `say` というサブルーチンを定義してみます。

---

## サブルーチン

### サブルーチンの定義

```perl
sub say {               # -┐
    my $str = shift @_; #  │ サブルーチン say を
    print "$str\n";     #  │ 定義しているところ
}                       # -┘ サブルーチン末尾に ;　は不要
say("hello, world!"); # hello, world!
```

Perl でサブルーチンを定義する為には、以下のように書きます。

サブルーチンの末尾に `;` は不要です。

```perl
sub サブルーチン名 { ... }
```

それでは、詳しく見て行きましょう。

---

## サブルーチン

### サブルーチンの命名規則

```perl
sub say { ... }
```

- サブルーチン名として使える文字は以下です。

  - 大文字・小文字の英数字
  - アンダースコア(`_`)

- ただし、サブルーチン名の先頭文字には以下の制限があります。
  - 英文字
  - `_`

これは変数名と同じルールです。

---

## サブルーチン

### Perl におけるサブルーチンの命名規則

```perl
sub say_hello_world { ... }

sub say_good_morning { ... }
```

変数名と同様に、サブルーチン名は <ruby>`_`<rt>アンダースコア</rt></ruby> で単語をつなげたスネークケース（snake_case）を利用します。

サブルーチンは機能をまとめたものになるため、その名称が単語で終わることは少ないです。

わかりやすい名前づけを意識しましょう。

---

## サブルーチン

### サブルーチンの呼び出し

```perl
say();
```

定義したサブルーチンは、定義したサブルーチン名の後ろに `()` を付けることで利用できます。

行末に書く場合には、 `;` が必要です。

このようにサブルーチンを利用することを「**サブルーチンの呼び出し**」といいます。

---

## サブルーチン

### サブルーチンの呼び出し

```perl
say('Hello Perl!');
```

サブルーチンに値(引数)を渡したい場合、 `()` の中に書きます。

`()` を使わずに, サブルーチン名の先頭に `&` を付けて `&say` という書き方で呼びだすこともできますが、古い書き方なので使わないようにしましょう。

---

## サブルーチン

### サブルーチンの引数

```perl
sub say {
    my $str = shift @_; # ←┐
    print "$str\n";     #  │ サブルーチンの引数 'Hello Perl' は
}                       #  │ @_ という配列に格納される
                        #  │
say('Hello Perl');      # ─┘
```

サブルーチンに与えられた引数は、 `@_` という配列に格納されます。

2 行目では、`shift` を使って、この　`@_` の先頭の要素を取得しています。

このサブルーチンを `say('hoge');` のように呼んだ場合、 `@_` の中身は`('hoge')` となり、 `$str` には `hoge` という文字列が入ります。

---

## サブルーチン

### サブルーチンの引数

```perl
sub say {
    my $str = shift;  # @_ が省略されている
    print "$str\n";
}

say('Hello Perl');    # Hello Perl
```

`@_` は、省略することができます。

`my $str = shift;` 

は、

 `my $str = shift @_;` 

 と同じ意味になります。

---

## サブルーチン

### サブルーチンの位置

```perl
say('Hello Perl');  # Hello Perl

sub say {
    my $str = shift;
    print "$str\n";
}
```

同じファイル内であれば、サブルーチンの位置にかかわらず `say('hoge');` として呼び出すことができます。

ファイル末尾にサブルーチンがまとまっている方が見やすい場合は、このスタイルで書きましょう。

---

## サブルーチン

### サブルーチンに複数の引数を渡す

```perl
sub plus {
    my ($first, $second) = @_;  # @_ の中に 2, 5が入る
    return $first + $second;    # ↑
}                               # │
                                # │
my $result = plus(2, 5);        # ┘ plus の引数 2, 5
print $result . "\n";   # 7
```
サブルーチンに複数の引数を与える時は、呼び出し時に`( )` の中で配列のようにカンマ　`,` で区切って渡します。

サブルーチン側では `@_` を右辺に起き、個別に変数に代入して受け取ります。


---

## サブルーチン

### サブルーチン側の引数の受け取り方

```perl
sub plus {
                        # @_ を省略した場合
    my $first  = shift;  # @_ の先頭から1つ取り出して変数に入れている
    my $second = shift;  # @_ の先頭から1つ取り出して変数に入れている
    return $first + $second;
}
my $result = plus(2, 5);
```

```perl
sub plus {
    my $first  = $_[0];  # $_[0] : @_ の最初の要素
    my $second = $_[1];  # $_[1] : @_ の次の要素
    return $first + $second;
}
my $result = plus(2, 5);
```

先程の引数の受け取り方は、上記のプログラムと同じ意味になります。

---

## サブルーチン

### 返り値と return

```perl
sub plus {
    my ($first, $second) = @_;
    return $first + $second;  # $first + $second の結果を返す
}
my $result = plus(2, 5);
print $result . "\n";   # 7
```

サブルーチンは, `return` を使うことで、任意のデータを呼び出し元へ返すことができます。

サブルーチンや関数の処理結果のことを **<ruby>返り値<rt>かえりち</rt></ruby>** といいます。

この場合、 `$first + $second` の計算結果が呼び出し元へ返され、 `$result` に格納されます。

---

## サブルーチン

### 複数の return

```perl
sub is_same {
    my ( $first, $second ) = @_;
    if ( $first eq $second ) {
        print "true\n";    # $first と $second が等しければ表示
        return 1;
    }
    else {
        print "false\n";    # $first と $second が異なれば表示
        return 0;
    }
    print "YOU WILL NEVER SEE IT\n"; # 絶対に表示されない!
    return;
}
```

`return`に到達した場合、それ以降の処理は一切行われず、すぐさま値を返してサブルーチンの実行を終了します。（ガード節といいます）

---

## サブルーチン

### 複数の返り値

```perl
sub plus_and_minus {
    my ( $first, $second ) = @_;

    # 複数の値を return で返す
    return ( $first + $second, $first - $second );
}
my ( $plus, $minus ) = plus_and_minus( 5, 4 );
```

サブルーチンは、このようにリストを返すことで複数個の値を返すこともできます。

---

## サブルーチン

## return がない場合の返り値

```perl
sub plus {
    my ($first, $second) = @_;
    $first + $second;         # サブルーチンの中で最後に評価された行
}

my $result = plus(2, 5);
print $result . "\n";   # 7
```

サブルーチンの中に `return` がない場合、サブルーチンの返り値は最後に評価された処理の結果（この場合、 `$first + $second`の計算結果）を返します。

値を返すという意図を明確にするため、 `return` は書くようにしましょう。

---

## 練習問題

### fizzbuzz fizzbuzz_sub.pl

配列の項で学習した fizzbuzz のルールをサブルーチンで実装した fizzbuzz サブルーチンを作ってください。

- その数字が `3` で割り切れるなら `Fizz` を返す。
- その数字が `5` で割り切れるなら `Buzz` を返す。
- その数字が `3` でも `5` でも割り切れるなら `FizzBuzz` を返す。
- その数字が `3` でも `5` でも割り切れないなら その数字 を返す。

余裕がある人は、for 文と組み合わせて 1 から 100 までを fizzbuzz してみましょう

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）