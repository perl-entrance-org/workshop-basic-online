#!/usr/bin/env perl
use strict;
use warnings;

# 1. 変数 $mycard に、コマンドライン引数を利用して 1 から 13 までの好きな数字を直接入力できる様に改造しよう。
# 2. $mycard の数が 7 より大きければ BIG! と表示します。
# 3. $mycard の数が 7 と等しければ、 Seven! と表示します。
# 4. $mycard の数が 7 未満であれば、 SMALL! と表示します。

my $mycard = shift;

if ( $mycard > 7 ) {
    print "BIG\n";
}
elsif ( $mycard == 7 ) {
    print "Seven\n";
}
else {
    print "SMALL\n";
}
