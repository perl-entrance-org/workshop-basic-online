#!/usr/bin/env perl
use strict;
use warnings;

# 呼び出すと画面に サブルーチンが呼び出されました と表示されるサブルーチン call_subroutine を定義してみよう。そして呼び出すプログラムを書いてみましょう。

# 引数で渡した文字列をそのまま画面に出力するサブルーチン echo を定義してみましょう。そして呼び出すプログラムを書いてみましょう。

call_subroutine();    # サブルーチンの呼び出し

sub call_subroutine {
    print "サブルーチンが呼び出されました\n";
}

echo('sironekotoro');    # サブルーチンの呼び出し（引数つき）

sub echo {
    my $str = shift;
    print "$str\n";
}
