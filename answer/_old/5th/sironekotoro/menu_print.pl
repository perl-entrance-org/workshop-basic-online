#!/usr/bin/env perl
use strict;
use warnings;

# 以下のハッシュをコピペして利用してください。ハッシュのデータを全て "<<商品名>> の価格は <<金額>> 円です。" の形式で出力してみよう。
# 出力する順番は商品名を ABC 順(降順)で出力しよう。また、1 品目毎に改行して見やすく出力しよう。

my %menu = (
    'coffee'   => 380,
    'tea'      => 380,
    'sandwich' => 800,
    'icecream' => 200,
    'salada'   => 600,
    'cake'     => 400,
);

for my $name ( sort keys %menu ) {
    print "$name の価格は $menu{$name} 円です\n";
}
