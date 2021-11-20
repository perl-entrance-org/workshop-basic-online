#!/usr/bin/env perl
use strict;
use warnings;

# usage
# perl concat.pl title.md header.md 12__array_functions.md 13__hash.md 14__hash_functions.md 15__subroutin.md footer.md > ../2nd/new_slide.md

while (my $file = shift @ARGV) {

    open my $FH, '<', $file;
    for my $line(<$FH>){
        chomp $line;
        print $line . "\n";
    }
    print "\n\n---\n\n";    # ファイルとファイルの区切り文字
    close $FH;

}
