#!/usr/bin/perl

print "Please enter a N(th) position of the prime number you are looking for: ";
chomp(my $primePosition = <STDIN>);

my @primeList;
my $primeListSize = 0;

for (my $value = 2; $primeListSize < $primePosition; $value++) {
	if(&isPrime($value) == 1) {
		push(@primeList, $value);
		$primeListSize = scalar @primeList;
	}
}

sub isPrime {
	my %primeHash;
	my $number = $_[0];
	my $currentLimit = $number;

	for(my $i = 2; $i <= $currentLimit; $i++) {
		if($currentLimit % $i == 0) {
			$currentLimit = $currentLimit / $i;
			$primeHash{$i} = $currentLimit;
			$i = 1;

			#if the number is divisible by something, determine if that something is 
			#the number itself. If not, it is not a prime.

			if(exists $primeHash{$number}) {
				return 1;
			} else {
				return 0;
			}
		}
	}
}

#print the prime at specified position (offset by 1 for 0-based array)
print "The prime that is at position $primePosition is $primeList[$primePosition -1].\n"