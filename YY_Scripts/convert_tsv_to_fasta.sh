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