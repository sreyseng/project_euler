#!/usr/bin/perl


print "Please enter a number below which you want to find circular primes: ";
chomp(my $input = <STDIN>);

my @primeList = (2, 3, 5);
for (my $value = 6; $value < $input; $value++) {
	if(&isPrime($value) == 1) {
		push(@primeList, $value);
	}
}

my $totalCircularPrime = 0;
for (my $value = 0; $value < $#primeList + 1; $value++) {
	if(&checkIsPrimeVariations($primeList[$value]) == 1) {
		$totalCircularPrime++;
	}
}

print "There are [$totalCircularPrime] circular primes below [$input].\n";

sub checkIsPrimeVariations {
	my @tempArray = split(//, $_[0]);
	my $length = $#tempArray;
	for(my $i = 0; $i < $length; $i++) {
		my $tempShift = shift(@tempArray);
		push(@tempArray, $tempShift);
		my $tempJoin = join("", @tempArray);
		if(&isPrime(int($tempJoin)) == 0) {
			return 0;
		}
	}
	return 1;
}

sub isPrime {
	my $number = $_[0];
	for(my $i = 0; $i <= sqrt($number); $i++) {
		if($number % $primeList[$i] == 0) {
			return 0;
		}
	}
	return 1;	
}