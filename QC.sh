### Ben Nicolet 16-03-2021
### b.nicolet@sanquin.nl


###### This scripts will run fastqc on all files in the indicated folder ######

# change to the directory where the raw fastq files are :
cd /path-to-files/


## calling fastqc, with 22 threads ("processors"), -f is file type (here fastq), -o is for output directory.
fastqc -t 22 -f fastq *.fastq -o /path-to-output/QC/
