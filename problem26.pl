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

$era->() for (1 .. 4);

my $recur = 0;
my $max = 0;

while ((my $num = $era->()) < 1000) {
   my $v = 9;
   my $count = 0;

   while ($v) {
      ++$count;
      $v = ($v * 10 + 9) % $num;
   }
   if ($count > $recur) {
      $recur = $count;
      $max = $num;
   }
}

say $max;
