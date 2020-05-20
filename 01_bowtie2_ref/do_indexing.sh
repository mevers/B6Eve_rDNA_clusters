#!/bin/bash

bowtie2-build \
	--threads 4 \
	../00_ref_sequences/assembly/C57BL_6J_Eve_chromosome.fasta \
	C57BL_6J_Eve_chromosome
