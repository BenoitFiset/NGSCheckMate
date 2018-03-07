#!/bin/bash
set -e

# patterngenerator test
./patterngenerator/makesnvpattern.pl tests/SNP_GRCh37_hg19_woChr_21part.bed tests/GRCh37_21part.multi.fa tests/GRCh37_21part tests out

# ngscheckmate_fastq test for the pattern file
./ngscheckmate_fastq -1 tests/test_21part.fastq tests/out.pt

# remove test pattern files
rm tests/out*

set +e
