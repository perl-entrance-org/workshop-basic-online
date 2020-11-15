#!/usr/bin/env perl
use strict;
use warnings;

# wandbox
# https://wandbox.org/permlink/JEX5plJppgIpcuKY

# １＋２＋３＋４＋５＋６＋７＋８＋９＋１０
print "１＋２＋３＋４＋５＋６＋７＋８＋９＋１０ ＝ ";
print 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 . "\n";

# １００ ー　２００
print "１００ ー　２００ ＝ ";
print 100 - 200 . "\n";

# １０００円の品物を消費税８%で買った時の税込価格
print "１０００円の品物の消費税８%の税込価格は"
    . ( 1000 * 1.08 ) . "\n";

# 半径５mの円の面積（円周率は３．１４とする）
# 5 の 2乗
my $result = ( ( 5**2 ) * 3.14 );
print "5^2 * 3.14 = $result\n";

# 又は
print "5（半径） * 5（半径） * 3.14（円周率） = ";
print 5 * 5 * 3.14 . "\n";
