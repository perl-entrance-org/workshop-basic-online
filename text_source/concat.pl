#!/usr/bin/env perl
use strict;
use warnings;

# usage
# perl concat.pl title.md header.md reference.md regex.md footer.md > ../4th/slide.md

while (my $file = shift @ARGV) {

    open my $FH, '<', $file;
    for my $line(<$FH>){
        chomp $line;
        print $line . "\n";
    }
    print "\n\n---\n\n";    # ファイルとファイルの区切り文字
    close $FH;

}
