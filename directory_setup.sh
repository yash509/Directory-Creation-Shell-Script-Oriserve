#!/bin/bash

# Define the base directory for projects
base_dir="projects"

# List of project directories and their subdirectories
declare -A directories
directories=(
    ["facebook"]=""
    ["google"]="oriserve"
    ["meta"]="oriserve"
    ["oracle"]=""
)

# Create the base directory if it doesn't exist
mkdir -p "$base_dir"

# Create project directories and their 'oriserve' subdirectories if specified
for project in "${!directories[@]}"; do
    # Create the project directory
    mkdir -p "$base_dir/$project"

    # If 'oriserve' is specified, create the 'oriserve' subdirectory
    if [ -n "${directories[$project]}" ]; then
        mkdir -p "$base_dir/$project/${directories[$project]}"
    fi
done

# Find 'oriserve' directories and create 'test.txt' in each
find "$base_dir" -type d -name 'oriserve' | while read -r dir; do
    touch "$dir/test.txt"
    echo "Created 'test.txt' in $dir"
done

echo "Directory setup and file creation completed."
