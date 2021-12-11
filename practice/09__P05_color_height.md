# color_height.pl

"事前に与えられた情報"を判定するプログラムを書こう。

事前に設定された情報として、$tshirt変数に着ているTシャツの色、$height 変数に身長の情報が格納されています。

if 文の<<条件式>>を書いて、print 文の通り正しく判定される様に条件式を書いてみよう。

```perl
#!/usr/bin/env perl
use strict;
use warnings;

# 赤いシャツを着た身長160cnの人
my $tshirt = "red";
my $height = 160;

if (<<条件式>>){
  print "赤いTシャツを着ている身長180cm未満の人です。\n";
}

if (<<条件式>>){
  print "青いTシャツを着ている、または身長180cm未満の人です。\n";
}

if (<<条件式>>){
  print "赤いTシャツ又は青いTシャツを着ている、身長180cm以上の人です。\n";
}
```