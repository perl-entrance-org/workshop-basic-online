#!/usr/bin/env perl
use strict;
use warnings;

my @nums = ( 10, 33, 7, 90, 42 );

my $answer = 0;

for my $num (@nums) {
    $answer += $num;
}

print $answer . "\n";

# 他にもモジュール List::Util を使う方法もあります
use List::Util qw/sum/;
print sum(@nums) . "\n";
