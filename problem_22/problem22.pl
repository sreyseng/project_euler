#!/usr/bin/perl

use 5.010;
use strict;
use warnings;


my %alphabet_hash = (
"A" => 1,
"B" => 2,
"C" => 3,
"D" => 4,
"E" => 5,
"F" => 6,
"G" => 7,
"H" => 8,
"I" => 9,
"J" => 10,
"K" => 11,
"L" => 12,
"M" => 13,
"N" => 14,
"O" => 15,
"P" => 16,
"Q" => 17,
"R" => 18,
"S" => 19,
"T" => 20,
"U" => 21,
"V" => 22,
"W" => 23,
"X" => 24,
"Y" => 25,
"Z" => 26
);
my $data_file = "names.txt";
open(FILE, $data_file) || die("Could not open file! Ensure that file $data_file exists in working directory...");my $blob = <FILE>;close(FILE);
$blob =~ s/"//g;
my @names_array = split(',', $blob);
@names_array = sort(@names_array);
my $count = 1;
my %name_hash;foreach my $name (@names_array) {
    $name_hash{$count} = $name;
    $count++;}

my @colin = ("C", "O", "L","I", "N");
print "@colin";
my $sum = 0;
foreach my $letter (@colin) {
    $sum = $sum + $alphabet_hash{$letter};}
print $sum;