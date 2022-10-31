#!/usr/bin/env perl
use strict;
use warnings;

my $foo = 5;
my $bar = 2;
my $result;


# 剰余 %
$result = $foo % $bar;     # 4 を 2 で割った余りを $result に代入する
print "$foo % $bar = ";    # 表示だけ。改行はしない。
print "$result\n";         # 上の式に続けて $result を表示する

