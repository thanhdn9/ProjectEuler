#!/usr/bin/perl

use v5.14;

my @coeff_primes = sieve(1000, 0);
my @quad_primes = sieve(10000, 1);

my $find = "";
my @test = grep(vec($find, $_, 1) = 1, @quad_primes);

undef @quad_primes;

my @long = ( 0, 0, 0 );

for my $a (@coeff_primes) {
    for my $b (@coeff_primes) {
        my $n = 0;
        $n++ while 
                    vec ($find, (($n * $n) + ($a * $n) + $b), 1) 
                    or
                    vec ($find, (($n * $n) + ($a * $n) + $b) * -1, 1);

        @long = ($n, $a, $b) if ($n >= $long[0]);
    }
}

#say "longest: (" . $long[0] . ") n^2 + " . $long[1] . "n + " . $long[2];
say $long[1] * $long[2];

sub sieve
{
    my ($LIM, $pos_switch) = @_;
    my ($sieve, @primes) = ("", ());

    X: for (my $guess = 2; $guess <= $LIM; $guess++) {
        next X if vec ( $sieve, $guess, 1 );

        push @primes, $guess; 

        unshift @primes, $guess * -1 if ( ! $pos_switch );

        for (my $mults = $guess * $guess; $mults <= $LIM; $mults += $guess) {
            vec ( $sieve, $mults, 1 ) = 1;
        }
    }
    return @primes;
}
