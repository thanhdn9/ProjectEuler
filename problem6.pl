#!/usr/bin/perl

use v5.14;
use List::Util qw(sum);

sub sum_square() {
    my $max = 100;
    my $_sum = 0;
    my $sqr = sub { 
                      my $num = shift;
                      return $num ** 2;
                  };
    foreach (1..$max) {
        $_sum += $sqr->($_);    
    }
    return $_sum    
}

my $sum = sum(1..100);
my $sum_sqr = &sum_square();

say $sum ** 2 - $sum_sqr;
