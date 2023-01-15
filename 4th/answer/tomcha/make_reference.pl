#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my %alice = (name => 'Alice', japanese => 60, math => 90);
my %bob= (name => 'Bob', japanese => 70, math => 70);
my %charie= (name => 'Charie', japanese => 80, math => 80);

my $alice_ref = \%alice;
my $bob_ref = \%bob;
my $charie_ref = \%charie;

my @array = ($alice_ref, $bob_ref, $charie_ref);
print Dumper \@array;