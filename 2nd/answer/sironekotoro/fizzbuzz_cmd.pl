#!/usr/bin/env perl
use strict;
use warnings;

my $num = shift;

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
