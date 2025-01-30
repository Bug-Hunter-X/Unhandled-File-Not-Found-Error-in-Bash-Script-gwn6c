#!/bin/bash

# This script attempts to read a file and process its contents.
# However, it contains an error that may cause unexpected behavior.

file_to_process="my_file.txt"

# Attempting to read the file using "cat" and process each line.
while IFS= read -r line; do
  # Check for empty lines or lines starting with '#'
  if [[ -z "$line" || "$line" == "#"* ]]; then
    continue  # Skip empty lines and comments
  fi
  # Process the line (this is a placeholder for your actual processing)
  echo "Processing: $line"
done < "$file_to_process"

# If the file doesn't exist, the script continues without an error,
# and the 'while' loop does not execute causing an unexpected behavior.

# Added error handling below
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found."
exit 1
fi