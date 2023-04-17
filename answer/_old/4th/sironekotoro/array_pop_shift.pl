#!/usr/bin/env perl
use strict;
use warnings;

# ('Alice', 'Bob', 'Carol') という配列 @members を作ってください。
# 配列 @members から 'Carol' を取り出し、出力してください。
# 配列 @members から 'Alice' を取り出し、出力してください。

# ('Alice', 'Bob', 'Carol') という配列 @members を作ってください。
my @members = ( 'Alice', 'Bob', 'Carol' );

# 配列 @members から 'Carol' を取り出し、出力してください。
my $carol = pop @members;
print $carol . "\n";

# 配列 @members から 'Alice' を取り出し、出力してください。
my $alice = shift @members;
print $alice . "\n";
