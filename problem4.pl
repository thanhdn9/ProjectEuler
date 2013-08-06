#!/usr/bin/perl

use v5.14;

sub is_palindrome($) {
    my $num = shift;
    return 1 if $num == ~~ reverse $num; #Guess what ~~ is?
    return 0;    
}

my $num = 0;

for (my $i = 999; $i > 99; $i--) {
    for (my $j = 999; $j > $i; $j--) {
        my $tmp = $i * $j;
        last unless $tmp > $num;

        if ($tmp > $num and is_palindrome($tmp)) {
            $num = $tmp;    
            say $i;
            say $j;
        }
    }    
}

say $num;
