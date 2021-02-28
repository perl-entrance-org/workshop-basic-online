#!/usr/bin/env perl
use strict;
use warnings;

# icecream のメニューを削除してみよう。
# icecream のメニューが削除されていれば、"夏期メニューは終了しました"と画面に表示してみよう。

my %menu = (
    'coffee'   => 380,
    'icecream' => 200,
    'salad'    => 600,
    'cake'     => 400,
);

# icecream 削除
delete $menu{icecream};

# icecream のメニューが削除されていれば、"夏期メニューは終了しました" と画面に表示してみよう。
if ( !$menu{icecream} ) {
    print "夏期メニューは終了しました\n";
}
