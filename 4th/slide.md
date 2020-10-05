# Perl 入学式

## 第 4 回 リファレンス編

---

## 諸注意

- Perl 入学式の講義は、Youtube Live にてスライドの表示と講師の説明を配信します。
- 講義中に分からない事や疑問点があれば、★★ で質問を発言して下さい。サポーターが適宜回答やアドバイスを行える様にスタンバイしています。
- 講義では、セクション毎に復習を兼ねた練習問題を実際に手を動かしてプログラミングしてもらいます。
  - うまくプログラムが動かない、分からない時は ★★ でサポーターにヘルプを要請してください。★★ のテキスト及び音声チャットにて個別にサポートします。

---

## 講師紹介

- 講師・サポーター紹介

---

## 皆さんで自己紹介

---

## 今日の流れ

- 前回の復習
- リファレンス、その前に
- 配列リファレンス
- 配列リファレンスの応用
- 配列リファレンスを使う
- ハッシュリファレンス
- ハッシュリファレンスの応用
- ハッシュリファレンスを使う
- HTML 入学式

---

# 前回の復習

- ハッシュ

- 正規表現

---

# リファレンス <br> その前に

---

## リファレンス、その前に

### 第 2 回：スカラー変数

```perl
my $scalar = 'Hello world';
print $scalar . "\n";    # Hello world

my $num = 1;
$num = $num + 1;
print $num . "\n";   # 2
```

---

## リファレンス、その前に

### 第 2 回：配列

```perl
my @number_array = ( 1, 2, 3, 4, 5 );
print "@number_array\n";    # 1 2 3 4 5

my @strings_array = ( 'Jan', 'Feb', 'Mar', 'Apr', 'May' );
print "@strings_array\n";    # Jan Feb Mar Apr May
```

---

## リファレンス、その前に

### 第 3 回：ハッシュ

```perl
my %hash = (
    Perl  => 'Larry Wall',
    PHP   => 'Rasmus Lerdorf',
    C     => 'Dennis MacAlistair Ritchie',
    swift => 'Chris Lattner'
);

for my $lang ( sort keys %hash ) {
    print $lang . ' was made by ' . $hash{$lang} . "\n";
}
```

---

## リファレンス、その前に

### 練習問題(datastruct.pl)

1. `name1, name2, name3` という名前のスカラー変数を 3 つ作り、3 人の名前 Alice, Bob, Chris をそれぞれ代入して画面に出力してみましょう。

2. `students` という名前の配列を作り、1.で作成した 3 名を配列に格納して出力してみましょう。

3. Alice の学校の 5 科目テストの点数は以下のとおりです。 `scores` という名前のハッシュを作り、5 つの教科名と点数を紐付けて代入し、画面に出力してみましょう。

```
Japanese    : 95
Mathematics : 80
Science     : 70
Geography   :100
English     : 65
```

---

## リファレンス、その前に

### データ と データ構造

これからの説明では、変数の中に入れてきた「文字列」や「数値」を **データ** と呼びます。

また、データを 「 親 - 子 」関係や「含む - 含まれる」など、データ同士を関連づけたものを **データ構造** と呼びます。

といっても、難しい話ではありません。

我々はすでにデータ構造の中で、その概念をつかって便利に暮らしています。

---

## リファレンス、その前に

### 身近なデータ構造

２頭の犬がいて、それぞれに名前が付いている。また、それぞれの犬種についての情報も含まれている。

- 犬
  - 名前 : タロ { 種別 : 柴犬 , 色 : 茶色}
  - 名前 : チョビ { 種別 : ハスキー , 色 : 白黒 }

---

## リファレンス、その前に

### 身近なデータ構造

馬の名前と、両親、母の父親（祖父）の情報

- 名前 : トウカイテイオー
  - 父 : シンボリルドルフ
  - 母 : トウカイナチュラル
    - 母の父 : ナイスダンサー

---

## リファレンス、その前に

### 複雑なデータ構造

このように、実際に我々が利用しているデータ構造ですが、これまで学習してきたスカラー変数、配列、ハッシュ だけでは再現しきれない状況があります。

例えば、日本の都道府県を配列で再現してみます。

```
日本 =  ( 北海道, ... 東京都, 大阪府, ... 福岡県, 沖縄県 );
```

```perl
# Perl入学式を開催している都道府県
my @japan = ( 'Hokkaido',
              'Tokyo',
              'Osaka',
              'Fukuoka',
              'Okinawa',
            );
```

---

## リファレンス、その前に

### 複雑なデータ構造

東京には 23 区があります

日本の都道府県を羅列した配列の中に、東京（親） - 23 区（子）という関係を維持したデータ構造を作ってみましょう。

```perl
# Perl入学式を開催している都道府県
my @japan = ('Hokkaido', 'Tokyo', 'Osaka', 'Fukuoka', 'Okinawa');

# 東京23区の一部
my @tokyo = ('Chiyoda', 'Shinagawa', 'Shinjyuku', 'Taito');

push @japan, @tokyo;
print "@japan\n";   # Hokkaido Tokyo Kyoto Osaka Fukuoka Okinawa Chiyoda Shinagawa Shinjyuku Taito
```

23 区の情報が `@japan` の中で展開され、東京(親) - 23 区(子) という親子関係がわからなくなってしまいました。

---

## リファレンス、その前に

### 複雑なデータ構造

先の例の通り、現時点で学んだ「スカラー変数」「配列」「ハッシュ」だけでは以下のデータ構造を作ることができません。

- 配列の中の配列

- 配列の中のハッシュ

- ハッシュの中の配列

- ハッシュの中のハッシュ

---

## リファレンス、その前に

### 複雑なデータ構造

このような複雑なデータ構造を表現し、利用するための方法が **リファレンス** です。

---

## （コラム）Perl のコミュニティ

世界各地に Perl Monger(PM)のコミュニティが存在します。

地域の Perl Mongrer コミュニティは、(地名).pm を名乗ることが多いです。

日本でも、多くのコミュニティ、勉強会が開催されています。

---

## （コラム）地域コミュニティ

- <a href="pm.org" target="_blank">pm.org</a> に登録されている、公認のコミュニティ。

  - Hokkaido.pm, Kushiro.pm, Sendai.pm, Niigata.pm, Tokyo.pm, Shibuya.pm, Yokohama.pm, Kamakura.pm, Gotanda.pm, Nagoya.pm, Kansai.pm, Kyoto.pm, Fukuoka.pm, Okinawa.pm

- 非公認のコミュニティ

  - Hachioji.pm ...

- 勉強会/イベント

  - Hokkaido.pm Casual, Perl Casual, Perl 入学式, よなべ Perl...

---

## （コラム）YAPC::Japan

<ruby>YAPC<rt>ヤプシー</rt></ruby> ... Yet Another Perl Conference

YAPC::Japan は日本の都市で年度内に 1〜2 度行われる、日本最大規模の Perl の祭典です。

2006 年から 2015 年まで続いた YAPC::Asia の後継イベントです。

---

## （コラム）YAPC::Japan

- 2016 年 12 月 札幌 <a href="https://yapcjapan.org/2016hokkaido/" target="_blank">YAPC::Hokkaido 2016 SAPPORO</a>

- 2017 年 7 月 博多 <a href="https://yapcjapan.org/2016hokkaido/" target="_blank">YAPC::HAKATA</a>

- 2018 年 3 月 大阪 <a href="https://yapcjapan.org/2018okinawa/" target="\_blank">YAPC::Okinawa 2018 ONNASON</a>

- 2019 年 1 月 東京 <a href="https://yapcjapan.org/2019tokyo/" target="_blank">YAPC::Tokyo 2019</a>

- 2019 年 11 月 名古屋 <a href="https://yapcjapan.connpass.com/event/146727/" target="_blank">YAPC::Nagoya::Tiny 2019</a>

---

## （コラム）YAPC::Japan

2020 年は京都での開催を予定していましたが、新型コロナウイルス感染拡大防止の為に延期(時期未定)となりました。

参考：<a href="https://yapcjapan.org/2020kyoto/" target="_blank">YAPC::Kyoto 2020 開催見送りについて</a>

---

# リファレンス

---

## リファレンス

### リファレンスでできること

先に説明してきた複雑なデータ構造は **リファレンス** を利用することで再現が可能です。

リファレンスとは、変数の中のデータそのものではなく、 **データを指し示すもの** です。

例えば我々もデータを指し示す際に、以下のようにリファレンスを使っています。

- 名前や ID をつかって特定の人物を指し示す。

- GPS 座標をつかって特定の場所を指し示す。

この場合、**データを指し示すもの** は名前や GPS 座標です。

---

## リファレンス

### リファレンスの作り方

変数の先頭についているシジル（ \$, @, % ）の前にバックスラッシュ (\\) を置くことで、 それぞれの変数をリファレンスにすることができます。

```perl
my $scalar     = 'scalar';    # スカラーを定義
my $scalar_ref = \$scalar;    # スカラーのリファレンスを作成

my @array = ( 'foo', 'bar', 'baz' );    # 配列を定義
my $array_ref = \@array;    # 配列のリファレンスを作成

my %hash = ( foo => 'bar' );    # ハッシュを定義
my $hash_ref = \%hash;    # ハッシュのリファレンスを作成
```

それぞれのリファレンスを格納しているのが **スカラー変数** であることに注目してください。
配列とハッシュをスカラー変数にすることで、配列の要素やハッシュの値にすることが可能になります。

---

## リファレンス

### リファレンスの種類

Perl のリファレンスは、先ほど紹介した

- スカラーリファレンス
- 配列リファレンス
- ハッシュリファレンス

以外に、サブルーチンリファレンス等があります。

Perl 入学式では、利用頻度が非常に高い '配列リファレンス'と'ハッシュリファレンス'の 2 つに絞って学んでいきます。

---

## リファレンス

### 練習問題（makeref.pl）

1. 次に用意された配列とハッシュから、配列リファレンス `$students_ref`、ハッシュリファレンス `$scores_ref` を作成しよう。

```perl
my @students = ("Alice", "Bob", "Chris");
my %scores = (
    "Japanese"    => 95,
    "Mathematics" => 80,
    "Science"     => 70,
    "Geography"   => 100,
    "English"     => 65,
);
```

2. 1.で作成した配列リファレンス、ハッシュリファレンスを画面に出力してみよう。
   （リファレンスを画面に出力すると、何が表示されるかな？その解説は次のセクションで説明します。）

---

## リファレンス

### ここまでのまとめ

1. Perl の配列やハッシュには、スカラー値しか格納できない。このため、複雑なデータ構造を作ることができない。

1. 配列やハッシュを **リファレンス** にすることで、スカラー値にすることができる。

1. リファレンスを利用することで、以下のような複雑なデータ構造を表現できる。
   - 配列の中の配列
   - 配列の中のハッシュ
   - ハッシュの中の配列
   - ハッシュの中のハッシュ

---

## リファレンス

### 補足

なお、リファレンスを作ることを **リファレンス化** 、 **リファレンスをとる** ともいいます。

次項からは、配列リファレンスを例にとって解説していきます。

---

# 配列リファレンス

---

## 配列リファレンス

### 配列リファレンスの中身

ここからは配列リファレンスを例に説明していきます。

作成したリファレンスをそのまま `print` してみます。

```perl
my @array = ( 'foo', 'bar', 'baz' );    # 配列を定義
my $array_ref = \@array;    # 配列のリファレンスを作成
print "$array_ref\n";       # ARRAY(0x7fba31013488)
```

この時、1 行に 2 つの情報が表示されています。

- リファレンスにする前の変数の種類（ SCALAR, ARRAY, HASH など ）

- リファレンスにする前の変数の値が格納されている **メモリの番地**

メモリは **コンピュータの一時的な記憶場所** と考えてください。
（一時的なので実行ごとにメモリの番地が変わります）

メモリの番地は重複することのない、1 つの値（スカラー値）です。

---

## 配列リファレンス

### 配列リファレンスの中身

リファレンスは「メモリの番地」が格納されているスカラー変数、と解説しました。

配列やハッシュなどは複数の要素を持ちますが、コンピュータ上ではこれを１つのメモリの番地に格納します。

このメモリの番地は重複することはありません。

これらの配列やハッシュをリファレンスにして「１つのメモリの番地」、つまり「１つの値」にすることで、スカラー変数に格納することが可能です。

---

## 配列リファレンス

### デリファレンス

スカラー変数にした配列やハッシュですが、必要に応じて元の変数に戻す必要があります。

そのために行うのが **デリファレンス** です。

リファレンスが格納されている変数を `{ }` （中括弧, curly bracket）で囲み、元の変数のシジルをつけることでデリファレンスすることが可能です。

```perl
my @array = ( 'foo', 'bar', 'baz' );    # 配列を定義
my $array_ref = \@array;    # 配列のリファレンスを作成
print $array_ref . "\n";    # メモリの番地 ARRAY(0x7ffa86818118)

my @deref_array = @{$array_ref};    # デリファレンスして新しい配列に入れた
print "@deref_array\n";      # foo bar baz
```

---

## 配列リファレンス

### デリファレンスする

先ほど出てきた `@{$array_ref}` について説明します。`{ }` の中から見ていきます。

```perl
    my @deref_array = @{$array_ref};    # デリファレンスして新しい配列に入れた
```

1. `$array_ref` ：スカラー変数（中身は配列リファレンス）

1. `@{$array_ref}` ： スカラー変数を `{ }` で囲み、元の配列のシジル `@` をつけてデリファレンスした。

デリファレンスした `@{$array_ref}` は配列と同様に扱うことができるので、新しい配列変数 `@deref_array` に代入が可能です。

---

## 配列リファレンス

### デリファレンス

デリファレンスしたスカラー変数は、元の配列と等価です。

```perl
my @array = ( 'foo', 'bar', 'baz' );    # 配列を定義
my $array_ref = \@array;    # 配列のリファレンスを作成

print "@array\n";           # foo bar baz
print "@{$array_ref}\n";    # foo bar baz
```

---

## 配列リファレンス

### デリファレンス

デリファレンスしたスカラー変数は、配列と同じように添字を使って元の配列の要素にアクセスできます。

```perl
my @array = ( 'foo', 'bar', 'baz' );    # 配列を定義
my $array_ref = \@array;    # 配列のリファレンスを作成

# @{$array_ref}    : 配列リファレンスをデリファレンスしたもの
# ${$array_ref}[0] : 配列リファレンスをデリファレンスして１つの要素を指定
#                  : １つの要素を扱うときのシジルは $ になることに注意

print "${$array_ref}[0]\n"; # foo
print "${$array_ref}[1]\n"; # bar
print "${$array_ref}[2]\n"; # baz
```

---

## 練習問題(deref_array_1.pl)

以下のコードを実行するとエラーが出ます。エディタにコピペしたうえで修正し、プログラムを完成させてください。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my @array = ( 1 .. 100 );           # 1から100までの数字が格納された配列を用意する
my $array_ref   =  @array;          # 配列リファレンスを作成する
my @deref_array = @{$array_ref};    # 配列リファレンスをデリファレンスする

print "@deref_array\n";             # 1から100までの数字が表示されると正解
```

---

## 練習問題(deref_array_2.pl)

以下のコードを実行するとエラーが出ます。エディタにコピペしたうえで**if 文の条件式を修正し**、プログラムを完成させてください。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my @array = ( 'A' .. 'Z' ); # A から Z までの文字が格納された配列を用意する
my $array_ref = \@array;    # 配列リファレンスを作成する

if ( $array_ref[10] eq 'K' ) {
    print "配列の先頭から10番目の要素はKです"; # この行が実行されると正解
}
```

---

# 配列リファレンスの応用

---

## 配列リファレンスの応用

### 簡単な作り方

すでに複雑なデータ構造を作ることが決まっている場合、 **無名配列** を使うことで一手間省くことが可能です。

```perl
# これまでの方法
my @array      = ( 'foo', 'bar', 'baz' ); # リファレンスの元になる配列
my $array_ref  = \@array;                 # リファレンスにして スカラー変数に格納する

# 無名配列を使う方法
my $anonymous_array  = [ 'foo', 'bar', 'baz' ];
```

無名配列の「無名」は配列としての名を持たない（`$anonymous_array` はスカラーの名前）と考えてください。

通常の配列作成時は `( )` を利用しますが、無名配列は **`[ ]` （角括弧, square brackets）を利用して作成します。**

---

## 配列リファレンスの応用

### 練習問題(anonymous_arr.pl)

'Alice', 'Bob', 'Chris'の 3 名が格納された配列リファレンス `$students_ref` を、無名配列を使って 1 行で作成してみよう。

```perl
# お約束の3行は省略してますが、必ず書くこと

my $students_ref =
```

---

## 配列リファレンスの応用

### 簡単な参照法

簡単な参照の仕方を紹介する前に、従来の方法を復習しておきます。

（参考）配列の 0 番目の要素を表示する

```perl
my @array      = ( 'foo', 'bar', 'baz' );
print "$array[0]\n";    # foo
```

（参考）配列リファレンスの 0 番目の要素を表示する（デリファレンスして添字）

```perl
my $array_ref = [ 'foo', 'bar', 'baz' ];    # 無名配列
print "${$array_ref}[0]\n";                 # foo デリファレンスして添字
```

---

## 配列リファレンスの応用

### 簡単な参照法

配列リファレンスの 0 番目の要素を表示する（アロー記法）

```perl
my $array_ref = [ 'foo', 'bar', 'baz' ];    # 無名配列

# アロー記法
print "$array_ref->[0]\n";                  # foo
```

**アロー（矢印） `->` を利用した `$array_ref->[0]`** という記法で配列リファレンスの要素にアクセスすることが可能です。

---

## 練習問題(array_ref_for.pl)

以下のコードを実行するとエラーが出ます。エディタにコピペしたうえで**for 文の{ }ブロック内を修正し**、プログラムを完成させてください。

余裕のある人は以下に挑戦してください

- アロー記法を使った方法、使わない方法で書いてみる
- for 文の条件式と{ }ブロック内を編集して書いてみる

```perl
# お約束の3行は省略してますが、必ず書くこと

my $month_name = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
];
for my $num ( 0 .. 11 ) {
    print "$month_name";    # 月の省略した英名を表示する
}

```

---

# 配列リファレンスを使う

---

## 配列リファレンスを使う

以下のデータを配列リファレンスで処理してみましょう。

```
    [animal]
       ├────┬─ shiba
       │    └─ bull
       └────┬─ mike
            └─ kuro
```

animal という集合の中に 犬の集合（shiba, bull） と 猫の集合（mike, kuro） が入っている図とみてください。

配列の中の配列 です。

---

## 配列リファレンスを使う

まずはデータ構造を作成します。

配列のリファレンスを使うことで、意図した構造でデータを格納できます。

```perl
my @dog     = ( 'shiba', 'bull' );    # 配列@dogを作る
my $dog_ref = \@dog;                  # @dogをリファレンスにする

my $cat_ref = [ 'mike', 'kuro' ];   # 無名配列をつかって猫の配列リファレンスをつくる

my @animal  = ( $dog_ref, $cat_ref ); # @animal の要素に入れて完成
```

無名配列を使って、一度にまとめて書くこともできます。

```perl
my @animal = ( [ 'shiba', 'bull' ], [ 'mike', 'kuro' ] );    # 完成
```

---

## 配列リファレンスを使う

### 練習問題（address.pl）

3 人分の連絡先が格納された、アドレス帳の配列を作ってみましょう。
各人のアドレス（名前、電話番号、メールアドレス）は、1 つの配列リファレンスでまとめましょう。

名前・電話番号・メールアドレスを 1 つの配列リファレンスにまとめる(３つの配列リファレンスを作る)

```
Alice,  090-123-456,  alice@perl-entrance.org
Bob,    080-456-789,  bob@perl-entrance.org
Chris,  050-987-123,  chris@perl-entrance.org
```

```perl
my @addressbook =     # 上で作った3人分の配列リファレンスを格納し、配列の中の配列を表現してみよう。

```

---

## 配列リファレンスを使う

作成したデータ構造から、特定のデータ「bull」を表示します。

```
    [animal]
       ├──┬─ shiba
       │  └─ bull
       └──┬─ mike
          └─ kuro
```

1. 配列 `@animal` のどこに 犬の集合が入っているかを確認する<br>
   => `@animal` の 最初の要素に入っている。これは `$animal[0]` となる。<br>
   => この `$animal[0]` は スカラー値、つまり配列リファレンスである。

1. 次に, 配列リファレンスのどこに `bull` が入っているかを確認する。<br>
   => `[1]` 番目である。

1. `bull`が格納されているのは `${$animal[0]}[1]` または `$animal[0]->[1]` となる。

---

## 配列リファレンスを使う

では実際に表示してみます。

```perl
# 無名配列でデータ構造を構築
my @animal = ( [ 'shiba', 'bull' ], [ 'mike', 'kuro' ] );

print "$animal[0]->[1]\n";  # bull
```

また、添字に挟まれる場合に限り、アロー記法を省略することが可能です。

```perl
# 無名配列でデータ構造を構築
my @animal = ( [ 'shiba', 'bull' ], [ 'mike', 'kuro' ] );

print "$animal[0][1]\n";    # bull アローを省略
```

---

## 配列リファレンスを使う

### 練習問題（address.pl）

1. 先ほどの練習問題で作ったアドレス帳のプログラムを改造して、Bob の e-mail アドレスを画面に表示してみましょう。

2. Chris の電話番号を画面に表示してみましょう。

3. 3 名の e-mail アドレスのみを順番に画面に表示してみましょう。

---

## 練習問題(animal_array_ref.pl)

```
    animal
       ├──┬─ shiba
       │  └─ bull
       │
       ├──┬─ mike
       │  └─ kuro
       │
       └──┬─ eagle
          └─ crow
```

次の処理をする `array_ref.pl` を作りましょう。

1. 上記のデータ構造を表す`@animal`を作ってください。

2. `@animal`の中にある`eagle`を表示してください。

3. 余裕があれば, 他の要素も表示してみましょう。

---

## （コラム）<ruby>Raku<rt>ラク</rt></ruby>（旧称 Perl6）について

- Perl 5 とは別に、Perl 6 も開発されています。

- Perl 5 と Perl 6 では互換性を考慮していません。

- 当初は Perl5 の後継となるはずでしたが、後に「Perl5 とは別に開発を進める」と公式に発表されました。

- Perl5 は後方互換性重視、Perl6 は最新技術の取り込みといった方向へそれぞれ開発されています。

---

## （コラム）<ruby>Raku<rt>ラク</rt></ruby>（旧称 Perl6）について

- 2019 年 10 月、Perl6 は Raku と改名しました。順次、名称の変更作業が行われています。

参考: <a href="https://raku.org/" target="_blank">The Raku Programming Language</a>

---

# ハッシュリファレンス

---

## ハッシュリファレンス

ハッシュのデータ構造も **ハッシュリファレンス** として扱うことができます。

---

## ハッシュリファレンス

では, さっそくハッシュをリファレンスにしてみます。

```perl
my %hash = (
    name => 'Larry',
    lang => 'Perl',
);

my $hash_ref = \%hash;
```

配列リファレンスと同様です。

- シジル( `%` ) の前にバックスラッシュ(\\)を置くことでリファレンスを作成できる

- リファレンスは **スカラー変数** に格納される

---

## ハッシュリファレンス

### 練習問題（hash.pl）

下の例を使って、あなたのニックネームと好きなプログラミング言語を表すハッシュを作成し、ハッシュリファレンスを作ってみよう。

```perl
my %hash = (
    name  =>
    lang  =>
);
```

---

## ハッシュリファレンス

### リファレンスの中身

```perl
my %hash = (            # ハッシュを定義
    name => 'Larry',
    lang => 'Perl',
);

my $hash_ref = \%hash;  # ハッシュリファレンスを作成
print "$hash_ref\n";    # HASH(0x7f92de017760)
```

ここも配列リファレンスと同様です。

ハッシュリファレンスとは、ハッシュの要素が格納されているメモリの番地を指し示すものです。

ハッシュリファレンスの中の要素を利用するためには、**デリファレンス**する必要があります。

---

## ハッシュリファレンス

### デリファレンス

```perl
my %hash = (            # ハッシュを定義
    name => 'Larry',
    lang => 'Perl',
);

my $hash_ref = \%hash;  # ハッシュリファレンスを作成
my %deref_hash = %{$hash_ref}; # デリファレンス
```

デリファレンスの方法も、配列リファレンスと同じです。ただし、記号が異なります。

リファレンスが格納されている変数を **{ } （中括弧, curly bracket）で囲み**、元の変数のシジルをつけることでデリファレンスすることが可能です。

---

## ハッシュリファレンス

### 練習問題（hash.pl）

先ほどの練習問題 `hash.pl` で作成したハッシュリファレンスをデリファレンスし、画面に表示させてみよう。

---

## ハッシュリファレンス

### デリファレンス

デリファレンスしたスカラー変数は、ハッシュと同様に key を使って元のハッシュの要素にアクセスできます。

```perl
my %hash = (    # ハッシュを定義
    name => 'Larry',
    lang => 'Perl',
);

my $hash_ref = \%hash;    # ハッシュリファレンスを作成

print ${$hash_ref}{name} . "\n";    # Larry
print ${$hash_ref}{lang} . "\n";    # Perl
```

---

## ハッシュリファレンス

### デリファレンス

先ほど出てきた `%{$hash_ref}{name}` について説明します。

```perl
    print ${$hash_ref}{name}  . "\n";    # Larry
```

1. `$hash_ref` ：スカラー変数（中身はハッシュリファレンス）

1. `%{$hash_ref}` ：スカラー変数をデリファレンスして、ハッシュと同様に扱えるようにする

1. `${$hash_ref}{name}` ：`name` という key に対応する１つの value にアクセスするので、シジルが \$ に変わる

---

## 練習問題(hash_ref.pl)

以下のコードを実行するとエラーが出ます。エディタにコピペしたうえでプログラムを完成させてください。

```perl
# お約束の3行は省略してますが、必ず書くこと

my %hash = ( name => 'Larry', lang => 'Perl' ); # ハッシュを作成
my $hash_ref = \%hash;

print $hash_ref{name} . "\n";    # Larry と表示される
print $hash_ref{lang} . "\n";    # Perl と表示される
```

以下のように表示されれば正解です。まだアロー記法はつかわないこと！（この次にやります）

```
Larry
Perl
```

---

## （コラム）豊富なモジュール

Perl には**モジュール**という、特定の処理に特化した追加プログラムが豊富に用意されています。

<ruby>CPAN<rt>シーパン</rt></ruby>と呼ばれるアーカイブに、全世界の Perl <ruby>Monger<rt>モンガー</rt></ruby>がモジュールを投稿しています。

<small>Perl Monger ... Perl 使い、Perl を得意とするエンジニアのこと。Ruby における<ruby>Rubyist<rt>ルビースト</rt></ruby>、Python における<ruby>Pythonista<rt>パイソニスタ</rt></ruby>と同義です。</small>

---

## （コラム）豊富なモジュール

- <ruby>Encode<rt>エンコード</rt></ruby> ... 文字列のエンコードを処理するモジュール。

- Net::Twitter ... Twitter の API を操作するモジュール。

- LINE::Bot::API ... LINE で Bot を開発するためのモジュール

- <ruby>DBI<rt>デービーアイ</rt></ruby> ... Perl からデータベースを操作するモジュール。

---

# ハッシュリファレンスの応用

---

## ハッシュリファレンスの応用

### 簡単な作り方

配列リファレンスの簡単な作り方に無名配列があったように、ハッシュも無名ハッシュからリファレンスを作ることができます。

```perl
    my $hash_ref = {
        name => 'Larry',
        lang => 'Perl',
    };
    print ${$hash_ref}{name};    # Larry
    print ${$hash_ref}{lang};     # Perl
```

無名ハッシュの「無名」はハッシュとしての名を持たない（`$hash_ref` はスカラーの名前）と考えてください。

通常のハッシュ作成時は `( )` を利用しますが、**無名ハッシュは `{ }` （中括弧, curly brackets）を利用して作成します。**

---

## ハッシュリファレンスの応用

### 練習問題(anonymous_hash.pl)

1. 下のサンプルにある、テストの成績が格納されたハッシュリファレンス `$students_ref` を、無名ハッシュを使って作成してみよう。

2. `$students_ref` から、`Geography` を key にして、100 の値を画面に表示させてみよう。

```
Japanese    : 95
Mathematics : 80
Science     : 70
Geography   :100
English     : 65
```

```perl
# お約束の3行は省略してますが、必ず書くこと

my $scores_ref =
```

---

## ハッシュリファレンスの応用

### 簡単な参照法

- （参考）ハッシュの key を参照する

```perl
my %hash = ( name => 'Larry' );
print "$hash{name}\n";    # Larry
```

- （参考）ハッシュリファレンスの key を参照する（デリファレンスして添字）

```perl
my $hash_ref = { name => 'Larry' };    # 無名ハッシュ
print "${$hash_ref}{name}\n";          # Larry
```

---

## ハッシュリファレンスの応用

### 簡単な参照法

配列リファレンスの時と同様に、アロー記法を利用します。

```perl
my $hash_ref = {
    name => 'Larry',
    lang  => 'Perl',
};
print "$hash_ref->{name}\n";    # Larry
print "$hash_ref->{lang}\n";    # Perl
```

通常のハッシュの value を参照するときは \$hash{key} ですが、\*\*ハッシュリファレンスの場合には `->` がついて `$hash_ref->{key}`\*\* となっています。

---

## ハッシュリファレンスの応用

### 練習問題（hash_ref_allow.pl）

次に用意されたハッシュリファレンスから、アロー記法を使用して `email` の値を画面に表示してみよう。

```perl

my $hash_ref = {
    name      => 'Alice',
    email     => 'alice@perl-entrance.org',
    telephone => '090-123-456',
    address   => 'Shibuya Tokyo Japan',
}

```

---

## ハッシュリファレンスの応用

### 練習問題（hash_ref_for.pl）

以下のコードを実行すると意図した出力が行われません。エディタにコピペしたうえで**for 文の{ }ブロック内を修正し**、プログラムを完成させてください。

```
Jan is 1
```

と 12 ヶ月分表示されれば正解です。余裕のある人は`1st month`, `2nd month` などの序数を正しく追加しましょう。

```perl
# お約束の3行は省略してますが、必ず書くこと
my @month_name = (
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
);
my $month_hash_ref = {
    Jan => 1, Feb => 2, Mar => 3, Apr => 4, May => 5, Jun => 6,
    Jul => 7, Aug => 8, Sep => 9, Oct => 10, Nov => 11, Dec => 12,
};
for my $name (@month_name){
    print $name . ' is ' . %month_hash_ref{$name} . "th month\n";
}
```

---

# ハッシュリファレンスを使う

---

## ハッシュリファレンスを使う

以下のデータ構造をハッシュリファレンスで処理してみましょう。

```
animal
   └─ dog
       ├─ name: 'Taro'
       └─ color: 'brown'
```

動物 `animal` というハッシュの key として犬 `dog` があり、その `dog` の value として「名前」と「色」がある。

ハッシュのハッシュ です

---

## ハッシュリファレンスを使う

まずはデータ構造を作成します。

ハッシュのリファレンスを使うことで、意図した構造でデータを格納できます。

```perl
my %dog = (    # ハッシュを作る
    name  => 'Taro',
    color => 'brown',
);

# %dogをもとにハッシュリファレンス$dog_refを作る
my $dog_ref = \%dog;

# dogをkey, $dog_ref を value とする %animal を作る
my %animal = ( dog => $dog_ref, );
```

無名ハッシュを使って、一度にまとめて書くこともできます。

```perl
my %animal = ( dog => { name => 'Taro', color => 'brown' } );
```

---

## ハッシュリファレンスを使う

作成したデータ構造から、特定のデータ `Taro`　を表示してみます。

```
animal
   └ dog
       ├─ name: 'Taro'
       └─ color: 'brown'
```

1. ハッシュ %animal のどこに `Taro` があるか確認する<br>
   => `dog` 以下にある

1. `dog` の value にあるハッシュリファレンスの key の値を確認する<br>
   => name という key だ

1. これらの情報から `Taro` が格納されているのは以下となる
   - `${$animal{dog}}{name}`
   - `$animal{dog}->{name}`

---

## ハッシュリファレンスを使う

では実際に表示してみます。

```perl
# 無名ハッシュで一気にデータ構造を構築
my %animal = ( dog => { name => 'Taro', color => 'brown' } );

print ${$animal{dog}}{name} , "\n";   # Taro
print $animal{dog}->{name} , "\n";    # Taro アロー記法
```

配列リファレンスと同様に、アローが添字に挟まれる場合にはアロー記法の省略が可能です。

```perl
my %animal = ( dog => { name => 'Taro', color => 'brown' } );

print $animal{dog}{name} , "\n";    # Taro
```

---

## ハッシュリファレンスを使う

### 練習問題(berger_hash_ref.pl)

下のリファレンスは、ファストフード店のメニューを表しています。

```perl
my $menu = {
    Hamburger_set => {
        combo => [
            'Hamburger',
            'Juice',
            'French fries',
        ],
        price => 500,
    },
    Cheeseburger_set => {
        combo => [
            'Cheeseburger',
            'Juice',
            'French fries',
        ],
        price => 600,
    },
    Morning_set => {
        combo => [
            'Pancake',
            'Hash browns',
            'Salad',
            'Coffee',
        ],
        price => 450,
    }
};
```

1. モーニングセットの商品（内容）を１つずつ順に出力してみよう。

2. ハンバーガーセット 2 個とチーズバーガーセット 3 個をテイクアウトで買った時の合計金額を計算し出力してみよう。(余裕があれば、消費税 8％も加算して画面に出力してみよう。)

---

## 練習問題(animal_hash_ref.pl)

    animal
      ├─ dog
      │    ├─ name: 'Taro'
      │    └─ color: 'brown'
      └─ cat
           ├─ name: 'Tama'
           └─ color: 'white'

次の処理をする `animal_hash_ref.pl` を作りましょう。

ハッシュのハッシュ です。dog , cat はそれぞれ key と考えてください。

1. 上記のデータ構造を表す`%animal`を作ってください。

2. `%animal`の中にある`white`を表示してください。

3. 余裕があれば, 他の要素も表示してみましょう。

---

# リファレンスの操作

---

## リファレンスの操作

### リファレンスへの追加/削除は・・・？

リファレンスのままでは、追加/削除はできません。リファレンスはあくまで、データを指し示すスカラー値だからです。

しかし、デリファレンスすることで、これまでに習った配列操作関数やハッシュ操作関数を利用することができます。

---

## リファレンスの操作

### 配列リファレンスへの操作例

```perl
my $array_ref = [ 'foo', 'bar', 'baz' ];    # 無名配列を作成
print "@{$array_ref}" . "\n"; # foo bar baz

push @{$array_ref}, 'piyo';   # デリファレンスして piyo を末尾に追加
print "@{$array_ref}" . "\n"; # foo bar baz piyo

shift @{$array_ref};          # デリファレンスして foo を取り出し
print "@{$array_ref}" . "\n"; # bar baz piyo
```

---

## リファレンスの操作

### ハッシュリファレンスへの操作例

```perl
my $hash_ref = {
    name => 'Larry',
    lang => 'Perl',
};

${$hash_ref}{univ} = 'SPU';      # デリファレンスして追加
print $hash_ref->{univ} . "\n";  # SPU （Seattle Pacific University）

my @keys = keys %{$hash_ref};    # デリファレンスしてkeyを取得
print "@keys" . "\n";            # name lang univ （順不同）

delete ${$hash_ref}{univ};       # デリファレンスしてunivを削除
if ( exists ${$hash_ref}{univ} ){# デリファレンスしてunivが存在するか確認
    print "univ is exists\n"
}else{
    print "univ is not exists\n"
}
```

---

## ハッシュリファレンスを使う

### 練習問題(berger_hash_ref2.pl)

先ほどの練習問題、ファストフード店のメニューのハッシュリファレンスに以下の操作をしてみよう。

1. チーズバーガーセットの価格を 700 円に変更してみよう。

2. ハンバーガーセットに 'nugget' を付け加えてみよう。

3. モーニングセットの 'salad' を取りやめて（削除）、値段を 350 円に変更してみよう。

4. 余裕があれば、新しい独自セットを考えて 4 番目に付け加えてみよう。

---

# 便利モジュール

---

## 便利モジュール

### リファレンスの中身を全部見たい

データ構造の中身を出力したいとき、ここまではその要素の一部だけを表示きました。

しかし、中身を一度にすべて見たい場合はどうすればいいでしょうか？

---

## 便利モジュール

### Data::Dumper

このようなときは、`Data::Dumper` モジュールを使えばリファレンスの中身を一括表示（ダンプ）できます。

```perl
use Data::Dumper; # 最初にモジュールの使用を宣言
my $dog = {
    name => 'Taro',
    color => 'brown',
};
$dog->{age} = 3;
print Dumper($dog); # Data::Dumper の Dumper 関数を使って print

# 出力結果
# $VAR1 = {
#         'name' => 'Taro',
#         'color' => 'brown',
#         'age' => 3
#         };
```

---

## Data::Dumper を使う

`Data::Dumper` にはリファレンスを引数として渡します。

よって、ハッシュの中身を見たいときには、リファレンスにしたものを渡します。

```perl
my %dog = (
    name => 'Taro',
    color => 'brown',
);
$dog{age} = 3;

print Dumper(\%dog); # リファレンスを渡す
```

`Data::Dumper` は、新たな要素を代入した後に中身を確かめたいときや、データの中身を把握していないときなどに役立ちます。

また、Perl に標準で組み込まれているモジュールなので、宣言さえすれば利用することが可能です。

---

## Perl とモジュール

Perl には`Data::Dumper`の他にも有用なモジュールが標準で数多く組み込まれています。
その一部を紹介します。

- `Encode`
  - 日本語などの「マルチバイト文字」入出力に必須となるモジュール。絵文字も利用可能。
- `JSON::PP`
  - インターネットでの情報のやり取りに利用される「JSON 形式」データの作成・解読。(Perl 5.14 以降)
- `List::Util`
  - リスト(配列)でよく利用される最小, 最大, 合計など、よく利用する関数を提供。
- `HTTP::Tiny`
  - 必要最小限の機能を持つ Web クライアント。(Perl 5.14 以降)

---

## 練習問題(dumper.pl)

以下に用意されたハッシュリファレンスを、Data::Dumper モジュールを使って中身を出力してみよう。

```perl
my $menu = {
    Hamburger_set => {
        combo => [
            'Hamburger',
            'Juice',
            'French fries',
        ],
        price => 500,
    },
    Cheeseburger_set => {
        combo => [
            'Cheeseburger',
            'Juice',
            'French fries',
        ],
        price => 600,
    },
}
```

---

## 練習問題(`region_ref.pl`)

まず, 以下のデータ構造を表す`%japan`を作ってください.

```
japan
 ├─ tokyo
 │    ├─ gotanda
 │    └─ shibuya
 ├─ osaka
 │    └─ shinsaibashi
 ├─ okinawa
 │    ├─ naha
 │    └─ yomitan
 ├─ hokkaido
 │    ├─ sapporo
 │    └─ obihiro
 └─ fukuoka
       └─ hakata
```

---

## 練習問題

1. 作成したデータから `tokyo` に含まれる `gotanda`, `shibuya`を表示してください

1. 作成したデータの `osaka` に `umeda`を追加してください

1. 作成したデータの `okinawa` に `piyo`を追加してください

1. 作成したデータの `hokkaido` に `chitose`を追加し, `sapporo`を取り除いてください（今までに習った配列操作関数 push,pop,shift,unshift を利用しましょう。`sapporo`の位置に注目）

1. 作成したデータの `fukuoka` を取り除いてください

1. Data::Dumper でデータ構造を表示してください

1. 時間の余裕のある人は、Data::Dumper を使わずに `%japan` 内のデータを全て表示してみましょう

1. さらに時間の余裕がある人は`splice`関数について調べてみましょう

---

## 復習問題

- <https://github.com/perl-entrance-org/workshop-2019/blob/master/4th/practice.md>

今回の内容を復習できる問題集です.

不明点があれば, 気軽にサポーターに質問してください.

- 是非 Perl 入学式の[slack](https://docs.google.com/forms/d/e/1FAIpQLScbWyg-cgcqilW7-BpKagRm2ldBhvwRBNr2N5eg3LHOK13FGw/viewform)に参加して, サポーターや参加者の皆さんと交流しましょう．

- 不明点も slack で是非質問してください.

- 最終回の第 5 回の参加もお待ちしております!

---

## （コラム） Perl7 について

Perl7 は 2021 年リリース予定となっています。

Perl7 は Perl5 の直系の後継言語です。後方互換性の維持という大きな特徴はそのままに、現代のニーズにあった言語になります。

Perl5 のモジュール 群についてもそのまま、あるいは、わずかな手直しで利用可能となる予定です。

これから学ぶ Perl5 の知識は Perl7 でもそのまま生かすことが可能です。

参考: <a href="https://www.perl.com/article/announcing-perl-7/" target="_blank">Announcing Perl 7</a>

---
## HTML 入学式

次回は Web アプリを作成しますが、その際に知っておくと良い内容をまとめました。

- <https://github.com/perl-entrance-org/workshop-2019/blob/master/4th/html_entrance.md>

---

# 次回予告

- サブルーチン

- Mojolicious の準備

- HTTP の基礎

- Mojolicious 入門

- 簡易 BBS の作成
