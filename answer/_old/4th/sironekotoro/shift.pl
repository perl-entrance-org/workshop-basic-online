#!/usr/bin/env perl
use strict;
use warnings;

# 次のプログラムに shift、unshift 関数を使って、 @array の
# 中身の順番を正しくするプログラムを書きましょう。
# $temp 変数は、一時的にデータを仮置するために使用する変数です。

my $element = "second";
my $temp;
my @array = ( 'first', 'third' );

# <<ここにプログラムを書く>>
$temp = shift @array;        # @array: third
unshift @array, $element;    # @array: second, third
unshift @array, $temp;       # @array: first, second, third

print "@array\n";

