#!/usr/bin/perl

use v5.14;

# First solution

#use bigint;

#my ($last, $cur, $next, $min, $term) = (0, 1, 1, 10**999, 2);
#
#while ($next <= $min) {
#    $last = $cur;
#    $cur = $next;
#    $next = $last + $cur;
#    $term += 1;
#}
#
#say $term;

# Faster solution after read 
# http://www.maths.surrey.ac.uk/hosted-sites/R.Knott/Fibonacci/fibFormula.html#fiblong

my $PHI = (1 + sqrt(5)) / 2;
say 1 + int((999*log(10) + log(sqrt(5))) / log($PHI));
