#!/usr/bin/env perl
use strict;
use warnings;

my @numbers = (10, 3, 21, 7, 1, 100);
my @sorted1 = sort {$a <=> $b} @numbers;
print "@sorted1\n";
my @reversed1 = reverse @sorted1;
print "@reversed1\n";
my @str_sorted = sort {$a cmp $b} @numbers;
print "@str_sorted\n";
my @str_sorted_reversed = sort {$b cmp $a} @numbers;
print "@str_sorted_reversed\n";