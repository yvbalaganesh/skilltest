#!perl

use strict;
use warnings;

my @A = ([0, 1e6],
         [777, 780],
         [7777777777, 7777777788]);

foreach (@A) {
	print join ", ", @$_;
	print "\nheavy numbers: " . solution(@$_) . "\n";
}

sub solution {
    my ($A, $B)=@_;
    
    my $count = 0;
    for (my $i = $A; $i <= $B; $i++) {
        $count++ if (heavy($i));
    }
    
    return $count;
}

sub heavy {
    my $n = shift;

    my $sum = 0;
    my @string = split //, ('' . $n);
    foreach (@string) {
        $sum += $_;
    }

    return ($sum / @string) > 7;
}