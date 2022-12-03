#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my %larry_profile = (
name  => 'Larry Wall',
birth => 1954,
lang  => 'Perl',
);

print "$larry_profile{lang}\n";
print "$larry_profile{birth}\n";
print "$larry_profile{name}\n";

$larry_profile{wear} = 'hat';

print Dumper \%larry_profile;