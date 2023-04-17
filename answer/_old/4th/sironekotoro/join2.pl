#!/usr/bin/env perl
use strict;
use warnings;

# @numbers の中身の数字を、半角スペース区切りの文字列として
# 画面に表示しましょう

my @numbers = ( 2, 8, 10, 203, 8760 );

my $str = join " ", @numbers;

print $str . "\n";
