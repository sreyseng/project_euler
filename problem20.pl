#!/usr/bin/perl

# print "Please enter a number: ";
# chomp(my $number = <STDIN>);

# my $total = 1;
# for(my $i = $number; $i >=2; $i--) {
# 	$total = $total * $i;
# }
# printf("%f", $total);
# print "\n";
#number obtained from: http://www.calculatorsoup.com/calculators/discretemathematics/factorials.php
my @totalSplit = split(//, "93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864");
print @totalSplit;
my $sum = 0;
for(my $i = 0; $i <= $#totalSplit; $i++) {
	$sum += $totalSplit[$i];
}

print "Total: $total; \nSplit: @totalSplit; \nSum: $sum\n";