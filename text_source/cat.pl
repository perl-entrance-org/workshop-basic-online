#!/usr/bin/env perl
use strict;
use warnings;

# usage
# perl cat.pl title.md header.md hoge.md fuga.md ... footer.md > slide.md

while (my $file = shift @ARGV) {

    open my $FH, '<', $file;
    for my $line(<$FH>){
        chomp $line;
        print $line . "\n";
    }
    print "\n\n---\n\n";    # ファイルとファイルの区切り文字
    close $FH;

}
