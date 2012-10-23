#!/usr/bin/perl

my $sumOfSquares = 0;
my $squareOfSum = 0;

for(my $value = 1; $value <= 100; $value++) {
	$sumOfSquares += $value ** 2;
}

for(my $value = 1; $value <= 100; $value++) {
	$squareOfSum += $value;
}
$squareOfSum = $squareOfSum ** 2;

print "Sum of Square: $sumOfSquares\n";
print "Square of Sum: $squareOfSum\n";
print "Difference: " . ($squareOfSum - $sumOfSquares) . "\n";