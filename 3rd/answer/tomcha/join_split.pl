#!/usr/bin/env perl
use strict;
use warnings;

my @array = ("0120", "123", "XXX");
my $phone_num = join '-', @array;
print $phone_num . "\n";

my $strings = "There's more than one way to do it";
my @array2 = split / /, $strings;

for my $s (@array2){
    print "$s\n";
}
