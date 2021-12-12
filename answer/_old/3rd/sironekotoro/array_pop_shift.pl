#!/usr/bin/env perl
use strict;
use warnings;

# 練習問題 (array_pop_shift.pl)
# 1. ('Alice', 'Bob', 'Carol') という配列 @members を作ってください。
# 2. 配列 @members から 'Carol' を取り出し、出力してください。
# 3. 配列 @members から 'Alice' を取り出し、出力してください。

my @members = ( 'Alice', 'Bob', 'Carol' );
print "@members" . "\n";

print "====== 区切り線 =====\n";

my $carol = pop @members;
print $carol . "\n";

# この時点での配列 @members
print "@members" . "\n";

print "====== 区切り線 =====\n";

my $alice = shift @members;
print $alice . "\n";

# この時点での配列 @members
print "@members" . "\n";
