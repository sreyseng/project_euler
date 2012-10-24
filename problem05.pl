#!/usr/bin/perl

print "Please enter a number: ";
chomp(my $number = <STDIN>);

my @arrayOfHashes;

for(my $counter = 1; $counter <= $number; $counter++) {
	$arrayOfHashes[$counter] = &factors($number);
}

sub factors {
	my %primeHash;
	my $currentLimit = $_[0];
	for(my $i = 2; $i <= $currentLimit; $i++) {
		if($currentLimit % $i == 0) {
			$currentLimit = $currentLimit / $i;
			$primeHash{$i} += 1;
			$i = 1;
		}
	}
	return \%primeHash;
}

for(my $counter = 1; $counter <= $number; $counter++) {
	print $arrayOfHashes[$counter] . "\n";
}


# print "\n";
# foreach $key (keys %hash) {
# 	printf("%10s => $hash{$key}\n", "$key");
# }
# print "\n";