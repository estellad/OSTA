#!/bin/bash

# Define output directory (where empty directories remain, not main output dir)
OUTPUT_DIR="doc"

# Find all empty directories and delete them, starting from the deepest level
find "$OUTPUT_DIR" -depth -type d -empty -exec rmdir {} \;
