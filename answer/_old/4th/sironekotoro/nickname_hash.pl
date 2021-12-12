#!/usr/bin/env perl
use strict;
use warnings;

# ニックネームのキー nickname と 身長のキー height の２つのキーを持つハッシュを作ろう。
# それぞれのキーに自分のニックネーム、身長を設定しよう。
# ハッシュの中身を画面に出力してみよう。

my %hash = (
    nickname => 'sironekotoro',
    height   => 172,
);

print $hash{nickname} . "\n";
print $hash{height} . "\n";
