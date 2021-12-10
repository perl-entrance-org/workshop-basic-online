#!/usr/bin/env perl
use strict;
use warnings;

# usage
# perl concat.pl title.md header.md 18__http_get.md 19__http_post.md column_02__YAPC_Japan_Online.md 20__perl_and_Japanese.md footer.md > ../5th/new_slide.md

while (my $file = shift @ARGV) {

    open my $FH, '<', $file;
    for my $line(<$FH>){
        chomp $line;
        print $line . "\n";
    }
    print "\n\n---\n\n";    # ファイルとファイルの区切り文字
    close $FH;

}
