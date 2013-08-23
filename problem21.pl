#!/usr/bin/perl

use v5.14;
use List::Util qw(sum);

sub get_sum_divisors {
    my $sum = 0;
    my $num = shift;

    for (1 .. sqrt($num)) {
        if ($num % $_ == 0){
            $sum += $_;
            my $pair = $num / $_;
            $sum += $pair if $_ > 1 and $_ != $pair;
        }
    }
    return $sum;
}

my @res;
my %cache;

for (1 .. 9999) {
    my $sum = get_sum_divisors($_);    
    $cache{$_} = $sum;

    if (exists $cache{$sum}) {
        if ($cache{$sum} == $_ and $_ != $sum) {
            push @res, ($cache{$_}, $_) 
        }
    }
}

say sum(@res);
