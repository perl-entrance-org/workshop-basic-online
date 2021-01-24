#!/usr/bin/env perl
use strict;
use warnings;

# 先の練習問題 nickname.pl で作ったハッシュに要素を追加しよう。
# ハッシュに favorite というキーで、好きな何か（食べ物、スポーツ etc...）を値として追加しよう。
# height の値を 10 倍した値に書き換えてみよう。
# ハッシュの中身(3 つの要素)を画面に出力してみよう

my %hash = (
    nickname => 'sironekotoro',
    height   => 172,
);

$hash{favolite} = "ramen";    # ラーメン

$hash{height} = $hash{height} * 10;

print $hash{nickname} . "\n";
print $hash{height} . "\n";
print $hash{favolite} . "\n";
