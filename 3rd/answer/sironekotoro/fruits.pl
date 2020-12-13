#!/usr/bin/env perl
use strict;
use warnings;

# 以下のサンプルプログラムでは、果物の名前が格納された
# 配列 @fruits の中に、野菜が 1 つ紛れ込んでいます。
# その場所を "メロン" で上書きして、配列の要素を全て果物にしましょう。

my @fruits = ( "りんご", "バナナ", "ネギ", "もも", "キウイ" );
print "@fruits" . "\n";

$fruits[2] = "メロン";
print "@fruits" . "\n";