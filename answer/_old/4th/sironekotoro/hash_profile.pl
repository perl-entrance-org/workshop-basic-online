#!/usr/bin/env perl
use strict;
use warnings;


# 以下の人物のプロフィールを %larry_profile に格納してください。
#     名前(name) : Larry Wall
#     誕生(birth) : 1954
#     言語(lang) : Perl
# key である name、birth、lang を使って、それぞれの value を出力してください。
# 時間に余裕のある人は、Larry のプロフィールを充実させましょう。


my %larry_profile = (
    name => 'Larry Wall',
    birth => 1954,
    lang => 'Perl',
    );

print $larry_profile{name} . "\n";
print $larry_profile{birth} . "\n";
print $larry_profile{lang} . "\n";

$larry_profile{univercity} = "Seattle Pacific University";
