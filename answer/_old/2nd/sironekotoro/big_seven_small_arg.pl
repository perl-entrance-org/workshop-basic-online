#!/usr/bin/env perl
use strict;
use warnings;

my $mycard = shift;    # 1から13までの好きな数字を入力しておく

# 13より大きい、または1より小さい場合にはメッセージ
if ( $mycard > 13 || $mycard < 1 ) {
    print "Input 1 〜 13\n";
}
elsif ( $mycard > 7 ) {
    print "BIG\n";
}
elsif ( $mycard == 7 ) {
    print "SEVEN\n";
}
else {
    print "SMALL\n";
}
