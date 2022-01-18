use Properties;

$protein = "SEHLYI";

##length of the sequence
$length = Properties::length($protein);
print "The length of the protein sequence :$length\n";

##hydrophobic content
{
my($tot,$percent) = Properties::hydrobhobic_content($protein);
print "Total number of hydrophobic amino acids: $tot\n";
print "Hydrophobic content : $percent % \n";
}


##hydrophillic content
{
my($tot,$percent) = Properties::hydrophilic_content($protein);
print "Total number of hydrophillic amino acids: $tot\n";
print "Hydrophilic content : $percent % \n";
}

##molecular weight
{
$molecular_weight = Properties::molecular_weight($protein);	
print "the molecular weight of the given peptide: $molecular_weight";
}

