#!/usr/bin/env perl
use strict;
use warnings;

# 以下のハッシュをコピペして利用してください。ハッシュのデータを全て "<<商品名>> の価格は <<金額>> 円です。" の形式で出力してみよう。
# 出力する順番は商品名を ABC 順(昇順)で出力しよう。
# また、1 品目毎に改行して見やすく出力しよう。

my %menu = (
    'coffee'   => 380,
    'tea'      => 380,
    'sandwich' => 800,
    'icecream' => 200,
    'salada'   => 600,
    'cake'     => 400,
);

for my $food ( sort keys %menu ) {
    print "$food の価格は $menu{$food}円です。\n";
}

print "====== 区切り線 =====\n";

# おまけ
# 値段の安い順に並べる
for my $food ( sort { $menu{$a} <=> $menu{$b} } keys %menu ) {
    print "$food の価格は $menu{$food}円です。\n";
}
