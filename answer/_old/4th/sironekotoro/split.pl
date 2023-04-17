#!/usr/bin/env perl
use strict;
use warnings;

# "There's more than one way to do it." という文字列を作り、
# split 関数で " "（半角スペース）ごとに分割して配列 @words に
# 格納し、すべて出力してください。

my $motto = "There's more than one way to do it.";

my @words = split " ", $motto;

print "@words";

# または改行しながら全部出力

for my $word (@words) {
    print $word . "\n";
}
