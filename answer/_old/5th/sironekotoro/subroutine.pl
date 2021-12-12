#!/usr/bin/env perl
use strict;
use warnings;

# 以下に書かれた Perl プログラムをコピペして、すでに定義されたサブルーチン
# notice_event を呼び出してみよう。
# すでに定義されたサブルーチン greeting に引数として自分のニックネームを
# 渡して呼び出してみよう。

notice_event();

sub notice_event {
    print "2月18日(木), 29日(金)の17:00から\n";
    print "PerlのイベントJapan.pmがオンラインで開催されます!\n";
}

greeting('sironekotoro');

sub greeting {
    my $name = shift;
    print "$name さん、Perl入学式へようこそ!\n";
}
