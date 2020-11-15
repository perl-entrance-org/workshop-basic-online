#!/usr/bin/env perl
use strict;
use warnings;

# wandbox
# https://wandbox.org/permlink/yCRj18H2Qq5YRTIe

# 変数 $foo に 10, $bar に 3 を代入し、それぞれを画面に表示させる。
my $foo = 10;
my $bar = 3;
print "$foo\n";
print "$bar\n";

# 変数 $foo から 変数 $bar を引いた数を画面に表示させる。
my $result = $foo - $bar;
print "$result\n";

# 変数 $foo を 変数 $bar で割った時の余りを表示させる。
$result = $foo % $bar;
print "$result\n";
