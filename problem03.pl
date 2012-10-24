#!/usr/bin/perl

print "Please enter a number: ";
chomp(my $number = <STDIN>);

my %primeHash;
my @primeList;
my $currentLimit = $number;

#http://math.about.com/od/prealgebra/ht/How-To-Find-Out-If-A-Number-Is-Prime-Use-Factorization.htm
for(my $i = 2; $i <= $currentLimit; $i++) {
	if($currentLimit % $i == 0) {
		$currentLimit = $currentLimit / $i;
		$primeHash{$i} = $currentLimit;
		print $currentLimit . "\n";
		$i = 1;
	}
}
print "\n";
foreach $key (keys %primeHash) {
	push(@primeList, $key);
	printf("%10s => $primeHash{$key}\n", "$key");
}
print "\n";
@primeList = sort { $a <=> $b } @primeList;
print "The primes for ($number) is (@primeList).\n";

