#!/usr/bin/perl

use v5.14;

sub is_prime($) {
    my $num = shift;
    return 0 if $num < 2;
    for ( my $i=2; $i < $num; $i++) {
        return 0 if $num % $i == 0;    
    }
    return 1
}

my $count = 0;

my $num = 1;

while (1) {
    $count += 1 if &is_prime($num);
    if ($count == 10001) {
        say $num;
        last    
    }
    $num += 1;
}

