#!/usr/bin/env perl
use strict;
use warnings;

# 変数 $log には、カンマ区切りのデータが格納されています。
# 各要素を配列に格納しましょう。

my $log
    = "2020-7-10,12:30:55,GET /css-combinators/ HTTP/1.1,200,7974,http://webllica.com/feed-icon-by-html-css/,Mozilla/5.0 (Windows NT 6.0)";

my @elements = split ",", $log;

# 格納して、全てを表示

for my $element (@elements) {
    print $element . "\n";
}
