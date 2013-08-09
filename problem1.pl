#!/usr/bin/perl

use v5.14;
use List::Util qw(sum reduce);

my @list = grep { $_ if $_ % 3 == 0 or $_ % 5 == 0 } 1 .. 999;

say sum(@list);
