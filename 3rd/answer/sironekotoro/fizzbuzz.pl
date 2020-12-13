#!/usr/bin/env perl
use strict;
use warnings;

# 1 から 100 までの数字について、以下のようなルールに従って表示を行う fizzbuzz.pl を作成しましょう。
# - その数字が 3 で割り切れるなら Fizz と表示する。
# - その数字が 5 で割り切れるなら Buzz と表示する。
# - その数字が 3 でも 5 でも割り切れるなら FizzBuzz と表示する。
# - その数字が 3 でも 5 でも割り切れないなら その数字 を表示する。

for my $num ( 1 .. 100 ) {
    if ( $num % 3 == 0 && $num % 5 == 0 ) {
        print "fizzbuzz\n";
    }
    elsif ( $num % 3 == 0 ) {
        print "fizz\n";
    }
    elsif ( $num % 5 == 0 ) {
        print "buzz\n";
    }
    else {
        print "$num\n";
    }
}

# 1
# 2
# fizz
# 4
# buzz
# fizz
# 7
# 8
# fizz
# buzz
# 11
# fizz
# 13
# 14
# fizzbuzz
# 16
# 17
# fizz
# 19
# buzz
# fizz
# 22
# 23
# fizz
# buzz
# 26
# fizz
# 28
# 29
# fizzbuzz
# 31
# 32
# fizz
# 34
# buzz
# fizz
# 37
# 38
# fizz
# buzz
# 41
# fizz
# 43
# 44
# fizzbuzz
# 46
# 47
# fizz
# 49
# buzz
# fizz
# 52
# 53
# fizz
# buzz
# 56
# fizz
# 58
# 59
# fizzbuzz
# 61
# 62
# fizz
# 64
# buzz
# fizz
# 67
# 68
# fizz
# buzz
# 71
# fizz
# 73
# 74
# fizzbuzz
# 76
# 77
# fizz
# 79
# buzz
# fizz
# 82
# 83
# fizz
# buzz
# 86
# fizz
# 88
# 89
# fizzbuzz
# 91
# 92
# fizz
# 94
# buzz
# fizz
# 97
# 98
# fizz
# buzz
