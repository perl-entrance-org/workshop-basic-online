#!/usr/bin/env perl
use strict;
use warnings;

# wandbox
# https://wandbox.org/permlink/SfkShzAI2tpEnzG7

# コマンドライン引数から名前を読み込み、
# 入力された名前の左側に Hello 、右側に ! を加えて
# 表示するプログラムを作成しよう。

my $name = shift;

print "Hello $name!\n";
print "Hello" . " " . "$name" . "!" . "\n";
