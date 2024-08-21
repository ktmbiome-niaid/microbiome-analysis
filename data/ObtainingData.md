# Obtaining Data for Today's Analysis

I am utilizing publicly available data for this training and wanted to provide the steps I used to find, download and prepare the data that we will be using today.

1. Find a paper that you would like to analyze (this can be non-trivial and you may return to this step many times). For the training, I used the paper published here^[https://pubmed.ncbi.nlm.nih.gov/33144313/] and also here^[https://journals.asm.org/doi/full/10.1128/msystems.00834-20]. The citation is:

> Manus MB, Kuthyar S, Perroni-Marañón AG, Núñez-de la Mora A, Amato KR. Infant Skin Bacterial Communities Vary by Skin Site and Infant Age across Populations in Mexico and the United States. mSystems. 2020 Nov 3;5(6):e00834-20. doi: 10.1128/mSystems.00834-20. PMID: 33144313; PMCID: PMC7646528.

2. Read the paper and find an accession number, typically included as errata at the end of the manuscript. The accession number for this paper is `PRJNA669115` and can be found in the `Data Availability` section.

3. Visit the Sequence Read Archive website (https://www.ncbi.nlm.nih.gov/sra) and search for the accession number. A list of samples associated with that accession number will appear.

4. In the upper-right corner, click on `Send to:` then make sure the `File` radio button is highlighted, then in the "Format" drop-down select `Accession List`. Click `Create File`. This will download a csv file to your preferred location containing the accession numbers needed for later.

5.  Install or load SRA tool kit. I typically set this up on an HPC and have a batch script that I submit to perform the download. If you're on an HPC, create a TXT file and copy in the full accession list.

An example batch script run on Biowulf:

``` bash
module load sratoolkit
file_dir="/my/data/dir"
#ensure that this directory includes the accession list
cd $file_dir
mkdir -p $file_dir/SRA_file_output/

cat full_accession_list.txt > $file_dir/SRA_file_output/biosample_list

cd $file_dir/SRA_file_output/

mkdir -p raw_files

while read ii; do
  fasterq-dump -t /lscratch/$SLURM_JOBID $ii -O $file_dir/SRA_file_output/
  mv *_*.fastq raw_files/
  rm *.fastq ## removes unmated reads
done < biosample_list

## This code allows for multiple files to be gzip'd at once
ls raw_files/*.fastq | parallel -j $SLURM_CPUS_PER_TASK "gzip {}"

# OR

## This line will compress one file at a time.
gzip raw_files/*.fastq
```

Here, I have a file called `full_accession_list.txt` that I then put into another file called `biosample_list`. If I don't want to use all samples in my accession list, I can take smaller chunks using bash code but still preserving the original full list. I then use the fasterq-dump function from SRA Toolkit to download the file, followed by using `gzip` to compress the resulting files.

6. The resulting files can then be uploaded and analyzed by Nephele using your preferred pipeline. Nephele has [tutorials](https://nephele.niaid.nih.gov/user_guide/) that can guide you through this process.

7. Download results

8. Obtain metadata about samples by returning to SRA and clicking on the "Run Selector" this time. This will provide a table of variables and data provided by the authors when the sequence data was published. This paper is exceptionally unique in that the authors provided the metadata as part of their supplemental materials.
