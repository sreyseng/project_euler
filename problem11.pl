#!/usr/bin/perl

my @array;

open (MYFILE, 'problem11_file.pl');
while(my $line = <MYFILE>) {
	chomp($line);
	my @split = split(/ /,$line);
	push(@array, \@split);
}

my $max = 0;
my @number;