#!/usr/bin/perl

use v5.14;

my $num = 20;

sub fact() {
    my $num = shift;
    return 1 if $num == 0;
    return $num * &fact($num - 1);   
}

say fact(2*$num) / (fact($num)**2);
