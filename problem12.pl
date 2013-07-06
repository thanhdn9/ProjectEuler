#!/usr/bin/perl

use v5.14;

my $tri = -1;
my $n = 1;

while (1) {
    $tri = ($n * ($n + 1)) / 2;
    my $divs = 2;
    
    for ( my $num = 2; $num <= sqrt($tri); $num++) {
        $divs += 2 if $tri % $num == 0;     
    }    
    last if $divs > 500;
    $n += 1;
}

say $tri;
