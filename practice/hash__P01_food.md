# food.pl

以下のように、 `$data` に人物名と好きな食べ物がハッシュで与えられています。
食べ物が何回出現したか表示してください。

```perl
my %data = (
    alice => 'sushi',
    bob   => 'soba',
    carol => 'sushi',
    dave  => 'sushi',
    ellen => 'soba',
    frank => 'udon',
);
```

余裕がある人は以下に挑戦してみてください。
Perl 入学式では教えていない内容ですが、Perl の本やインターネットで検索しつつ解いてみてください。

- 食べ物の名前順に sort して表示する
- 食べ物の出現回数順に sort して表示する（難易度：高）