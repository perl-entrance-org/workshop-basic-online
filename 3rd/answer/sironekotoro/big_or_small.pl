#!/usr/bin/env perl
use strict;
use warnings;

# 1. 変数 $mycard に 1 から 13 までの好きな数字（これがトランプの手札）を代入します。
# 2. $mycard の数が 7 より大きければ BIG と表示します。
# 3.それ以外(7 以下)であれば、 SMALL と表示します。

my $mycard = 10;    # 1から13までの好きな数字を入力しておく

if ( $mycard > 7 ) {
    print "BIG\n";
}
else {
    print "SMALL\n";
}
