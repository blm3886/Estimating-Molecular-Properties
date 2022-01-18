use sequence_information;

##openning the file contaning FASTA sequence
print "Enter the name of FASTA file:";
chomp($file_name = <STDIN>);

@N;
open (DATA,"<$file_name.txt") || die("Count not open file");
while(<DATA>){
	$Line = $_;
	while($Line =~/\w/g){ 	## storing each nucletide in array 
	push(@N,$&);
 	}
 }
 	
close(DATA); 	

## calling the sub routine from the module 
$result = sequence_information::CG_Content(@N);
print "\nThe total G-C content is : $result %\n";



