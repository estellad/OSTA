#!/bin/bash

# Define output directory
OUTPUT_DIR="docs"

# Find all empty directories and delete them, starting from the deepest level
find "$OUTPUT_DIR" -depth -type d -empty -exec rmdir {} \;
