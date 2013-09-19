#!/usr/bin/perl

use v5.14;
#use List::Util qw(sum);
#
#my @array = (1);
#
#for my $i (2 .. (1001+1)/2) {
#    for (0 .. 3) {
#        push @array, (2*$i-1)**2 - 2*($i-1)*$_;
#    }
#}
#
#say sum(@array);

# The sum of four corners for an nxn grid is given by 4n**2-6n+6
my $total = 1;

for (my $n = 3; $n <= 1001; $n += 2) {
    $total += 4*($n**2) - 6*$n + 6; 
}

say $total;

# Another method
#my $k = 501;
#
#say (4*$k*(4*$k**2 - 1)/3 - 6*$k**2 + 6*$k) + 1;
