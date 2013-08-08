#!/usr/bin/perl

use v5.14;
use Lingua::EN::Numbers qw(num2en);

my $sum;

for (1 .. 1000) {
    my $word = num2en($_);
    $word =~ s/[^A-Za-z]*//g;
    $sum += length($word);
}
say $sum;
