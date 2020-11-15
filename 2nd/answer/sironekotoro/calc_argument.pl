#!/usr/bin/env perl
use strict;
use warnings;

# wandbox
# https://wandbox.org/permlink/aiAbm0eqCGKDcgCr

# コマンドライン引数 から 0 以外の整数を 2 つ読み込み、
# それらを四則演算(+, -, *, /)した結果を下の例のように
# 表示するプログラム calc_argument.plを作成しよう。

my $first  = shift;
my $second = shift;

print "$first + $second = " . ( $first + $second ) . "\n";
print "$first - $second = " . ( $first - $second ) . "\n";
print "$first * $second = " . ( $first * $second ) . "\n";
print "$first / $second = " . ( $first / $second ) . "\n";

print "又は\n";

my $result = $first + $second;
print "$first + $second = $result\n";

$result = $first - $second;
print "$first - $second = $result\n";

$result = $first * $second;
print "$first * $second = $result\n";

$result = $first / $second;
print "$first / $second = $result\n";
