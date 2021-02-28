#!/usr/bin/env perl
use strict;
use warnings;

# 引数で渡した 1 つの数字に対して、3 つの数字のリストを返り値として戻すサブルーチンを定義しましょう。
# リストの最初の数は引数で渡された数より 2 少ない数
# リストの 2 番目の数は渡された数
# リスト 3 番目の数は渡された数より 2 多い数としてください。
# (例) 引数で 3 が渡される -> (1, 3, 5) のリストが返り値となる)

my @array = three_numbers(50);
print "@array";

sub three_numbers {
    my $num = shift;
    return ( $num - 2, $num, $num + 2 );
}
