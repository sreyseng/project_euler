#!/usr/bin/perl
use bignum;

print "Please enter in a number: ";
chomp($input = <STDIN>);

sub mypow {
	my $number = shift;
	my $sum = 1;
	for(my $i = 1; $i<= $number; $i++) {
		$sum = $sum * $number
	}
	return $sum;
};

my $total = 0;
for(my $i = 1; $i <= $input; $i++) {
	$total = $total + &mypow($i);
}

print $total;

