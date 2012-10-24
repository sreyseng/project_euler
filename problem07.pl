#!/usr/bin/perl

print "Please enter a N(th) position of the prime number you are looking for: ";
chomp(my $primePosition = <STDIN>);

my @primeList = (2, 3, 5);

for (my $value = 2; $#primeList < $primePosition; $value++) {
	if(&isPrime($value) == 1) {
		push(@primeList, $value);
	}
}

sub isPrime {
	my $number = $_[0];

	for(my $i = 0; $i <= sqrt($number); $i++) {
		print $i . " ";
		if($number % $primeList[$i] == 0) {
			print "\n";
			return 0;
		}
	}
	
	return 1;	
}

#print the prime at specified position (offset by 1 for 0-based array)
print "The prime that is at position $primePosition is $primeList[$primePosition -1].\n"