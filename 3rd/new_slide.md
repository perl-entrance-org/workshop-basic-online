# Perl 入学式 第 3 回

## リファレンス/API 操作編


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

## 練習問題（weather_report.pl）

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

## 練習問題（use_reference.pl）

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


---

# 正規表現

---

## データ処理に最適な「正規表現」

正規表現という語を聞いたことはありますでしょうか？正規表現を利用することで

- 文字列が「複雑な条件」に合致しているかテストする

- 「複雑な条件」に合致した文字列を検索する

- 「複雑な条件」に合致した文字列を置き換える・削除する

といったことが可能になります。

---

## 複雑な条件とは

ここでいう「複雑な条件」とは例えば以下のようなものです。

- p で始まり <ruby>l<rt>エル</rt></ruby> で終わる 4 文字

- 特定の文字を「含まない」

- 2021-09-25 といった、4桁の数字, ハイフン, 2桁の数字, ハイフン, 2桁の数字を連結したもの

- 行頭に「メロス」が存在する行のみ

---

## Perl と正規表現

Perl は他のプログラミング言語と比べて正規表現が書きやすい言語です。

また、ソフトウェアの正規表現の機能を Perl の正規表現の文法で提供しているソフトウェアもあります。これらで提供している正規表現は PCRE(Perl Compatible Regular Expressions) と呼ばれています。

Perl の正規表現でデータを取得、きれいに整形した後で他のプログラムで利用する、というように、組み合わせて利用されることも多い機能です。

---

## Perl と正規表現

正規表現は奥が深く、またそれだけで専門の分野がある広大な学問分野です。

Perl の正規表現は、それ自体が小さなプログラミング言語と思えるほどの機能を有しています。

Perl 入学式のみで全て紹介することはできませんが、コードを書く上でよく利用する「基本的な部分」を紹介していきます。

---

## 正規表現の用語について

まず、正規表現の用語を簡単に解説します。

- **メタ文字**

    文字そのものを表さない、特殊な意味を持つ正規表現内の文字。

- **マッチする**

    正規表現に合致する文字列を見つけること。

具体性が欠けるのでイメージしづらいと思うのですが、このあと実践して学習していきます。

まずはメタ文字です。

---

## 文字を表す文字、メタ文字（1/3）

| メタ文字 | 説明 |
| - | - |
| `.` | 任意の 1 文字にマッチする |
| `[■]` | 文字クラス。リスト `■` の中にある任意の 1 文字にマッチする
| `[^■]` | 否定の文字クラス。リスト `■` の中にない任意の 1 文字にマッチする
| `●?` | 正規表現 `●` が 0 個もしくは 1 個存在する
| `●*` | 正規表現 `●` が 0 個もしくは 1 個以上存在する
| `●+` | 正規表現 `●` が 1 個以上存在する

聞き慣れない用語の次に、今度は記号がたくさん出てきましたした。これから順に説明していきます。

---

## 正規表現でテストする

文字列の比較には比較演算子 `eq` を利用しました。

```perl
if ('perl' eq 'p..l'){
    print "match" . "\n";
}else{
    print "no match" . "\n";    # こちらが表示される
}
```

しかし、文字列の比較では「p ではじまり <ruby>l<rt>エル</rt></ruby> で終わる 4 文字の単語」という検索はできません。

---

## 正規表現でテストする

「p ではじまり <ruby>l<rt>エル</rt></ruby> で終わる 4 文字の単語」といった<ruby>曖昧<rt>あいまい</rt></ruby>な条件に合致するかをテストをするために、正規表現を利用します。

正規表現を利用してテストするときは、専用の演算子を利用します。

`=~` の左辺に比較したい文字列、右辺に正規表現を `//` で囲って記述します。

以下は `perl` という文字列が <ruby>`p..l`<rt>ピー ドット ドット エル</rt></ruby> という正規表現にマッチするかをテストするプログラムです。

```perl
if ('perl' =~ /p..l/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `.` （ドット）

正規表現中で使われている `.` （ドット）は「任意の1文字」を表します。

```perl
if ('perl' =~ /p..l/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('pel' =~ /p..l/){
    print "match" . "\n";
}else{
    print "no match" . "\n";    # こちらが表示される
}
```

```perl
if ('perrl' =~ /p..l/){
    print "match" . "\n";
}else{
    print "no match" . "\n";    # こちらが表示される
}
```

---

## メタ文字 `[■]` 文字クラス

`[ ]`で囲まれた文字は **文字クラス** と言います。`■` は文字の集合を表したものです。

たとえば `[abcde]` は `a` 又は `b` 又は `c` 又は `d` 又は `e` いずれか 1 文字とマッチします。

```perl
if ('perl' =~ /p[abcde]rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('perl' =~ /p[abcd]rl/){
    print "match" . "\n";
}else{
    print "no match" . "\n";    # こちらが表示される
}
```

---

## メタ文字 `[■]` 文字クラス

連続した文字であれば、`[a-e]`のように書くことも可能です。

ただし、ここでいう「連続した文字」とは **文字コード** というコンピュータ上での文字の並びになることに注意してください。

```perl
if ('perl' =~ /p[a-e]rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `[^■]` 否定の文字クラス

文字クラスの `[]` 内の先頭に <ruby>`^`<rt>キャレット</rt></ruby> を書くと、否定の文字クラスとなります。**文字クラスに書かれているもの以外の 1 文字** にマッチします。

```perl
if ('perl' =~ /p[^xyz]rl/){
    print "match" . "\n";    # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('perl' =~ /p[^f-z]rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('perl' =~ /p[^abcde]rl/){
    print "match" . "\n";
}else{
    print "no match" . "\n";    # こちらが表示される
}
```

---

## メタ文字 `●?` 直前の正規表現が 0 個もしくは 1 個存在する

いままでは `.` や `[a-e]` など 1 文字にマッチする正規表現を学んできました。ここからは複数の文字にマッチする正規表現を学んでいきます。

`●` は先に学習した任意の1文字を表す `.` や 文字クラス `[ ]` を表す正規表現としてみてください。

この `?` は **?の直前の正規表現 `●` が 0 個もしくは 1 個存在する時** にマッチします。

```perl
if ('perl' =~ /p.?rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `●?` 直前の正規表現が 0 個もしくは 1 個存在する

0 個というのは `?` の直前の正規表現 `●` が存在しない時もマッチするという意味になります。

```perl
if ('prl' =~ /p.?rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `●*` 直前の正規表現が 0 個もしくは 1 個以上存在する

先程の `?` は「その直前の正規表現 `●` が 0 個もしくは 1 個存在する時」でした。ここで紹介する `*` は **その直前の正規表現 `●` が 0 個または 1 個以上存在する時** にマッチします。

0 個のとき

```perl
if ('prl' =~ /p.*rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `●*` 直前の正規表現が 0 個もしくは 1 個以上存在する

1 個のとき

```perl
if ('perl' =~ /p.*rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

1 個以上の時
```perl
if ('perl girl' =~ /p.*rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `●+` 直前の正規表現が 1 個以上存在する

`+` は **その直前の正規表現 `●` が 1 個以上存在する時** にマッチします。

```perl
if ('perl' =~ /p.+rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('prl' =~ /p.+rl/){
    print "match" . "\n";
}else{
    print "no match" . "\n";    # こちらが表示される
}
```

---

## 練習問題

1. 正規表現 `p.l` に合致する文字列をすべて選んでください

    1. perl
    2. pl
    3. pal

1. 正規表現 `p.*l` に合致する文字列をすべて選んでください

    1. perl
    2. pl
    3. pal

1. 正規表現 `p.+l` に合致する文字列をすべて選んでください

    1. perl
    2. pl
    3. pal


---

## 練習問題

1. 正規表現 `[perl]?` に合致する文字列をすべて選んでください

    1. go
    1. perl
    1. ruby

1. 正規表現 `[perl]*` に合致する文字列をすべて選んでください

    1. go
    1. perl
    1. ruby

1. 正規表現 `[perl]+` に合致する文字列をすべて選んでください

    1. go
    1. perl
    1. ruby

---

## 文字を表す文字、メタ文字（2/3）

| メタ文字 | 説明 |
| - | - |
| `(●)` | グループを作る。正規表現 `●` にマッチした場合、キャプチャを行う
| `(?:●)` | グループを作るが、キャプチャは行わない
| `●*?` | `●*` と同じ意味だが、マッチパターンが複数ある場合、 `●*` はなるべく長くマッチするのに対し、 `●*?` はなるべく短くマッチする
| `●\|◎` | 左右の正規表現 `●◎` のどちらかにマッチする


---

## `(●)` でグループを作ってキャプチャする

正規表現 `●` を `()` で囲むことで、マッチした文字列を取得することができます。これを **キャプチャ** と呼びます。

キャプチャされた文字列は `$1` という特殊変数に格納されます。この `$1` は `my` で宣言せずに利用します。

```perl
if ('perl girl' =~ /(p..l)/){
    print $1 . "\n";    # perl girl
}else{
    print "no match" . "\n";
}
```

---

## `(●)` でグループを作ってキャプチャする

複数キャプチャすることも可能で、そのときはマッチした文字列が $1, $2 ... と順番に変数に格納されます。

複数キャプチャする時はこのようになります。

```perl
if ('perl girl' =~ /(p..l) (g..l)/){
    print $1 . "\n";    # perl
    print $2 . "\n";    # girl
}else{
    print "no match" . "\n";
}
```

---

## `(?:●)` でグループを作るがキャプチャしない

取得したい文字列が決まっているが、それとは別にグループだけしておきたいという場面が出てきます。

例えば以下の例で `girl` だけ取得したい場合、2 回キャプチャして 2 回目のみを利用するだけでも用は足ります。

しかし、利用されなかった `$1` はどこかで利用する？という疑問がプログラム上に残ります。

```perl
if ('perl girl' =~ /(p..l) (g..l)/){
    # $2 だけでも目的は果たせるが、$1 はどこかで利用する？という疑問が残る
    print $2 . "\n";    # girl
}else{
    print "no match" . "\n";
}
```

---

## `(?:●)` でグループを作るがキャプチャしない

このような場合には「キャプチャしないグループ化」である `(?:●)` を利用します。

これにより、格納する変数をシンプルにし、どこをキャプチャしたいのかをプログラム上で明確にすることができます。

```perl
if ('perl girl' =~ /(?:p..l) (g..l)/){
    # 最初のグループ化をキャプチャしない、という意図をコード上で明確にする
    print $1 . "\n";    # girl
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `●*?` 怠惰なマッチ

`*` に合致する正規表現 ● があった場合、できるだけ長い文字列を取得します。これを Greedy mach 強欲なマッチとも呼びます。

先にあげた例がまさに強欲なマッチの例です。

```perl
if ('perl girl' =~ /(p.*rl)/){
    print $1 . "\n";    # perl girl
}else{
    print "no match" . "\n";
}
```

これに対し、合致するできるだけ短い文字列を取得する動作が lazy match 怠惰なマッチです。

```perl
if ('perl perfect girl' =~ /(p.*?rl)/){
    print $1 . "\n";    # perl
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `●|◎` 左右の正規表現 `●◎` のどちらかにマッチする

<ruby>`|`<rt>バー</rt></ruby> で区切られた、左右にある正規表現のどちらかにマッチするか判定します。


```perl
if ('perl' =~ /r.by|p.rl/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `●|◎` 左右の正規表現 `●◎` のどちらかにマッチする

`()` と組み合わせて、マッチした文字列をキャプチャする方法がよくとられます。

```perl
if ('perl' =~ /(r.by|p.rl)/){
    print $1 . "\n";    # perl
}else{
    print "no match" . "\n";
}
```

---

## 練習問題（考え中）

以下についての問題

```
| (●) | グループを作る。正規表現 ● にマッチした場合、キャプチャを行う
| (?:●) | グループを作るが、キャプチャは行わない
| ●*? | ●* と同じ意味だが、マッチパターンが複数ある場合、 ●* はなるべく長くマッチするのに対し、 ●*? はなるべく短くマッチする
| ●\|◎ | 左右の正規表現 ●◎ のどちらかにマッチする
```

---

## 文字を表す文字、メタ文字（3/3）

| メタ文字 | 説明 |
| - | - |
| `^●` | 正規表現 `●` の冒頭にある場合、文字列の冒頭でのみマッチする
| `●$` | 正規表現 `●` の末尾にある場合、文字列の末尾でのみマッチする
| `\s` | 空白、改行、タブのうち 1 文字を表す
| `\d` | 数字 1 文字を表す
| `\b` | 単語境界

---

## メタ文字 `^` 正規表現が冒頭にある場合のみマッチする

正規表現の位置によって、マッチするかどうかを判定することも可能です。まずは冒頭からです。

```perl
if ('perl' =~ /^r/){    # 冒頭に r があるか？
    print "match" . "\n";
}else{
    print "no match" . "\n";   # こちらが表示される
}
```

```perl
if ('ruby' =~ /^r/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `^` 正規表現が冒頭にある場合のみマッチする

この `^` は、文字クラス `[ ]` の中にあると否定の意味になることは先に紹介しました。

複雑な条件を限られた記号で表す必要があるため、同じ記号でも使われる場所によって意味が異なってきます。

最初は混乱すると思うのですが、使っていると慣れて判別がつくようになります。

---

## メタ文字 `$` 正規表現が末尾にある場合のみマッチする

位置による正規表現マッチ、次は末尾です。

```perl
if ('perl' =~ /l$/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('ruby' =~ /l$/){
    print "match" . "\n";
}else{
    print "no match" . "\n";   # こちらが表示される
}
```

---

## メタ文字 `\s` 空白、改行、タブのうち 1 文字を表す

文字の種別によるマッチです。`\s` は空白を表すメタ文字です。

```perl
if ('perl girl' =~ /(?:.+rl)\s(?:.+rl)/){   # 空白 1 つ
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('perl          girl' =~ /(?:.+rl)\s+(?:.+rl)/){ # 複数の空白
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `\d` 数字 1 文字を表す

```perl
if ('perl 5' =~ /perl \d/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('2021' =~ /\d\d\d\d/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## メタ文字 `\b` 単語境界を表す

単語境界とは「文字列の先頭」「文字列と文字列の間」「文字列の最後」のことを言います。

```perl
if ('hello perl' =~ /\bperl\b/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

```perl
if ('hello perlmonger' =~ /\bperl\b/){
    print "match" . "\n";
}else{
    print "no match" . "\n";   # こちらが表示される
}
```

---

## 量指定子 `●{n}` n回の正規表現の繰り返し

`?`, `*`, `+` といった 0 回, 1 回, 1 回以上といった指定の他に、柔軟に正規表現の繰り返しを指定する方法があります。

それが量指定子です。　

例えば、2021-09-25 のような文字列は以下のようにマッチさせることができますが、記述が冗長です。

```perl
if ( '2021-09-25' =~ /\d\d\d\d-\d\d-\d\d/ ) {
    print "ok";
}
```

---

## 量指定子 `●{n}` n回の正規表現の繰り返し

あらかじめ繰り返しの数がわかっている場合には、量指定子 `{n}` を利用すると見やすく記述することができます。

```perl
if ( '2021-09-25' =~ /\d{4}-\d{2}-\d{2}/ ) {
    print "ok";
}
```

量指定子は以下のような繰り返し回数の指定も可能です。

-  `●{n,}`

    n回以上の正規表現の繰り返し

- `●{n,m}`

    n回以上、m回以下の正規表現の繰り返し

---

## 練習問題（考え中）

```
| ^● | 正規表現 ● の冒頭にある場合、文字列の冒頭でのみマッチする
| ●$ | 正規表現 ● の末尾にある場合、文字列の末尾でのみマッチする
| \s | 空白、改行、タブのうち 1 文字を表す
| \d | 数字 1 文字を表す
| \b | 単語境界| \d | 数字 1 文字を表す
```

- 量指定子をつかって、`2021-10-06` にも `2021-1-6` にもマッチする正規表現を作りましょう。

---

## 正規表現を用いた置換

これまでは、正規表現を用いて特定の文字のテスト、マッチ、キャプチャを行ってきました。

さらにマッチした文字列の置換を行うことができます。

```perl
my $greet = "Hello! Alice";
$greet =~ s/Alice/Perl/;

print $greet . "\n";    # Hello! Perl
```

単語境界を用いてこのように書くこともできます。
```perl
my $greet = "Hello! Alice";
$greet =~ s/\bA.+\b/Perl/;

print $greet . "\n";    # Hello! Perl
```

---

## 区切り記法の変更

ファイルの位置を示す <ruby>path<rt>パス</rt></ruby> や url を正規表現で置換する際に、正規表現で用いる区切り文字 `/` と URL の区切り文字である `/` が混在して見難くなる場合があります。

このような場合には、正規表現を囲む区切り文字 `/ /` を変えることができます。

```perl
my $path = '/usr/local/bin/perl';
$path =~ s{/usr/local/bin/}{/usr/bin/}; # { } に変えている

print $path . "\n"; # /usr/bin/perl
```

---

## 区切り記法の変更

置換だけではなく、マッチを探す際にも区切り文字を変更することが可能です。

その場合には `m{●}` と書きます。実はこれまでに学習した `/ /` は `m/ /` の省略形でした。

```perl
if ('perl' =~ m{p..l} ){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## 修飾子

例えば、大文字小文字を問わずに検索したい場合、これまで学習した内容だと文字クラスを使って表すことができます。

```perl
if ('Perl' =~ /[pP][eE][rR][lL]/){
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

しかし、もっと簡単に書く方法があります。それが **i 修飾子** です。i 修飾子を使うことで、マッチの際に大文字小文字を区別しなくなります。

```perl
if ('Perl' =~ /perl/i ){    # i修飾子
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

---

## エスケープ

正規表現では任意の一文字を表す <ruby>`.`<rt>ドット</rt></ruby> ですが、この <ruby>`.`<rt>ドット</rt></ruby> そのものをマッチや置換対象にしたいときはどうすれば良いでしょう？

ドットの他にも <ruby>`/`<rt>スラッシュ</rt></ruby> や <ruby>`\`<rt>バックスラッシュ</rt></ruby> 、<ruby>`+`<rt>プラス</rt></ruby>、<ruby>`*`<rt>アスタリスク</rt></ruby> 、<ruby>`[ ]`<rt>角かっこ</rt></ruby> など、正規表現中で特別な意味を持つ記号を検索したいときはどうすれば良いでしょう？

---

## エスケープ

そのようなときは <ruby>`\`<rt>バックスラッシュ</rt></ruby> をその記号の前においてください。

```perl
if ('.net' =~ /\.net/ ){     # .
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
```

バックスラッシュ自体をマッチさせたい時には `\\` のように、バックスラッシュを2回続けて記述します。

```perl
if ('\\\\' =~ /\\+/ ){      # 複数のバックスラッシュ
    print "match" . "\n";   # こちらが表示される
}else{
    print "no match" . "\n";
}
```

このように、その記号がもつ特別な働きを無効にすることを「エスケープする」といいます。

---

## 練習問題

（考え中）

```
- 特定の文字を「含まない」

- 2021-09-25 といった、4桁の数字, ハイフン, 2桁の数字, ハイフン, 2桁の数字を連結したもの

- 行頭に「メロス」が存在する行のみ

```

---

## ここまでが正規表現入門

駆け足で正規表現について学習してきました。

正規表現はプログラムの中だけではなく、テキストエディタや Everything（Windows）などの検索ツールでも利用が可能です。

特定の文字列を抜き出したい、曖昧な条件の単語を置き換えたい、という場面は意外に多いものです。

少なくとも、正規表現というものがあり、それを使えばうまいこと文字列処理をやれる。正規表現といえば Perl ！ ということを知っているだけでも大きいです。

---

## 更なる正規表現の学習へ

例えば、「東京都」と「京都」という文字列が与えられた時に、京都にのみマッチさせるにはどのような正規表現を使えば良いでしょう？

```perl
use utf8;
my @cities = ( '京都', '東京都' );
for my $city (@cities) {
    if ( $city =~ /京都/ ) {
       print $city . "\n";  # 京都 も 東京都 も表示されてしまう
    }
}
```

---

## 更なる正規表現の学習へ

このような場合には「否定の<ruby>後読<rt>あとよ</rt></ruby>み」を使うことで 京都 のみマッチさせることが可能です。

```perl
use utf8;
my @cities = ( '京都', '東京都' );
for my $city (@cities) {
    if ( $city =~ /(?<!東)京都/ ) {    # 京都 のみ表示される。否定の後読み
        print $city . "\n";
    }
}
```

---

## 更なる正規表現の学習へ

今回の講義資料については、以下の Web+DB Press vol.113 の Perl Hackers Hub の記事を参考にしています。

先に紹介した「否定の後読み」などについても解説があります。ぜひ見てください。

第58回　正規表現の勘所―わかりづらい記法の覚え方，先読みや後読みの実践（1）：Perl Hackers Hub｜gihyo.jp … 技術評論社
https://gihyo.jp/dev/serial/01/perl-hackers-hub/005801


---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# Web API を使う（GET）

---

## Web API を使う（GET）

### API とは

<ruby>API<rt>エーピーアイ</rt></ruby> とは Application Programming Interface の略です。

>APIの重要な役割は、システム／サービス提供者が公式に仕様（外部仕様）を定義し、管理している各種機能を利用するための操作方法（インタフェース）を提供することである（Wikipedia より）

---

## Web API を使う（GET）

### Web API と GET / POST

API をホームページの閲覧などで利用する HTTP / HTTPS 上で利用できるようにしたものが Web API です。

Web API を利用することで、Web サービスが提供している情報をプログラムで利用することができます。

HTTP / HTTPS には 様々な種類の通信リクエスト方法（メソッド）がありますが、今回はよく利用される <ruby>GET<rt>ゲット</rt></ruby> メソッド 、 <ruby>POST<rt>ポスト</rt></ruby> メソッド を体験していきます。

まずは GET メソッド です。GET メソッドは主にインターネットを介してサーバから情報を受信するために利用されます。

---

## Web API を使う（GET）

### HTTP::Tiny

では、早速 Web API を利用してみましょう。

今回は <ruby>`HTTP::Tiny`<rt>エイチティティピー タイニー</rt></ruby> を利用します。

[HTTP::Tiny - 小さく、シンプルで、正しい HTTP/1.1 クライアント - perldoc.jp](https://perldoc.jp/HTTP::Tiny)

HTTP::Tiny は Web API に限らず、HTTPで提供されているデータを Perl で利用する時に用います。

同様のモジュールとして `LWP（libwww-perl）`, `LWP::Simple`, `Furl` 等があります。

---

## Web API を使う（GET）

### モジュール

`HTTP::Tiny` をはじめ、Perl にはモジュールという機能追加の仕組みがあります。

同様の仕組みは他のプログラム言語にもあり、Ruby であれば <ruby>Gem<rt>ジェム</rt></ruby>、Python ではライブラリ、JavaScript ではモジュール、という名前で提供されています。

---

## Web API を使う（GET）

### 標準モジュールと外部モジュール

Perl のモジュールには大きく分けて 2 種類あります。

- 標準モジュール：Perl インストール時に一緒にインストールされる。

- 外部モジュール：インストールが必要。

`HTTP::Tiny` は Perl 5.14 以降に含まれている標準モジュールです。ハッシュのところで学習した `Data::Dumper`
 も標準モジュールです。

Perl のモジュールは metacpan や GitHub で探すことができます。
[Search the CPAN - metacpan.org](https://metacpan.org/)

---

## Web API を使う（GET）

### 気象庁非公式 Web API

今回は気象庁の非公式 Web API を利用してみます。`weather_report.pl` というファイルを作成し、以下のコードをコピーして実行してみてください。[GitHub Gist](https://gist.github.com/sironekotoro/09954632ea3c79f899139e808bbda2ca/3a6bcbb097adfbf9958d8591a58d10c122cf1827)

```perl
#!/usr/bin/env perl
use strict;
use warnings;

use Data::Dumper;
use HTTP::Tiny;

my $url
    = 'https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json';

my $response = HTTP::Tiny->new()->get($url);

print Dumper $response;
```

---

## Web API を使う（GET）

### 気象庁非公式 Web API

アクセスに成功すると、ターミナルに東京地方の天気予報といくつかの情報が表示されます。

アクセスがうまくいかなかった方は、エラーメッセージを Discord に貼り付けるなどして、サポーターへ報告をお願いします。

---

## Web API を使う（GET）

### 気象庁非公式 Web API

では、コードを解説します。1 〜 3 行目までは毎回のお約束です。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
```

次に、今回利用するモジュールを `use` します。

```perl
use Data::Dumper;
use HTTP::Tiny;
```

`use` することで、そのモジュールをプログラムの中で利用できるようになります。

データ表示用に `Data::Dumper` 、そして先に紹介した `HTTP::Tiny` です。

---

## Web API を使う（GET）

### 気象庁非公式 Web API

スカラー変数 `$url` にはアクセス先の URL を代入します。

```perl
my $url
    = 'https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json';
```

この URL に対し、HTTP::Tiny が GET でアクセスして応答をスカラー変数 `$response` に格納します。

```perl
my $response = HTTP::Tiny->new()->get($url);
```

最後に、 `$response` を Data::Dumper の Dumper 関数で表示しています。

```perl
print Dumper $response;
```

---

## Web API を使う（GET）

### 気象庁非公式 Web API の応答を取り出す

`Dumper` しただけでも、人間であれば必要な情報を取り出すことが可能です。

しかし、プログラムの場合には Web API の応答から必要な部分だけを取り出すための工程が必要です。

今回は Web API からの応答のうち、地域名を取り出してみます。地域名は `content` 内の `targetArea` になります。

---

## Web API を使う（GET）

### 気象庁非公式 Web API の応答を取り出す

ところで、先の Web API にアクセスするコードの最後で `Dumper` を利用して中身を見ていました。

この `Dumper` を削除し、 `$response` をそのまま `print` してみると以下のように表示されます。

```bash
$ perl weather_report.pl
HASH(0x7fb4102d11c0)
```

この `$response` はハッシュリファレンスであることがわかります。

そのうち、`Dumper` を見ただけでわかったり、あるいはモジュールのドキュメントをみてわかるようになります。

---

## Web API を使う（GET）

### 気象庁非公式 Web API の応答を取り出す

さて、改めて `Dumper` 時の応答を見ると、ハッシュリファレンス `$response` の キー名 `content` に今回ほしいデータがあります。

まず、`content` の部分だけを表示してみましょう。

ハッシュリファレンスからキー名を指定して表示するには、アロー記法を使って<ruby>{ }<rt>波かっこ</rt></ruby>でアクセスするのでした。

```perl
print $response->{content};
```

これで、 `content` だけが表示されるようになりました。

---

## Web API を使う（GET）

### Web API の共通データ形式 JSON

さて、ここから更に `targetArea` の情報を抜き出します。

この `content` の中身を抜粋すると、以下のようになっています。

```json
"publishingOffice":"気象庁","targetArea":"東京都", ...
```

Perl のハッシュに似た、"キー名"<ruby>:<rt>コロン</rt></ruby>"値", "キー名":"値", というデータ構造になっています。

これは Web API でよく利用される <ruby>JSON<rt>ジェイソン</rt></ruby> 形式のデータです。

---

## Web API を使う（GET）

### Web API の共通データ形式 JSON

JSON 形式のデータは JavaScript のオブジェクト表記法の一部です。
軽易で軽量かつ人間にも理解しやすい形式として Web API でよく利用されるようになりました。

Perl が JSON 形式のデータを読み、ハッシュリファレンスなどの Perl のデータ形式に変換するためには、標準モジュールの `JSON::PP` モジュールを利用します。

先のプログラムを一部改修します。

---

## Web API を使う（GET）

### JSON からデータを取り出す

お約束の3行を省略したコードです。コピペして実行してみてください。[GitHub Gist](https://gist.github.com/sironekotoro/09954632ea3c79f899139e808bbda2ca/69c6cfce2c3dc67ccce28ce7c6922892cb408955)

```perl
use HTTP::Tiny;
use JSON::PP;   # 追加

my $url
    = "https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json";
my $response = HTTP::Tiny->new()->get($url);
my $content = $response->{content};

my $decoded_content = JSON::PP->new->decode($content); #追加
print $decoded_content->{targetArea};   #追加
```

---

## Web API を使う（GET）

### JSON からデータを取り出す

追加したコードを解説していきます。

`JSON::PP` は、Perl で JSON 形式のデータを扱うモジュールです。

JSON 形式のデータを Perl のハッシュリファレンスにしたり（`decode`）、逆に Perl のハッシュリファレンスを JSON 形式のデータにしたり（`encode`）することができます。

なお、モジュールはプログラムの先頭にまとめて書いておくことが多いです。

```perl
use Data::Dumper;
use HTTP::Tiny;
use JSON::PP;   # 追加
```

---

## Web API を使う（GET）

### JSON からデータを取り出す

`JSON::PP->new->decode($content)` で、引数である JSON 形式のデータ `$content` を Perl のハッシュリファレンスに変換しています。

コード中では `$content` をハッシュリファレンスに変換してスカラー変数 `$decoded_content` に代入しています。

```perl
my $decoded_content = JSON::PP->new->decode($content); #追加
```

---

## Web API を使う（GET）

### JSON からデータを取り出す

次の行で、ハッシュリファレンスのキー名 `targetArea` を指定して `print` します。

```perl
print $decoded_content->{targetArea};   #追加
```

実行結果
```perl
東京都
```

---

## 練習問題 `weather_report_all.pl`

では、先のコードを改造して、`decoded_content` の全ての情報を表示してみましょう。

ヒント1：`decoded_content` はハッシュリファレンスである。

ヒント2：ハッシュの全てのキー名を返す関数は `keys` である。

余裕のある人は、URLの `130000` を他の地域の番号に変えて試してみたり、コマンドライン引数から番号を入れられるよう改造してみましょう。（例：大阪は `270000`）

[全拠点のJSON](http://www.jma.go.jp/bosai/common/const/area.json)

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

# Web API を使う（POST）

---

## Web API を使う（POST）

### POST

GET メソッドは主にインターネットを介してサーバから情報を受信するために利用されます。

それに対し、POST メソッドはインターネットを介して情報を送信するために利用します。Web上のフォームを利用して送信したり、画像のアップロードなどに利用されます。

今回は Perl 入学式で利用している Discord にプログラムから書き込んでみます。

---

## Web API を使う（POST）

### Discord から ウェブフックURL を入手する

Discord に POST するためには URL が必要です。Discord ではこの URL を「ウェブフックURL」と呼んでいます。

1. Discord の #webhook実習室 をクリックし、すぐ右にある歯車マーク ⚙ をクリックする

1. 左側のメニューから「連携サービス」をクリックし、右側の「ウェブフック」をクリックする

1. 「新しいウェブフック」ボタンをクリックする

1. 名前を `Spidey Bot` から `（受講生名） Bot` に変更する

1. 「ウェブフックURL」ボタンを押してURLをコピーし、画面最下部にある「変更を保存する」ボタンを押す。

---

## Web API を使う（POST）

### POST で投稿する

現在、手元のパソコンのクリップボードには Discord のウェブフックURL が保存されています。

この ウェブフックURL に投稿したいデータを付与して送信します。

POSTで投稿する時は、投稿先の要求に備えた設定を行う必要があります。Discord の場合には以下のドキュメントが参考になります。

- [タイトル: Webhooksへの序章](https://support.discord.com/hc/ja/articles/228383668-%E3%82%BF%E3%82%A4%E3%83%88%E3%83%AB-Webhooks%E3%81%B8%E3%81%AE%E5%BA%8F%E7%AB%A0)

- [Execute Webhook](https://discord.com/developers/docs/resources/webhook#execute-webhook)


---

## Web API を使う（POST）

### POST で投稿する

以下のコードが Discord に送信するためのプログラムです。`discord_webhook.pl` という名前で保存し、先に発行したウェブフックURL をスカラー変数 $webhook_url に代入するよう右辺に貼り付けて実行してみましょう。[GitHub Gist](https://gist.github.com/sironekotoro/af7cad7dfe0165727bf46364e6fce541/72095ad5914cecb8d9fceb17592b693c5471e4fe)

```perl
use HTTP::Tiny;
use JSON::PP;

my $webhook_url = 'ここに貼り付ける';

my $options = {
    headers => { 'Content-Type' => 'application/json'},
    content => JSON::PP->new()->encode({ content => 'Hello, Discord!' }),
};

my $response = HTTP::Tiny->new()->post( $webhook_url, $options );
```

Discord の `#webhook実習室` に書き込みされれば成功です。

---

## Web API を使う（POST）

### POST で投稿する

では、コードの解説です。

POSTで投稿する時は、投稿先の要求に備えた設定を行う必要があります。それが以下の部分です。

HTTP で通信する際のヘッダ情報 `headers` に `'Content-Type' => 'application/json'` を指定しています。

投稿する本文 `content` はハッシュリファレンスを `JSON::PP->new()->encode` で JSON 形式にしています。

```perl
my $options = {
    headers => { 'Content-Type' => 'application/json'},
    content => JSON::PP->new()->encode( 'Hello, Discord!' ),
};
```

---

## Web API を使う（POST）

### POST で投稿する

先の投稿先の要求に備えた設定ですが、最初は公式ドキュメントなどから読み取るのは難しいかもしれません。

そういった時は、他の言語での実装やブログ、Qiita などの記事も参考になります。Perl入学式の Discord チャンネルで聞いてみるのも良いでしょう。

---

## Web API を使う（POST）

### POST で投稿する

最後の行で、投稿先の要求に備えた設定であるハッシュリファレンス `$option` を添えて `HTTP::Tiny` で通信します。

```perl
my $response = HTTP::Tiny->new()->post( $webhook_url, $options );
```

この `$response` の中身は HTTP ステータスコードや通信日時などの情報が入っています。`Data::Dumper` などで中身を表示してみましょう。


---

## Web API を使う（POST）

### POST で日本語を投稿する

さて、投稿メッセージに日本語を使いたくなるのは当然のことだと思います。早速やってみましょう。

```perl
use HTTP::Tiny;
use JSON::PP;

my $webhook_url = 'ここに貼り付ける';

my $options = {
    headers => { 'Content-Type' => 'application/json'},
    content => JSON::PP->new()->encode({ content => 'こんにちは！' }), #　日本語で挨拶
};

my $res = HTTP::Tiny->new()->post( $webhook_url, $options );
```

---

## 練習問題 `webhook.pl`

先に作成した気象庁 Web API のコードを利用して、明日の天気予報などを Discord の `#webhook実験室` に投稿してみましょう。

---

## 出来た方は、Discord のテキストチャットで「出来た！」とリアクションお願いします！

---

## 休憩 ＆ 質問 ＆ 雑談 タイム<br>（5 〜 10 分）


---

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

`E3 81 93 E3 82 93 E3 81 AB E3 81 A1 E3 82 AF`

このため、`length` 関数は 15 文字と文字数を返したのです。

---

## Perl と日本語

### テキスト文字列

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

### `use utf8` がいらない場合

プログラムは半角英語と数字、記号の組み合わせで書かれています。

正規表現風に書くと、文字は `a-zA-Z` で 26 文字 * 2 で 52 文字。これに数字が `0-9` で 10 文字、`+-/%\?=$@% .,` などの記号が数十種類あります。

これらは 2 桁の 16 進数（ 1 バイト）で表される 256 個の範囲で割り当てられています。一例を挙げるとこのような感じです。

```perl
a => 61 # 16進数の61
z => 7a # 16進数の7a
```

このため、英数字と記号だけでプログラムを書いている場合は、`use utf8` をしなくても、問題はありません。

---

## Perl と日本語

### `use utf8` が必要な場合

しかし、1 バイトで表現できる 256 個の空間では、膨大な数の日本語（ひらがな、カタカナ、漢字）を表現するに足りません。

このため、日本語 1 文字に複数のバイトを割り当てることで日本語を処理することにしました。このルールが **エンコーディング** と呼ばれるものです。

```perl
こ => E3 81 93
ん => E3 82 93
に => E3 81 AB
ち => E3 81 A1
は => E3 82 AF
```

`use utf8` を使うことで、Perl はプログラムに書かれている文字が `utf8` エンコード であることを前提に文字を処理するようになります。

---


## Perl と日本語

### 入力された日本語を正しく扱う

コマンドライン引数から「こんにちは」と入力した時も同様の問題が発生します。

`use utf8` を使うことで、Perl はプログラムに書かれた文字をテキスト文字列として解釈します。しかし、今回はコマンドライン引数から入力されるバイト列（バイナリ文字列）なので効果がありません。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8; # あってもなくても同じ

my $input = shift @ARGV;

print 'length: ' . length($input) . "\n"; # 引数に日本語を入れるとカウント失敗
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
my $decoded_input = decode('utf8', $input); # utf8 で デコードする

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

### 出力する日本語を正しく扱う

入力を受け取った後にデコードをしたように、出力する前に Encode モジュールの <ruby>encode<rt>エンコード</rt></ruby> を行うことで、対象の文字列をバイト列（バイナリ文字列）に変換できます。

これで、警告がなくなりました。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Encode; # 追加

my $greet = 'こんにちは';

print 'length: ' . length($greet) . "\n";   # 5
print encode('utf8', $greet) . "\n";        # utf8 でエンコード こんにちは
```

---

## Perl と日本語

### 日本語の入出力まとめ

今まで見てきた通り、Perl の日本語処理は以下のようになります。

1. プログラム中に日本語を書いたり、日本語を対象にした正規表現などを書くときは `use utf8` してバイト列（バイナリ文字列）をテキスト文字列にする。

2. コマンドライン引数などで日本語の入力を受け付けて、それを 1 のような加工や、`use utf8` した日本語との比較をする場合には、 `decode` してバイト列（バイナリ文字列）をテキスト文字列にする。

3. 上記 1, 2 のような処理をした文字列を出力するときは、 `encode` してテキスト文字列をバイト列（バイナリ文字列）にする。

---

## Perl と日本語

### 日本語の入出力まとめ

日本語を入出力したり、単純な比較のみであれば、`use utf8` は不要です。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $input = shift @ARGV;    # バイト列（バイナリ文字列）で受け取る

if ($input eq 'こんにちは'){ #  バイト列（バイナリ文字列）のまま比較する
    print "同じ文字列です";    # バイト列（バイナリ文字列）を出力する。
}else{
    print "違う文字列です";    # バイト列（バイナリ文字列）を出力する。
}
```

---

## Perl と日本語

### 日本語の入出力まとめ

しかし、テキストで学習した `length` や、以下のような日本語を対象にした正規表現を利用する場合には、エンコードの処理が必要です。

```perl
my $input = shift @ARGV;    # バイト列（バイナリ文字列）で受け取る

if ($input =~ /^(.)/ ){ # バイト列（バイナリ文字列）のまま正規表現！
                        # 正規表現 ^(.) で先頭の 1 文字をキャプチャする
                        # でも、decode していないから・・・？

    print "先頭の文字は $1 です";    # バイト列（バイナリ文字列）を出力する。
}
```

---

## Perl と日本語

### 練習問題 `greet_and_length.pl`

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

---

## Perl と日本語

### 練習問題 `first_and_last_letter.pl`

以下のプログラムはコマンドライン引数に文字列を入力すると、先頭の文字と末尾の文字を教えてくれるプログラムです。

これを改修して、コマンドライン引数に日本語を入力しても、正しく表示ができるようにしてください。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

my $input = shift @ARGV;    # バイト列（バイナリ文字列）で受け取る

if ($input =~ /^(.).*(.)$/){   # バイト列のまま正規表現！
                               # 入力された文字の先頭 1 字と末端 1 字をキャプチャ
    print "$1 ではじまって $2 で終わります";
    # バイト列（バイナリ文字列）を出力する
}
```

---

## Perl と日本語

### 練習問題 `use_utf8.pl`

以下のプログラムはコマンドライン引数に `こんにちは` と入力しても、同じ文字列とは判定されません。また、`Wide character in print at 〜` の警告も表示されます。

これを `use utf8;` は残したまま改修して、正しく判定され、警告も出ないようにしてください。

```perl
#!/usr/bin/env perl
use strict;
use warnings;
use utf8;   # use utf8 しているので、プログラムに書かれているのはテキスト文字列

my $input = shift @ARGV;    # バイト列（バイナリ文字列）で受け取る

if ($input eq 'こんにちは'){ #  バイト列（バイナリ文字列）とテキスト文字列を比較？
    print "同じ文字列です";    # テキスト文字列を出力する。
}else{
    print "違う文字列です";    # テキスト文字列を出力する。
}
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

