#!/usr/bin/perl
my $number = 0;

$i = 100;
while($i <= 999) {
	my $j = 100;
	while($j <= 999) {
		$product = $i * $j;
		$reverse = scalar reverse $product;
		if($product == $reverse) {
			if ($number < $product) {
				$number = $product;
			}
		}
		$j++;
	}
	$i++;
}

print "$number\n";