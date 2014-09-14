#!perl

use strict;
use warnings;

my @A = ([0, 1, 2, 1, 1, 1, 1, 5],
         [2, 3, 4, 5, 6, 2, 1, 5],
         [1, 1, 1, 1, 1, 1, 1, 1],
         [1, 1, 1, 2, 1, 1, 5, 1, 1, 3, 9]);

foreach (@A) {
	print join ", ", @$_;
	print "\ndist: " . solution(@$_) . "\n";
}

sub solution {
    my (@A) = @_;

    my $pos = find_positions(@A);
	my @nums = sort keys %$pos;
	
	my $max = 0;
	for (my $i = 0; $i < @nums - 1; $i++) {
		my @a = sort @{$pos->{$nums[$i]}};
		my @b = sort @{$pos->{$nums[$i + 1]}};
		
		my $d = abs($a[0] - $b[-1]);
		$max  = $d if ($d > $max);
		$d    = abs($b[0] - $a[-1]);
		$max  = $d if ($d > $max);
	}
	
	return $max;
}

sub find_positions {
	my @f = @_;

	my %pos;
	my $i = 0;
	foreach (@f) {
		if (exists $pos{$_}) {
			push @{$pos{$_}}, $i;
		} else {
			$pos{$_} = [$i];
		}
		$i++;
	}
	return \%pos;
}