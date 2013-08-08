#!/usr/bin/perl

use v5.14;
use Date::Calc qw(Day_of_Week check_date);

my $num_Sun = 0;

for my $year (1901 .. 2000) {
    for my $month (1 .. 12) {
        $num_Sun += 1 if Day_of_Week($year, $month, 1) == 7;
    }
}

say $num_Sun;
