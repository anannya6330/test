#!/bin/bash

# Read the list of changed objects from standard input
while read oldrev newrev refname; do
  # Get the list of changed files
  changed_files=$(git diff-tree --name-only --diff-filter=ACMRT $oldrev $newrev)

  # Iterate over each changed file
  while read -r file; do
    echo "Changed file: $file"
    # You can perform any desired actions with the changed files here
    # For example, you can extract relevant information or perform checks/validation

  done <<< "$changed_files"

done

