#!/usr/bin/perl

use v5.14;
use List::Util qw(sum);

my @list = (1, 2);

sub gen_fib_list {
    my ($max, $list) = @_;
    my $fib = $list->[-2] + $list[-1];

    return unless $fib < $max;

    push(@$list, $fib);
    &gen_fib_list;
}

gen_fib_list(4000000, \@list);

@list = grep $_ % 2 == 0, @list;

say sum(@list);
