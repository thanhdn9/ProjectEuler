#!/usr/bin/perl

use v5.14;

open my $fh, '<', 'names.txt' or die "$!";

my @names = sort map { s/"//g; $_ } split ',', <$fh>;

my %scores = map { ("A".."Z")[$_ - 1] => $_ } 1 .. 26;

my $sum;

for my $pos (0 .. $#names) {
    my $score = 0;
    for my $letter (split //, $names[$pos]) {
        $score += $scores{$letter};
    }
    $score = $score * ($pos + 1);
    $sum += $score;
}

say $sum;
