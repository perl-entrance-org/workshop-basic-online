#!/usr/bin/env perl
use strict;
use warnings;

# shift または pop を利用して以下のプログラムを作りましょう。
# 下のプログラムに追記して、100 から 4 までカウントダウンするプログラム

my @numbers = ( 1 .. 100 );

my @reverse = reverse @numbers;
pop @reverse;
pop @reverse;
pop @reverse;

for my $number (@reverse) {
    print "$number ";

    if ( $number % 10 == 0 ) {    # 整形用
        print "\n";
    }
}

print "\n---\n";                  # 区切り線

# 1.で作ったプログラムに追記して(1.で使った配列を利用して)、１から 97 までカウントアップするプログラム
pop @numbers;
pop @numbers;
pop @numbers;

for my $number (@numbers) {    # 整形用
    print "$number ";
    if ( $number % 10 == 0 ) {
        print "\n";
    }
}
