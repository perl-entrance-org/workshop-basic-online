#!/usr/bin/env perl
use strict;
use warnings;

# 引数で渡した文字列の先頭に ( 、末尾に ) を付け加えて返り値で戻すサブルーチン add_brackets を定義してみましょう。そして呼び出すプログラムを書いてみましょう。

print add_brackets('Perl');

sub add_brackets {
    my $str = shift;
    return "($str)";
}
