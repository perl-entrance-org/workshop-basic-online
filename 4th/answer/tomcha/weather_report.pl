#!/usr/bin/env perl

use strict;
use warnings;

my $content = {
    publishingOffice => '気象庁',
    targetArea => '東京都',
    text  => '日本海に中心を持つ高気圧が本州付近を覆っています。'
};

my @keys = keys %{$content};
my %hash_content = %{$content};

for my $key(@keys){
    my $value = $hash_content{$key};
    print "$key : $value \n";
}
