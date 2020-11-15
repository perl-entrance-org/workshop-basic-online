#!/usr/bin/env perl
use strict;
use warnings;

# wandbox
# https://wandbox.org/permlink/qiHgMuVMi4gaWr3z

# 変数 $num に 8 を代入し画面に表示させる。
my $num = 8;
print "$num\n";

# 省略記法を使って、変数 $num を 10 倍し、画面に表示させる
$num *= 10;
print "$num\n";

# $num を 3 回インクリメントし、画面に表示させる。（正しくプログラムが書けていれば、83 と表示するはずです。）
$num++;
$num++;
$num++;
print "$num\n";
