#!/usr/bin/env perl
use strict;
use warnings;

# ("0120", "123", "XXX") という配列を作ってください。
# 作成した配列を join 関数を利用して - で連結して表示してください。

my @elements = ( "0120", "123", "XXX" );
my $str = join "-", @elements;

print $str;
