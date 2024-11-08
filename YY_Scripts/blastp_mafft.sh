#!/bin/bash

# Make sure the tsv file has sequence name in the first coloumn and AA sequence in the second

input_file="input.tsv" # Replace with the name of your .tsv file
output_file="cyclase_library.fasta" # Name of the output .fasta file

# Remove any existing output file to avoid appending to an old file
rm -f "$output_file"

# Read the input .tsv file line by line
while IFS=$'\t' read -r name seq
do
    # Write the fasta header and sequence to the output file
    echo ">${name}" >> "$output_file"
    echo "${seq}" >> "$output_file"
done < "$input_file"

# Run MAFFT protein alignment
echo "Running MAFFT protein alignment..."
mafft --auto cyclase_library.fasta > aligned_cyclase_library.fasta

# Run IQ-TREE 2 to generate a phylogenetic tree
echo "Running IQ-TREE 2 to generate a phylogenetic tree..."
iqtree-2.2.0-MacOSX/bin/iqtree2 -s aligned_cyclase_library.fasta -m MFP -bb 1000 -alrt 1000

echo "Phylogenetic tree construction completed. The results are in the file 'aligned_top_hits.fasta.treefile'."