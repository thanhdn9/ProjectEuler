#!/usr/bin/perl

use v5.14;

my $pos = 999_999;
my @array = (0)x10;

for (1 .. 10) {
    $array[-$_] = $pos % $_;
    $pos /= $_;
}

my @range = (0 .. 9);
my $num = 0;

for (@array) {
    $num *= 10;
    $num += splice(@range, $_, 1);
}

say $num;

