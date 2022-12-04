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

- 配列の **先頭から要素取り出す** ときには `shift` を利用します。

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
