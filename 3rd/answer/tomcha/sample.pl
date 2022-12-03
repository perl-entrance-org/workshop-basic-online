#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);

for my $key (keys %hash){
    print "$hash{$key}\n";
}