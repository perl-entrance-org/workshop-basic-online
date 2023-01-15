#!/usr/bin/env perl

use strict;
use warnings;

sub fizzbuzz{
    my $i = shift;
    if ($i % 15 == 0){
        return "FizzBuzz";
    }
    if ($i % 3 == 0){
        return "Fizz";
    }
    if ($i % 5 == 0){
        return "Buzz";
    }
    return $i;
}

for my $j (1..100){
    print(fizzbuzz($j) . "\n");
}