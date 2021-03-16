# Analysis of TCR clonality upon targetted amplification

## Pipeline outlook 
1. intall tools
We need: 
- R and Rstudio (version >3.6)
- fastQC ( https://www.bioinformatics.babraham.ac.uk/projects/fastqc/ )
- Homebrew (linux and Mac; https://brew.sh/ ) and/or Java (windows only requires java: https://www.oracle.com/java/technologies/javase-downloads.html )
- mixcr ( https://mixcr.readthedocs.io/en/master/ )
- Immunarch R package ( https://immunarch.com/ )
- coffee

2. run fastQC
fastQC will allow you to QC your amplicon reads. I always like to check things before going further. It shows you if you have reminance of sequencing adapters and primers, or bad read quality. See QC script for details to run in batch. 

3. run mixcr
The documentation of the mixcr package is escquisitely annotated in the readthedocs.io! 
Still I made some small script to automate the process (see mixcr script). 

4. analyze mixcr output with immunarch (formely tcR)
Immunarch has improved its game like crazy compared to previous versions of the tool. It also has a very neat quickstart page, and nifty options. 
I made a quick R markdown script for our custom analyis. 

Hope it will help! 
