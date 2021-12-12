#!/usr/bin/env perl
use strict;
use warnings;

# 次のプログラムに push、pop 関数を使って、 @array の中身の
# 順番を正しくするプログラムを書きましょう。
# $temp 変数は、一時的にデータを仮置するために使用する変数です

my $element = "second";
my $temp;
my @array = ( 'first', 'third' );

# <<ここにプログラムを書く>>
$temp = pop @array;       # @array: first
push @array, $element;    # @array: first, second
push @array, $temp;       # @array: first, second, third

print "@array\n";