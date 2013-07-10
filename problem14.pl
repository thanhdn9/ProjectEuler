#!/usr/bin/perl

use v5.14;

my $num = 0;
my $chain = 0;

foreach my $n ( 800000 .. 1000000 - 1) {
    my $chain_long = 0;
    my $number = $n;

    while ( $number > 1) {
        if ($number % 2 == 0) {
            $number /= 2;    
        }
        else {
            $number = $number * 3 + 1;     
        }
        $chain_long++;
    }    

    $chain = $chain_long, $num = $n if $chain_long > $chain;    
}

say "$num has $chain chains.";
