#!/usr/bin/perl

#Algorithm: http://www.algebra.com/algebra/homework/divisibility/Divisibility_and_Prime_Numbers.faq.question.505530.html

print "Please enter a number: ";
chomp(my $number = <STDIN>);

#For each number between 2 and user input, call a function to calculate the prime factors into a hash
#and store the address of the hash into an array.
my @arrayOfHashes;
for(my $counter = 2; $counter <= $number; $counter++) {
	$arrayOfHashes[$counter] = &factors($counter);
}

#calculate prime factors of the number passed in into a hash. Returns the address of the hash.
sub factors {
	my %primeHash;
	my $tempNumber = $_[0];
	my $currentLimit = $tempNumber;
	for(my $i = 2; $i <= $currentLimit; $i++) {
		if($currentLimit % $i == 0) {
			$currentLimit = $currentLimit / $i;
			$primeHash{$i} += 1;
			$i = 1;
		}
	}
	return \%primeHash;
}

#List of primes between 1 and 20.
my %primeArrayHash = (
	2 	=> 0,
	3 	=> 0,
	5 	=> 0,
	7 	=> 0,
	11 	=> 0,
	13 	=> 0,
	17 	=> 0,
	19	=> 0,
);

#the most occurances of primes between 1 and 20 for 1-20.
for(my $counter = 2; $counter <= $number; $counter++) {
	my %tempHash = %{$arrayOfHashes[$counter]};
	foreach my $outerKey (sort {$a <=> $b} keys %tempHash) {
		foreach my $innerKey (sort {$a <=> $b} keys %primeArrayHash) {
			if($outerKey == $innerKey) {
				if ($tempHash{$innerKey} > $primeArrayHash{$innerKey}) {
					$primeArrayHash{$innerKey} = $tempHash{$innerKey};
				}
			}
		}
	}
}

#List of primes between 1 and 20 & calculate the total.
my $total = 1;
for my $key (sort {$a <=> $b} keys %primeArrayHash) {
	$total *= $key ** $primeArrayHash{$key};
}

print "The total is: $total.\n";