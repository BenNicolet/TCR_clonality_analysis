### Ben Nicolet 16-03-2021
### b.nicolet@sanquin.nl


cd /home/ben/Analysis/TCR_analysis/raw_fastq/Rosa/

for f in *.fastq
do
    prefix="${f%.fastq}"

mixcr analyze amplicon \
	-s HomoSapiens \
	--starting-material dna \
	--5-end v-primers \
	--3-end j-primers \
	--adapters adapters-present \
	./${f} ./mixcr_output/${prefix}

done
