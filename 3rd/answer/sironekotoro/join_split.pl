#!/usr/bin/env perl
use strict;
use warnings;

# 1. ("0120", "123", "XXX") という配列を作り、join 関数を利用して - で連結して表示してください。
my @array = ("0120", "123", "XXX");
my $number = join "-", @array;
print $number . "\n";

print "====== 区切り線 =====\n";

# 2. There's more than one way to do it. という文字列を、split 関数で " "（半角スペース）ごとに分割し、すべて改行付きで出力してください。
my $strings = "There's more than one way to do it.";
my @words   = split / /, $strings;
print "@words" . "\n";