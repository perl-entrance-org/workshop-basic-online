#!/usr/bin/env perl
use strict;
use warnings;

# 以下のプログラムに追記して、@numbers の中身を昇順にソートして
# 出力しよう。

my @numbers = ( 10, 3, 21, 7, 1, 100 );

my @sorted = sort { $a <=> $b } @numbers;

print "@sorted";
