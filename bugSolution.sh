#!/bin/bash

# Improved script with error handling
file_to_process="my_file.txt"

# Check if the file exists before processing
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found."
exit 1
fi

while IFS= read -r line; do
  # Check for empty lines or lines starting with '#'
  if [[ -z "$line" || "$line" == "#"* ]]; then
    continue  # Skip empty lines and comments
  fi
  # Process the line (this is a placeholder for your actual processing)
  echo "Processing: $line"
done < "$file_to_process"