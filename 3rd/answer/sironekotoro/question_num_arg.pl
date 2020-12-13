#!/usr/bin/env perl
use strict;
use warnings;

# 簡単な数当てゲーム question_num_arg.plを作成しよう。
# コマンドライン引数から数字を一つ入力し、その数字とプログラム中の $answer と
# を比較して、次ページの条件に従った表示をするプログラムを作ってください。

# 1. $answer と一致したら OK
# 2. $answer より大きければ too big
# 3. $answer より小さければ too small
# 4. （余裕があれば）入力した値が $answerから -5 〜 +5 の範囲内(例えば、$answerが 10 なら 5 〜 15)の場合、nearと表示する。

my $answer = 10;    # 好きな値を入力しておく

my $input = shift;

if ( $answer == $input ) {
    print "OK\n";
}
elsif ( -5 < $answer - $input && $answer - $input < 5 ) {
    print "near\n";
}
elsif ( $answer < $input ) {
    print "too big\n";
}
elsif ( $answer > $input ) {
    print "too small\n";
}
