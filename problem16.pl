#!/usr/bin/perl
use Math::BigInt;

print "Please enter a number: ";
chomp(my $number = <STDIN>);

my $total = Math::BigInt->new(2);
for(my $i = 1; $i< $number; $i++) {
	$total *= 2;
}

my @splitTotal = split(//, $total);

my $sum = 0;
for(my $i = 0; $i <= $#splitTotal; $i++) {
	$sum += $splitTotal[$i];
}

print "TOTAL: $total\n SPLIT: @splitTotal SUM: $sum\n";