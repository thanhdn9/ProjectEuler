#!/usr/bin/perl

use v5.14;
use List::Util qw(sum);

sub gen_cache_closure {
    my ($calc_element, @cache) = @_;

    return sub {
        my $item = shift;
        
        $calc_element->($item, \@cache)
            unless $item < @cache;

        return $cache[$item];
    };
}

sub gen_fib {
    my @fibs = (0, 1, 1);

    return gen_cache_closure(
        sub {
            my ($item, $fibs) = @_;

            for my $calc ((@fibs - 1) .. $item) {
                $fibs->[$calc] = $fibs->[$calc - 2]
                               + $fibs->[$calc - 1]
            }
        },
        @fibs
    );
}

my @fibs;
my $n = 1;
my $fib = gen_fib->($n);

while ($fib < 4000000) {
    push @fibs, $fib;
    $n += 1;
    $fib = gen_fib->($n);
}

@fibs = grep $_ % 2 == 0, @fibs;

say sum(@fibs);
