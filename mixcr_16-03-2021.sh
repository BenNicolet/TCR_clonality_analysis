### Ben Nicolet 16-03-2021
### b.nicolet@sanquin.nl


###### This scripts will run mixcr on all files in the indicated folder ######

# change to the directory where the raw fastq files are :
cd /path-to-files/

# now making a function to run mixcr file by file 
for f in *.fastq
do
    prefix="${f%.fastq}"

mixcr analyze amplicon \
	-s HomoSapiens \ # species
	--starting-material dna \ # we use DNA amplicons
	--5-end v-primers \ # we have v and j primers
	--3-end j-primers \
	--adapters adapters-present \ # Fastqc revealed left over sequencing primers, so we tell it to mixcr.
	./${f} ./mixcr_output/${prefix} ## structure is " INPUT_FILE OUTPUT_PREFIX "

done
# Und voila : )
