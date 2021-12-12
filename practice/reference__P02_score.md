# score.pl

ハッシュリファレンスを 5 つ宣言してあります。

このハッシュリファレンスには、人物の名前（`name`）, 国（`country`）, プログラミング言語のスコア（`perl`, `python`, `ruby`, `php`, `binary`）が格納されています。

なお、それぞれのハッシュリファレンスには, 必ず `name`, `country`, `perl`, `python`, `ruby`, `php`, `binary` のキーが含まれています。

```perl
my $alice = {
    name        => 'Alice',
    country     => 'England',
    perl        => 60,
    python      => 80,
    ruby        => 80,
    php         => 50,
    binary      => 30,
};
my $bob = {
    name        => 'Bob',
    country     => 'America',
    perl        => 40,
    python      => 10,
    ruby        => 20,
    php         => 30,
    binary      => 50,
};
my $carol = {
    name        => 'Carol',
    country     => 'England',
    perl        => 100,
    python      => 70,
    ruby        => 80,
    php         => 50,
    binary      => 50,
};
my $dave = {
    name        => 'Dave',
    country     => 'Canada',
    perl        => 60,
    python      => 11,
    ruby        => 1,
    php         => 100,
    binary      => 100,
};
my $ellen = {
    name        => 'Ellen',
    country     => 'America',
    perl        => 1,
    python      => 15,
    ruby        => 0.5,
    php         => 60,
    binary      => 0.01,
};
```

## 1. 点数の合計 `score_sum.pl`

上記のプログラムをコピーして、以下の問題を解いてください。

それぞれの人物を表したハッシュリファレンスに、そのハッシュリファレンスに含まれるプログラミング言語のスコア（`perl`, `python`, `ruby`, `php`, `binary`）を合計した値を `sum` というキーで追加してみましょう。

手動でスコアを合計してハッシュリファレンスに直接入力するのではなく、ハッシュリファレンスを利用してスコアの合計値を計算してから入力するようにしましょう。

### ヒント

例えば、 `$alice` に含まれる `perl` と `ruby` のスコアの合計であれば、次のようなコードで計算できるでしょう。

```perl
my $sum = $alice->{perl} + $alice->{ruby};
```

このようにしてすべてのプログラミング言語のスコアを合計して、 `$alice` に `sum` というキーで代入すればよさそうですね！

とはいえ、すべてのハッシュリファレンスに対してこの処理を繰り返すのは冗長なので、 `@people` や `@languages` といった変数を作り、そこに各ハッシュリファレンスや言語名を格納してみましょう。

### 出力例

例えば、 `$alice` のハッシュリファレンスに含まれるプログラミング言語のスコアの合計値は `300` なので、以下のようになります。（ただし、表示したときに key の順番がこの通りになるとは限りません）

```perl
my $alice = {
    name        => 'Alice',
    country     => 'England',
    perl        => 60,
    python      => 80,
    ruby        => 80,
    php         => 50,
    binary      => 30,
    sum         => 300,
};
```

## 2. 言語ごとの平均 `score_avg.pl`

上記のプログラムをコピーして、以下の問題を解いてください。

`$average` というハッシュリファレンスを新しく作ります。
このハッシュリファレンスに、各人物の `perl`, `ruby`, `python` の3つのプログラミング言語のスコアの平均値を格納してください。

### ヒント

- ハッシュリファレンスの key には各人物の名前を使いましょう。
- 出力には `Data::Dumper` を使いましょう。

### 出力例
ハッシュリファレンスなので順不同となります。

```perl
$VAR1 = {
          'Carol' => '83.3333333333333',
          'Dave' => '24',
          'Bob' => '23.3333333333333',
          'Ellen' => '5.5',
          'Alice' => '73.3333333333333'
        };
```

## 3. 五段階評価 `score_star.pl`

上記のプログラムをコピーして、下記を参考に、各人物の言語ごとの成績を5段階で出力して下さい。

```
 0 - 19 =>
20 - 39 => *
40 - 59 => **
60 - 79 => ***
80 - 99 => ****
100     => *****
```

### 出力例

```perl
Bob
  perl : **
  python :
  ruby : *
  php : *
  binary : **
```

文字を揃えたい場合には、 `printf` や `sprintf` を調べてチャレンジしてみましょう。
```perl
bob
  perl   : **
  python :
  ruby   : *
  php    : *
  binary : **
```


## 4. 国ごとのPerlハイスコアリストを作る(score_country.pl)

`$highscore` というハッシュリファレンスを作成し、国（country）ごとの `perl` のスコアが 60 以上の人の名前を格納しましょう。

### ヒント

ハッシュリファレンスのkeyには `country` を利用し、valueには配列のリファレンスを格納すると良いでしょう。

### 出力例
ハッシュリファレンスなので、国名は順不同となります。

```
$VAR1 = {
          'Canada' => [
                        'Dave'
                      ],
          'England' => [
                         'Alice',
                         'Carol'
                       ]
        };
```

## 5. JSON風Dumper(score_jsonize.pl)

どのような方法でもよいので、`score.pl` で用意されたデータを、次のようなフォーマットで出力してみてください。

### 出力例

```perl
[
  {
    "python":80
    "binary":30
    "name":"Alice"
    "ruby":80
    "perl":60
    "php":50
    "country":"England"
  },
  {
    "python":10
    "binary":50
    "name":"Bob"
    "ruby":50
    "perl":40
    "php":30
    "country":"America"
  }
]
```