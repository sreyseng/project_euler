#!/usr/bin/perl

print "Please enter a number: ";
chomp(my $input = <STDIN>);

my @primeList = (2, 3, 5);
my $sum = 0;

for (my $value = 6; $value < $input; $value++) {
	if(&isPrime($value) == 1) {
		push(@primeList, $value);
	}
}


foreach (@primeList) {
	$sum += $_;
}

print "$sum\n";

sub isPrime {
	my $number = $_[0];

	for(my $i = 0; $i <= sqrt($number); $i++) {
		if($number % $primeList[$i] == 0) {
			return 0;
		}
	}
	return 1;	
}