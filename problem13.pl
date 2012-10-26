#!/usr/bin/perl

my @numbers;
open(MYFILE, 'problem13_file.pl');
while(my $line = <MYFILE>) {
	chomp($line);
	push(@numbers, $line);
}
my $total = 0;
foreach (@numbers) {
	$total += $_;
}

printf("%s\n", "$total");