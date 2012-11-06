#!/user/bin/perl
use bignum;
print "Please enter a number: ";
chomp(my $input = <STDIN>);
my $factor = 1;
my @triangle = (0);

#starts at the 2nd term
for(my $i = 0; $i < $input; $i++) {
	push(@triangle, ($triangle[$i] + $factor));
	$factor++; 
}

shift @triangle; #get rid of 0 term
print "@triangle\n";

foreach (@triangle) {
	%facotorsArrayForMe = %{&findFactors($_)};
	print $_ . ": ";
	for $key (keys %facotorsArrayForMe) {
		print $key. " ";
	}
	print "\n";
}

sub findFactors {
	my $currentLimit = shift;
	my %factorsArray;
	for(my $i = 1; $i <= $currentLimit; $i++) {
		if($currentLimit % $i == 0) {
			$factorsArray{$currentLimit} = 0;
			$factorsArray{$i} = 0;
		}
	}
	return\%factorsArray;
}