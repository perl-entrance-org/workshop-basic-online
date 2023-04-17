# merge_saitama.pl

まず、下記のハッシュを作成します。

```perl
`%saitama_cities = (urawa => 486538, omiya => 457298, yono  => 83620 );`
```

以下の操作を順番に行ってください。

1. スカラー変数 `$saitama_population` に `urawa`, `omiya`, `yono` の値の合計を格納する

1. ハッシュ `%saitama_cities` に key 'saitama' と, それに対応する value として `$saitama_population` を追加する

1. ハッシュ `%saitama_cities` から key `urawa`, `omiya`, `yono` を削除する

1. key `urawa`, `omiya`, `yono` が削除されているか `exists` を使って確認する

1. ハッシュ `%saitama_cities` に格納されている `key` と `valuse`を出力する

- 参考:[さいたま市](https://ja.wikipedia.org/wiki/%E3%81%95%E3%81%84%E3%81%9F%E3%81%BE%E5%B8%82)