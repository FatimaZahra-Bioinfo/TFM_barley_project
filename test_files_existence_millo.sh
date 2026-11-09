#!/bin/bash
# 1. Define directories as environmemt variables in the terminal
# $fastq_dir_GBS $fastq_dir_GBS_IPK $fastq_dir_wes
# 2. Checking file existence
tail -n +2 metadata_final | cut -f18,19 |
while IFS=$'\t' read -r fastq_dir fastq_file; do
        if [[ "$fastq_dir" == '$fastq_dir_GBS' ]]; then
          directory="$fastq_dir_GBS"
        else
        echo "directory in selva"
        fi

        if [ -f "$directory/$fastq_file" ]; then
        echo "file exists"
        else 
        echo "$fastq_file is in selva" 
        fi
done



