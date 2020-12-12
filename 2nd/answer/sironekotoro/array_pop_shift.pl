#!/usr/bin/env perl
use strict;
use warnings;

# ('Alice', 'Bob', 'Carol') という配列 `@array` を作ってください。
my @array = ('Alice', 'Bob', 'Carol');

# 配列 `@array` から 'Carol' を取り出し、表示してください。
my $Carol = pop @array;
print "$Carol\n";

# 配列 `@array` から 'Alice' を取り出し、表示してください。
my $alice = shift @array;
print "$alice\n";
