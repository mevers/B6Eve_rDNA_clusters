#!/bin/bash

# conda install -c bioconda pygenometracks

regions=(
	"NOT_SCAFFOLDED_NGS_utg33515:1-45,000"
	)
ext=("pdf" "png")

for reg in ${regions[@]}; do
	fn=${reg/:/_}
	fn=${fn//,/}
	for e in ${ext[@]}; do
		pygenometracks \
			--tracks tracks.ini \
			--region $reg \
			--dpi 150 \
			--outFileName $fn.$e
	done
done
