#!/bin/bash
# Creates an archive of each directory in the current dir. 

for dir in */
do
  base=$(basename "$dir")
  datestr=$(date +"%F")
  tar -czf "${base}-${datestr}.tar.gz" "$dir"
done
