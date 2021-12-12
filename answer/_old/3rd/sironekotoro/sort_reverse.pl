#!/usr/bin/env perl
use strict;
use warnings;

# 以下のプログラムに追記して、条件通りに出力するプログラムを完成させてください。
# my @numbers = (10, 3, 21, 7, 1, 100);
#
# 1. @numbers の中身を数字の値として昇順（小さい順）でソートして出力する
# 2. 1.の出力を逆に出力する
# 3. @numbers の中身を文字として昇順でソートして出力できるようにしよう。
# 4. 3.の出力を逆に出力する

my @numbers = ( 10, 3, 21, 7, 1, 100 );
print "@numbers" . "\n";

print "====== 区切り線 =====\n";

my @sorted_numbers = sort { $a <=> $b } @numbers;
print "数字としてソート" . "\n";
print "@sorted_numbers" . "\n";

print "逆順" . "\n";
my @reverse_numbers = reverse @sorted_numbers;
print "@reverse_numbers" . "\n";

print "====== 区切り線 =====\n";

my @sorted_words = sort { $a cmp $b } @numbers;
print "文字としてソート" . "\n";
print "@sorted_words" . "\n";

print "逆順" . "\n";
my @reverse_words = reverse @sorted_words;
print "@reverse_words" . "\n";
