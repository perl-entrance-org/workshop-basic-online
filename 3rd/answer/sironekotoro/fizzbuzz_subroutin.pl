#!/usr/bin/env perl
use strict;
use warnings;

# 第二回で学習した fizzbuzz のルールをサブルーチンで実装しましょう
#     その数字が 3 で割り切れるなら Fizz と表示する。
#     その数字が 5 で割り切れるなら Buzz と表示する。
#     その数字が 3 でも 5 でも割り切れるなら FizzBuzz と表示する。
#     その数字が 3 でも 5 でも割り切れないなら その数字 を表示する。
# 余裕がある人は、for 文と組み合わせて 1 から 100 までを fizzbuzz してみましょう

sub fizzbuzz {
    my $number = shift;
    if ( $number % 3 == 0 && $number % 5 == 0 ) {
        return 'FizzBuzz';
    }
    elsif ( $number % 3 == 0 ) {
        return 'Fizz';
    }
    elsif ( $number % 5 == 0 ) {
        return 'buzz';
    }
    else {
        return $number;
    }
}

for my $n ( 1 .. 100 ) {
    my $fizzbuzz = fizzbuzz($n);
    print $fizzbuzz . "\n";
}
