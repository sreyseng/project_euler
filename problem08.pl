#!/usr/bin/perl

my @numbers;
open (MYFILE, 'problem08_file.pl');
while( my $line = <MYFILE>) {
	chomp($line);
	@array = split(//, $line);
	push(@numbers, @array);
}

$numbersLength = $#numbers + 1;

my $product = 0;
my $end;

for (my $i = 0; $i <= $numbersLength - 5; $i++) {
	$tempProduct = $numbers[$i] * $numbers[$i+1] * $numbers[$i+2] * $numbers[$i+3] * $numbers[$i+4];
	if ($product < $tempProduct) {
		$product = $tempProduct;
		$end = $i + 4;
	}
}

print "The 5 consecutive numbers are: ($numbers[$end-4],$numbers[$end-3], $numbers[$end-2], $numbers[$end -1], $numbers[$end]) \n";
print "The greatest product of 5 consecutive numbers is: $product \n";