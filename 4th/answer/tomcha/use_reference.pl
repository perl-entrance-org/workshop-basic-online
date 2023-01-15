#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

my @members = (
    { name => 'Alice',  japanese => 60, math => 90 },
    { name => 'Bob',    japanese => 70, math => 70 },
    { name => 'Charie', japanese => 80, math => 80 },
);

for my $member (@members){
    my $name = $member->{name};
    my $sum = $member->{japanese} + $member->{math};
    print "$name => $sum\n";
}