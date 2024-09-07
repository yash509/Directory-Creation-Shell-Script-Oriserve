#!/bin/bash

# Define the base directory for projects
base_dir="projects"

# List of project directories
projects=("facebook" "google/oriserve" "meta/oriserve")

# Create the base directory if it doesn't exist
mkdir -p "$base_dir"

# Create project directories and subdirectories
for project in "${projects[@]}"; do
    mkdir -p "$base_dir/$project"
done

# Create a test.txt file in each 'oriserve' directory
find "$base_dir" -type d -name 'oriserve' | while read -r dir; do
    touch "$dir/test.txt"
    echo "Created 'test.txt' in $dir"
done

echo "Directory setup and file creation completed."
