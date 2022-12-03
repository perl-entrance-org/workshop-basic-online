#!/usr/bin/env perl
use strict;
use warnings;

my @members =  ('Alice', 'Bob', 'Carol');
my $member = pop @members;
print "$member\n";

my $member2 = shift @members;
print "$member2\n";

print "@members\n";