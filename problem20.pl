#!/usr/bin/perl

use v5.14;
use bigint;
use List::Util qw(sum);

sub gen_fact {
    my $n = 1;

    return sub {
        my $i = shift;

        if ($i >= $n) {
            for my $j ($n .. $i) {
                $n *= $j;
            }
        }
        return $n;
    }
}

my $res =  gen_fact->(100);
my @res = split('', $res);

say sum(@res);
