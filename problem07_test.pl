#!/usr/bin/perl

print "Please enter a N(th) position of the prime number you are looking for: ";
chomp(my $primePosition = <STDIN>);

my @primeList = (2,3);
my $primeListSize = scalar @primeList;

# for(my $i = 6; $#primeList < $primePosition;$i+=6){

# 	my $a = $i - 1;
# 	my $b = $i + 1; 
# 	if(isPrime($a)){
# 		push(@primeList, $a);
# 		print $a . "\n";
# 	}

# 	if(isPrime($b)){
# 		push(@primeList, $b);
# 		print $b . "\n";
# 	}

# }

print "The prime of position " . $primePosition . " is " . nthPrime($primePosition) . "\n";

sub nthPrime {
	my $findPrime = shift;
	my $num = shift || 5;
	my $list = shift || [2, 3];
	while(1){
		my $next = 0;
		for($i = 0; $list->[$i] <= sqrt($num); $i++){
			if(!($num % $list->[$i])){ 
				$num = $num + 2;
				$next = 1;
				last;
			}
		}

		if($next){ next; }
		else{ last; }
	}

	if($findPrime >= @$list){
		push(@$list, $num);
		nthPrime($findPrime, $num + 2, $list);
	}else{
		return $list->[$findPrime - 1];
	}
}