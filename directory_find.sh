#!/bin/bash

# Define the base directory for projects
base_dir="projects"

# Find all 'oriserve' directories under the base directory
find "$base_dir" -type d -name 'oriserve' | while read -r dir; do
    # Create the 'test.txt' file with the content 'oriserve'
    echo 'oriserve' > "$dir/test.txt"
    echo "Created 'test.txt' in $dir"
done

echo "File creation in 'oriserve' directories completed."
