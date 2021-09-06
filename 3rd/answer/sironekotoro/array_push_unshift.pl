#!/usr/bin/env perl
use strict;
use warnings;

# 1. ('Alice', 'Bob', 'Carol') という配列 @members を作ってください。
# 2. 配列 @members の末尾に Dave を追加し、 ('Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。
# 3. 配列 @members の最初に Eve を追加し、 ('Eve', 'Alice', 'Bob', 'Carol', 'Dave') という配列を作ってください。
# 4. 配列を for 文で出力してみましょう。

my @members = ( 'Alice', 'Bob', 'Carol' );
print "@members" . "\n";

print "====== 区切り線 =====\n";

push @members, 'Dave';

# この時点での配列 @members
print "@members" . "\n";

print "====== 区切り線 =====\n";
unshift @members, 'Eve';

# この時点での配列 @members
print "@members" . "\n";

print "====== 区切り線 =====\n";

for my $member (@members) {
    print $member . "\n";
}
