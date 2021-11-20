#!/usr/bin/env perl
use strict;
use warnings;

# usage
# perl concat.pl title.md header.md 01__building_perl_learning_environment.md 02__terminal_shell.md 03__editer.md 04__hello_world.md 05__scalar.md 06__calculation.md 07__string_linkage.md column_01__lets_go_YAPC.md 08__command_line_arguments.md 09__conditional_branch.md 10__logical_operator.md 11__array.md footer.md > ../1st/new_slide.md

while (my $file = shift @ARGV) {

    open my $FH, '<', $file;
    for my $line(<$FH>){
        chomp $line;
        print $line . "\n";
    }
    print "\n\n---\n\n";    # ファイルとファイルの区切り文字
    close $FH;

}
