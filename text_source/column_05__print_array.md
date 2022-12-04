# コラム：配列の出力について

---

## コラム：配列の出力について

```perl
my @array = ( 'Alice', "Bob", 'Carol' );

print "@array"; # Alice Bob Carol
```

配列の中身を表示するために、`print "@array";` という書き方をしています。

配列の要素が、先頭からスペース区切りで表示されます。

実際のコードでこのように書くことはあまりありませんが、配列の中身を手軽に確認するため、この書き方をしています。

---

## コラム：配列の出力について

```perl
my @array = ( 'Alice', "Bob", 'Carol' );

print @array; # AliceBobCarol
```

@array から ダブルクォーテーション `" "` を外すと、配列の要素がスペース無しで先頭から表示されます。

---

## コラム：配列の出力について

```perl
my @array = ( 'Alice', "Bob", 'Carol' );

print @array, "\n";    # AliceBobCarol
```

配列の表示時に、カンマ `,` で改行を加えてみます。

配列の要素がスペース無しで先頭から表示され、改行されます。

---

## コラム：配列の出力について

```perl
my @array = ( 'Alice', "Bob", 'Carol' );

print @array . "\n";    # 3
```

今度は、配列の表示時に、文字列連結のドット `.` で改行を加えてみます。

すると、これまでとは異なり配列の要素数が表示され、改行されます。

カンマ `､` と ドット `.` で表示に差が出るのは、Perlの持つコンテキスト（文脈）によるものです。

Perl入学式では詳細に説明しませんが、変数の中身を確認するときには変数のみにするなど、注意しましょう。