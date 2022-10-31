#!/usr/bin/env perl
use strict;
use warnings;

for my $i (1..100){
    my $str = "";
    if ($i % 3 == 0){
        $str .= "Fizz";
    }
    if ($i % 5 == 0){
        $str .= "Buzz";
    }
    if ($str eq ""){
        $str = $i;
    }
    print "$str\n";
}
