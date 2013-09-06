#!/usr/bin/perl

use v5.14;

sub eratosthenes {
   my %D;
   my $q = 2;
   return sub {
      while (defined(my $p = delete $D{$q})) {
         my $x = $p + $q;
         $x += $p while exists $D{$x};
         $D{$x} = $p;
         ++$q;
      }
      $D{$q * $q} = $q;
      return $q++;
   };
}

my $era = eratosthenes();
my $num;
my $sum;

while (($num = $era->()) < (2 * 10**6)) {
    $sum += $num;    
}

say $sum;
