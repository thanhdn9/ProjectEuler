#!/usr/bin/perl

use v5.14;

sub is_triangle {
    my $a = shift;
    my $b = shift;
    my $c = shift;
    return 1 if $c*$c == $a*$a + $b*$b;    
}

my $max = 1000;

foreach my $i (1 .. ($max/2)) {
    foreach my $j (1 .. ($max/2)) {
        my $k = $max - ($i + $j);
        if (&is_triangle($i, $j, $k)) {
            say $i*$j*$k;
            exit;    
        }    
    }
}
