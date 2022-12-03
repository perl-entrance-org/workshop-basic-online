#!/usr/bin/env perl

use strict;
use warnings;

my @members = ('Alice', 'Bob', 'Carol');
push @members, 'Dave';
unshift @members, 'Eve';

for my $member (@members){
    print "$member\n";
}