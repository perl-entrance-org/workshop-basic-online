#!/usr/bin/env perl
use strict;
use warnings;

my %hash = (
    name  => 'Larry',
    birth => 1954,
    lang  => 'Perl',
);

# 1. ハッシュに以下の要素を追加してください。
# 名前（key）: software
# 値（value）: patch

$hash{software} = 'patch';

print "-" x 10 . "\n";    # 区切り線

# 2. keys 関数を使って, %hash の名前（key）をすべて出力してください。
for my $key ( keys %hash ) {
    print "$key\n";
}

print "-" x 10 . "\n";    # 区切り線

# 3. delete 関数を使って, 1 で使ったハッシュから birth の要素を削除してください。
delete $hash{birth};

# 削除されたか確認
print '$hash{birth}は';
if ( exists $hash{birth} ) {
    print "ある\n";
}
else {
    print "ない\n";
}
