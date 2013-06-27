#!/usr/bin/perl

use v5.14;

sub max_factor($) {
    my $max = shift;
    my $num = 1;

    while ($num < $max) {
        $max /= $num unless ($max % $num != 0);
        $num += 1;
    }
    return $max
}

say &max_factor(600851475143);
