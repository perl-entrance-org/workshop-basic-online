#!/usr/bin/env perl
use strict;
use warnings;

# ('Alice', 'Bob', 'Carol') という配列 @members を作ってください。
# 配列 @members の末尾に Dave を追加し、 ('Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。
# 配列 @members の最初に Eve を追加し、 ('Eve', 'Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。
# 配列を for 文で出力してみましょう。

# ('Alice', 'Bob', 'Carol') という配列 @members を作ってください。
my @members = ( 'Alice', 'Bob', 'Carol' );

# 配列 @members の末尾に Dave を追加し、 ('Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。
push @members, 'Dave';
print "@members\n";    #Alice Bob Carol Dave

# 配列 @members の最初に Eve を追加し、 ('Eve', 'Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。
unshift @members, 'Eve';
print "@members\n";    #Eve Alice Bob Carol Dave

print "----\n";        # 区切り線

# 配列を for 文で出力してみましょう。
for my $member (@members) {
    print "$member\n";
}
