#!/usr/bin/perl
use Math::BigInt;
print "Please enter a number: ";
chomp(my $number = <STDIN>);

my $total = Math::BigInt->new(1);
for(my $i = $number; $i >=2; $i--) {
	$total = $total * $i;
}
my @totalSplit = split(//, $total);
print @totalSplit;
my $sum = 0;
for(my $i = 0; $i <= $#totalSplit; $i++) {
	$sum += $totalSplit[$i];
}

print "Total: $total; \nSplit: @totalSplit; \nSum: $sum\n";