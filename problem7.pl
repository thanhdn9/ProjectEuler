#!/usr/bin/perl

use v5.14;

sub is_prime($) {
    my $n = shift;

            given ($n) {
                when (1)            { return 0; }
                when ($n < 4)       { return 1; }
                when ($n % 2 == 0)  { return 0; }
                when ($n < 9)       { return 1; }
                when ($n % 3 == 0)  { return 0; }
                }

    my $i = int (sqrt($n));
    my $j = 5;

    while ($j <= $i) {
        return 0 if ($n % $j == 0);
        return 0 if ($n % ($j + 2) == 0);
            $j += 6;
    }
    return 1;
}

my $count = 0;

my $num = 1;

while (1) {
    $count += 1 if is_prime($num);
    if ($count == 10001) {
        say $num;
        exit;    
    }
    $num += 1;
}

