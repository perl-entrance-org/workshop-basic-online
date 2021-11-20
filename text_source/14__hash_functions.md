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
