# docker-blast
Docker container with BLAST+

[![Docker Repository on Quay](https://quay.io/repository/fhcrc-microbiome/blast/status "Docker Repository on Quay")](https://quay.io/repository/fhcrc-microbiome/blast)

```
usage: run.py [-h] --query QUERY --subject SUBJECT --output-aln OUTPUT_ALN
              [--outfmt OUTFMT] --output-log OUTPUT_LOG
              [--blast-type BLAST_TYPE] [--threads THREADS]
              [--temp-folder TEMP_FOLDER]

Run BLAST on a pair of FASTA files.

optional arguments:
  -h, --help            show this help message and exit
  --query QUERY         Location for 'query' input file. (Supported: local
                        path, s3://, or ftp://).
  --subject SUBJECT     Location for 'subject' input file. (Supported: local
                        path, s3://, or ftp://).
  --output-aln OUTPUT_ALN
                        URL for output alignment file (local path, or S3://).
  --outfmt OUTFMT       Output format for BLAST.
  --output-log OUTPUT_LOG
                        URL for output log file (local path, or S3://).
  --blast-type BLAST_TYPE
                        Type of BLAST to run (e.g. blastn, blastp).
  --threads THREADS     Number of threads to use assembling.
  --temp-folder TEMP_FOLDER
                        Folder used for temporary files.
```
