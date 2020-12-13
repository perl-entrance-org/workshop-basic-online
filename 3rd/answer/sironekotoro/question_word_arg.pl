#!/usr/bin/env perl
use strict;
use warnings;

# 1. コマンドライン引数から文字列を一つ入力します。
# 2. その文字列が $answer と一致したらOKと表示します。
# 3. 外れたら NG と表示します。

my $answer = 'perl';    # 好きな文字を入力しておく

my $input = shift;

if ( $answer eq $input ) {
    print "OK\n";
}
else {
    print "NG\n";
}
