#!/usr/bin/env perl
use strict;
use warnings;

my %menu = (
    'coffee'   => 380,
    'tea'      => 380,
    'sandwich' => 800,
    'icecream' => 200,
    'salada'   => 600,
    'cake'     => 400,
);

for my $key (sort keys %menu){
    print "$key の価格は $menu{$key} 円です。\n";
    $menu{$key} = $menu{$key} * 1.1;
}

print "12月からは\n\n";
for my $key (sort keys %menu){
    print "$key の価格は $menu{$key} 円です。\n";
}