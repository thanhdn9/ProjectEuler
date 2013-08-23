#!/usr/bin/perl

use v5.14;

sub get_sum_divisors {
    my $sum = 0;
    my $num = shift;

    for (1 .. sqrt($num)) {
        if ($num % $_ == 0){
            $sum += $_;
            my $pair = $num / $_;
            $sum += $pair if ($_ > 1 and $_ != $pair);
        }
    }
    return $sum;
}

my $limit = 20162;
my @abn;
my %abn_sum;
my $sum = 0;

for (2 .. $limit) {
    push @abn, $_ if get_sum_divisors($_) > $_;
}

@abn_sum{@abn} = ();

LOOP: for my $n (1 .. $limit) {
        for my $ab (@abn) {
            next LOOP if exists $abn_sum{$n - $ab};
        }
        $sum += $n;
}

say $sum;
