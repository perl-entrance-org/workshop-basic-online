#!/usr/bin/env perl
use strict;
use warnings;

# 1. 以下の人物のプロフィールを %larry_profile に格納してください。
#     名前(name) : Larry Wall
#     誕生(birth) : 1954
#     言語(lang) : Perl
# 2. key である name、birth、lang を使って、それぞれの value を出力してください。
# 3. wear という key に 'hat' を追加して Data::Dumper モジュールで出力してください。
# 4. 時間に余裕のある人は、Larry のプロフィールを充実させましょう。

my %larry_profile = (
    name  => 'Larry Wall',
    birth => 1954,
    lang  => 'Perl',
);

print "====== 区切り線 =====\n";

print $larry_profile{name} . "\n";
print $larry_profile{birth} . "\n";
print $larry_profile{lang} . "\n";

print "====== 区切り線 =====\n";
use Data::Dumper;

$larry_profile{wear} = 'hat';

print Dumper \%larry_profile;
