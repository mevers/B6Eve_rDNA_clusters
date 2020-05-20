library(Biostrings)
library(tidyverse)

fa <- readDNAStringSet("C57BL_6J_Eve_contig.fasta")

data.frame(size = width(fa) / 1000) %>%
	ggplot(aes(size)) +
	geom_histogram(bins = 100) +
	theme_minimal() +
	scale_x_log10() +
	labs(
		title = "C57BL_6K_Eve reference assembly",
		subtitle = sprintf("Number of contigs: %i", length(fa)),
		x = "Size of contig in kb", y = "Count")
ggsave("hist_contig_size.pdf", height = 6, width = 8)
ggsave("hist_contig_size.png", height = 6, width = 8)
