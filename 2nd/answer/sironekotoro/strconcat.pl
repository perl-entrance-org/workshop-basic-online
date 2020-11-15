#!/usr/bin/env perl
use strict;
use warnings;

# wandbox
# https://wandbox.org/permlink/0CWipITLqhpjObZm

my $str1 = "名前は";
my $str2 = "猫である。";
my $str3 = "まだ無い。";
my $str4 = "吾輩は";

print $str4 . $str2 . $str1 . $str3 . "\n";
print "$str4" . "$str2" . "$str1" . "$str3" . "\n";
print "$str4$str2$str1$str3\n";
