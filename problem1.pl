#!/usr/bin/perl

use v5.14;

my $num = 1;
my $total = 0;

while ($num < 1000) {
    if ( ($num % 3 == 0) or ($num % 5 == 0) ) {
        $total += $num;    
    }
    $num++
}

say $total;
