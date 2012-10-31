#!/usr/bin/perl
use Math::BigInt;

print "Please enter in the term: ";
chomp(my $digit = <STDIN>);

my $length = 0;
my $position = 2;
my $first = Math::BigInt->new(1);
my $second = Math::BigInt->new(1);
my $temp = Math::BigInt->new(0);

while($length != $digit) {
	$temp = $first + $second;
	my @count = split(//, $temp);
	$length = scalar @count;
	$position++;
	if ($length == $digit) {
		print "The Position is: $position\n";
	} else {
		$first = $second;
		$second = $temp;
	}
}