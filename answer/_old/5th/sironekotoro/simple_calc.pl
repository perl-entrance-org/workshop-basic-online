#!/usr/bin/env perl
use strict;
use warnings;

# 2 つの引数の和（足し算）を計算する add
# 2 つの引数の差（引き算）を計算する min
# 2 つの引数の積（掛け算）を計算する mul
# 2 つの引数の商（割り算）を計算する div

print add( 2, 3 ) . "\n";
print min( 2, 3 ) . "\n";
print mul( 2, 3 ) . "\n";
print div( 2, 0 ) . "\n";

sub add {
    my $left  = shift;
    my $right = shift;
    return $left + $right;
}

sub min {
    my $left  = shift;
    my $right = shift;
    return $left - $right;
}

sub mul {
    my $left  = shift;
    my $right = shift;
    return $left * $right;
}

sub div {
    my $left  = shift;
    my $right = shift;

    # 時間の余った人は「0」で割った際のエラーを回避する仕組みを入れてみよう
    if ( $right == 0 ) {
        return "Cannot be divided by zero.";
    }

    return $left / $right;
}
