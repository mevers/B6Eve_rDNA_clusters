#!/bin/bash

# Download FASTA file
curl -O ftp://ftp.jax.org/b6eve/C57BL_6J_Eve_contig.fasta


# Index FASTA
samtools faidx C57BL_6J_Eve_contig.fasta
