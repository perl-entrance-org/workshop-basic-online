# リファレンス

---
## リファレンス、その前に

### これまで学んだ変数

Perlの変数として以下の 3 種類について学んできました。

- スカラー変数 `$scalar`

- 配列 `@array`

- ハッシュ `%hash`

---

## リファレンス、その前に

### 複雑なデータ構造

しかし、これらだけでは複雑なデータ構造を構築・利用することができません。

例えば以下のようなデータです。　

|  Name   | Japanese | Math |
| ------- | -------- | ---- |
|  Alice  |    60    |  90  |
|  Bob    |    70    |  70  |
|  Charie |    80    |  80  |


---

## リファレンス、その前に

### 複雑なデータ構造

|  name   | Japanese | math |
| ------- | -------- | ---- |
|  Alice  |    60    |  90  |
|  Bob    |    70    |  70  |
|  Charie |    80    |  80  |


スカラー変数で頑張る場合（生徒数×3の変数宣言が必要）

```perl
my $alice_name     = 'Alice';
my $alice_japanese = 60;
my $alice_math     = 90;
```

---

## リファレンス、その前に

### 複雑なデータ構造

|  name   | Japanese | math |
| ------- | -------- | ---- |
|  Alice  |    60    |  90  |
|  Bob    |    70    |  70  |
|  Charie |    80    |  80  |


配列で頑張る場合（生徒の数だけ配列の宣言が必要）

```perl
my @alice = ( 'Alice', 60, 90 );
my @bob   = ( 'Bob',   70, 70 );
my @carol = ( 'Carol', 80, 80 );
```

---

## リファレンス、その前に

### 複雑なデータ構造

|  name   | Japanese | math |
| ------- | -------- | ---- |
|  Alice  |    60    |  90  |
|  Bob    |    70    |  70  |
|  Charie |    80    |  80  |


ハッシュで頑張る場合（配列と同じく生徒の数だけハッシュの宣言が必要）

いずれの場合も、生徒全員の合計点や平均点を出そうと思った時に苦労します。

```perl
my %alice  = ( name => 'Alice',  japanese => 60, math => 90 );
my %bob    = ( name => 'Bob',    japanese => 70, math => 70 );
my %charie = ( name => 'Charie', japanese => 80, math => 80 );
```

---

## リファレンス、その前に

### 複雑なデータ構造

|  name   | Japanese | math |
| ------- | -------- | ---- |
|  Alice  |    60    |  90  |
|  Bob    |    70    |  70  |
|  Charie |    80    |  80  |

この複雑なデータ構造は、「配列の中にハッシュが入っている」と見ることができます。

```
(
    ( name => 'Alice',  japanese => 60, math => 90 ),
    ( name => 'Bob',    japanese => 70, math => 70 ),
    ( name => 'Charie', japanese => 80, math => 80 ),
)
```

---

## リファレンスとは

### 複雑なデータ構造

では、このデータ構造をこれまで学んだ範囲で表現してみます。

```perl
(
    ( name => 'Alice',  japanese => 60, math => 90 ),
    ( name => 'Bob',    japanese => 70, math => 70 ),
    ( name => 'Charie', japanese => 80, math => 80 ),
)
```

しかし、この方法ではうまくいきません。

```perl
my @array = (
    ( name => 'Alice', japanese => 60, math => 90 ),
    ( name => 'Bob',    japanese => 70, math => 70 ),
    ( name => 'Charie', japanese => 80, math => 80 ),
);

print "@array"; # name Alice japanese 60 math 90 name Bob japanese 70 math 70 name Charie japanese 80 math 80
```

---

## リファレンスとは

### 複雑なデータ構造

先の例のように、配列の中でハッシュはそのデータ構造を維持することができません。

配列の配列、ハッシュの中の配列、ハッシュの中のハッシュも同様です。

配列の要素は **スカラー変数** のみ格納できます。

ハッシュの値（value）も **スカラー変数** のみ格納できます。

---

## リファレンスとは

### 複雑なデータ構造


ここで **リファレンス** を利用します。

リファレンスを利用することで、配列やハッシュをスカラー変数として扱うことができます。

他のプログラム言語を学んだ人は「間接参照」と言えば聞いたことがあるかもしれません。

リファレンスの作り方には 2 つの方法があります。

---

## リファレンスの作り方

### 1. 配列・ハッシュを作り、それをリファレンス化してスカラー変数にする方法

配列・ハッシュをリファレンス化するためには、元の変数に <ruby>`\`<rt>バックスラッシュ</rt></ruby> をつけてスカラーに代入します。

```perl
my @alice_score     = ( 60, 90 );
my $alice_score_ref = \@alice_socre;    # バックスラッシュをつけて代入
```

```perl
my %alice     = ( name => 'Alice', japanese => 60, math => 90 );
my $alice_ref = \%alice;    # バックスラッシュをつけて代入
```

---

## リファレンスの作り方

### 2. 無名配列・無名ハッシュ（データを直接リファレンスとして格納する方法）

無名配列の「無名」は配列・ハッシュとしての名を持たない（宣言していない）と考えてください。

- 配列の場合（右辺のリストが <ruby>`[ ]`<rt>角かっこ</rt></ruby> で囲われていることに注意！）

```perl
my $alice_score_ref = [ 60, 90 ];
```

- ハッシュの場合（右辺のリストが <ruby>`{ }`<rt>波かっこ</rt></ruby> で囲われていることに注意！）

```perl
my $alice_ref = { name => 'Alice', japanese => 60, math => 90 };
```

---

## リファレンスの中身の確認方法

### print だけでは確認できない

リファレンスは配列やハッシュをスカラーにしたものですが、そのまま `print` しても中身を表示することができません。

```perl
my @alice           = ( 60, 90 );
my $alice_score_ref = \@alice;      # バックスラッシュをつけて代入

# 直接ハッシュリファレンスを作成
my $alice_ref = { name => 'Alice', japanese => 60, math => 90 };

print $alice_score_ref . "\n";      #ARRAY(0x7fc9fa012898)

print $alice_ref . "\n";            #HASH(0x7fc9fa00e3b8)
```

リファレンスの中身を確認したいときは、ハッシュの中身を確認するときに利用した `Data::Dumper` モジュールを利用します。

---

## リファレンスの中身の確認方法

### Data::Dumper で配列リファレンスを確認する

```perl
use Data::Dumper;

my @alice           = ( 60, 90 );
my $alice_score_ref = \@alice;      # バックスラッシュをつけて代入

print Dumper $alice_score_ref;
```

```perl
$VAR1 = [
          60,
          90
        ];
```

---

## リファレンスの中身の確認方法

### Data::Dumper でハッシュリファレンスを確認する

```perl
use Data::Dumper;

# 無名ハッシュを作成
my $alice_ref = { name => 'Alice', japanese => 60, math => 90 };

print Dumper $alice_ref;
```

```perl
$VAR1 = {
          'name' => 'Alice',
          'japanese' => 60,
          'math' => 90
        };
```

---

## リファレンスで複雑なデータ構造を作成する

ここまで学習したことを利用すると、以下のデータ構造を Perl で構築することが可能になります。

|  name   | Japanese | math |
| ------- | -------- | ---- |
|  Alice  |    60    |  90  |
|  Bob    |    70    |  70  |
|  Charie |    80    |  80  |


---

## リファレンスで複雑なデータ構造を作成する

以下は「配列・ハッシュを作り、それをリファレンス化したスカラー変数を作る方法」です。3 人のデータをハッシュリファレンスにして、配列に格納しています。

```perl
use Data::Dumper;

my %alice     = ( name => 'Alice', japanese => 60, math => 90 );
my $alice_ref = \%alice;

my %bob     = ( name => 'Bob', japanese => 60, math => 90 );
my $bob_ref = \%bob;

my %charie     = ( name => 'Charie', japanese => 60, math => 90 );
my $charie_ref = \%charie;

my @array = ( $alice_ref, $bob_ref, $charie_ref );
print Dumper \@array;
```

---

## リファレンスで複雑なデータ構造を作成する

先のプログラムの実行結果です。3 人の名前や成績データを 1 つの配列の中に格納することができました。

```perl
$VAR1 = [
          {
            'japanese' => 60,
            'name' => 'Alice',
            'math' => 90
          },
          {
            'name' => 'Bob',
            'japanese' => 60,
            'math' => 90
          },
          {
            'math' => 90,
            'name' => 'Charie',
            'japanese' => 60
          }
        ];
```

---

## 練習問題（make_reference.pl）

1. 以下のデータをリファレンス化してください。各行を無名ハッシュで作成し、そのハッシュリファレンスを格納した配列を作ります。

    直接配列内に記述しても、ハッシュリファレンスを配列に格納する方法でも、どちらでも構いません。

|  name   | Japanese | math |
| ------- | -------- | ---- |
|  Alice  |    60    |  90  |
|  Bob    |    70    |  70  |
|  Charie |    80    |  80  |

2. リファレンス化したデータを `Data::Dumper` モジュールを利用して中身を表示してください。

---

## リファレンスの利用法

### デリファレンス

配列・ハッシュをリファレンス化することで、「配列の中のハッシュ」「ハッシュのハッシュ」などの複雑なデータ構造を作成し、スカラー変数に格納することができるようになりました。

今度はそのスカラー変数からデータを取り出す方法を学んでいきます。

まずはリファレンス化してスカラー変数にしたデータを、元の配列・ハッシュに戻す **デリファレンス** です。

---

## リファレンスの利用法

### 配列リファレンスをデリファレンスする

元の配列に戻すときは、配列リファレンスを `@{ }` で囲みます。

```perl
my @alice_score     = ( 60, 90 );
my $alice_score_ref = \@alice_score;

# デリファレンスして配列に戻す
my @alice_score_deref = @{$alice_score_ref};    # リファレンスを @{ } で囲んでいる
print $alice_score_deref[0] . "\n";             # 60
```

---

## リファレンスの利用法

### ハッシュリファレンスをデリファレンスする

元のハッシュに戻すときは、ハッシュリファレンスを `%{ }` で囲みます。

```perl
my %alice     = ( name => 'Alice', japanese => 60, math => 90 );
my $alice_ref = \%alice;

# デリファレンスしてハッシュに戻す
my %alice_deref = %{$alice_ref};    # リファレンスを %{ } で囲んでいる
print $alice_deref{name} . "\n";    # Alice
```

このように、リファレンスを元の種類の変数に戻すときは、配列かハッシュかを意識して、それに応じたデリファレンスをすることが必要です。

---

## リファレンスの利用法

### 配列リファレンスをデリファレンスせずにデータを扱う

アロー記法を用いると、参照元に対応したシジルをつけることなく、簡易な記法でデータを取り出すことが可能です。


```perl
my @alice_score     = ( 60, 90 );
my $alice_score_ref = \@alice_score;

# アロー記法
print $alice_score_ref->[0] . "\n";    # 60

# 冗長だがこのようにも書ける
print ${$alice_score_ref}[0] . "\n";    # 60
```

---

## リファレンスの利用法

### ハッシュリファレンスをデリファレンスせずにデータを扱う

```perl
my %alice     = ( name => 'Alice', japanese => 60, math => 90 );
my $alice_ref = \%alice;

# アロー記法
print $alice_ref->{name} . "\n";    # Alice

# 冗長だがこのようにも書ける
print ${$alice_ref}{name} . "\n";    # Alice
```

アロー記法でも、配列の添字 `[0]` や ハッシュのキー名 `{name}` など、それぞれの変数に応じた記法を用います。デリファレンスと同様に、元データが配列であるかハッシュであるかを意識しておくことが大事です。

---

## リファレンスの利用法

### リファレンスのデータを更新する

リファレンスから直接データを取り出すこともできますが、リファレンスのデータを更新することも可能です。

ただし、リファレンスのデータを更新すると、リファレンス元の変数にも影響が及びます。注意しておきましょう。

```perl
my %alice     = ( name => 'Alice', japanese => 60, math => 90 );
print $alice{name} . "\n";  # Alice

my $alice_ref = \%alice;

$alice_ref->{name} = 'Dave';    # データを上書き

print $alice_ref->{name} . "\n";    # Dave

# リファレンス元の name も変わっている
print $alice{name} . "\n";    # Dave
```

---

## リファレンスの利用法

### 配列の関数をリファレンスに利用する（`for`）

デリファレンスしたものは元の配列・ハッシュと同じように扱うことができます。

```perl
use Data::Dumper;
my @alice_score     = ( 60, 90 );
my $alice_score_ref = \@alice_score;

for my $score ( @{$alice_score_ref} ) {
    print $score . "\n";    # 60 90
}
```

---

## リファレンスの利用法

### 配列の関数をリファレンスに利用する（`push`）

デリファレンスしたものは元の配列・ハッシュと同じように扱うことができます。

```perl
use Data::Dumper;
my @alice_score     = ( 60, 90 );
my $alice_score_ref = \@alice_score;

push @{$alice_score_ref}, 100;    # 配列と同じように扱っている
print Dumper $alice_score_ref;    # 元の配列の内容も変更されていることに注意
```

```perl
$VAR1 = [
          60,
          90,
          100
        ];
```

---

## リファレンスの利用法

### ハッシュの関数をリファレンスに利用する（`keys`）

デリファレンスしたものは元の配列・ハッシュと同じように扱うことができます。

```perl
use Data::Dumper;
my %alice     = ( name => 'Alice', japanese => 60, math => 90 );
my $alice_ref = \%alice;

my @keys = keys %{$alice_ref};    # ハッシュと同じように扱っている
print Dumper \@keys;              # 普通の配列にDumper使うときは \ を付ける
```

```perl
$VAR1 = [
          'japanese',   # 元はハッシュなので順不同
          'math',
          'name'
        ];
```

---

## 練習問題 `weather_report.pl`

以下は天気予報の応答をハッシュリファレンスにしたものです。

それぞれの項目の key と value を表示してください。

```perl
my $content = {
    publishingOffice => '気象庁',
    targetArea => '東京都',
    text  => '　日本海に中心を持つ高気圧が本州付近を覆っています。'
};
```

---

## 練習問題 `use_reference.pl`

以下の表を、配列 @members にハッシュリファレンスを格納して作成しました。各メンバーの名前、 japanese と math の値を合計したものを表示してください。（例：Alice => 150）

|  name   | Japanese | math |
| ------- | -------- | ---- |
|  Alice  |    60    |  90  |
|  Bob    |    70    |  70  |
|  Charie |    80    |  80  |


```perl
my @members = (
    { name => 'Alice',  japanese => 60, math => 90 },
    { name => 'Bob',    japanese => 70, math => 70 },
    { name => 'Charie', japanese => 80, math => 80 },
);
```

---

### リファレンスは難しい

ここまで学んできたリファレンスは難しい内容です。Perl の初心者向けの本には解説自体がないこともある内容です。

今回、このテキストでは利用法に絞った説明に特化しました。習うより慣れろ、という方針です。

わからないことや、このようなデータ構造はどう表すことができるか？といった疑問があれば、ぜひ Discord に書き込んでみてください。


---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）
