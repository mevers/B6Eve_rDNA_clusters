#!/bin/bash

assembly="../../00_ref_sequences/assembly/C57BL_6J_Eve_contig.fasta"
rDNA="../../00_ref_sequences/rDNA_GenBank/BK000964.3.fa"

for fn in *.bed; do

	id=${fn%bed}
	id=${id/rDNA_start_/}

	bedtools getfasta \
		-s \
		-fi $assembly \
		-bed $fn \
		-fo tmp.fa

	cat $rDNA tmp.fa > putative_${id}fa
	rm -f tmp.fa

done
