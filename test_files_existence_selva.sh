#!/bin/bash
# 1. Define directories as environmemt variables in the terminal
# $fastq_dir_GBS $fastq_dir_GBS_IPK $fastq_dir_wes
# 2. Checking file existence
tail -n +2 metadata_final | cut -f18,19 |
while IFS=$'\t' read -r fastq_dir fastq_file; do
        if [[ "$fastq_dir" == '$fastq_dir_GBS_IPK' ]]; then
          directory="$fastq_dir_GBS_IPK"
        elif [[ "$fastq_dir" == '$fastq_dir_wes' ]]; then
          directory="$fastq_dir_wes"
        else
        echo "directory in millo"
        fi
        IFS=';' read -ra  files <<< "$fastq_file"
        for files in "${files[@]}"; do
        if [ -f "$directory/${files[$i]}" ]; then
        echo "file exists"
        else 
        echo "$fastq_file is in millo" 
        fi
        done
done
