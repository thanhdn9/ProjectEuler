#!/usr/bin/perl

use v5.14;
use bigint;

my $sum = 0;
my $num = 2 ** 1000;
my @digits = split(//, $num);

for my $i (@digits) { $sum += $i };
say $sum;
