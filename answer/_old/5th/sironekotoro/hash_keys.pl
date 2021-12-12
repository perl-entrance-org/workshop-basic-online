#!/usr/bin/env perl
use strict;
use warnings;

# 次のハッシュの key を全て取り出して、画面に出力してみよう。
my %users = (
    'Alice'  => 1,
    'Bob'    => 2,
    'Carol'  => 3,
    'Daiana' => 4,
);

for my $name ( keys %users ) {
    print "$name\n";
}

