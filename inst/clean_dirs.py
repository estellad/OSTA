import os

# Define output directory (where to search for empty directories)
output_dir = "."

# Walk through directory tree from bottom up
for dirpath, dirnames, filenames in os.walk(output_dir, topdown=False):
    # Check if current directory is empty and is not root output directory
    if not dirnames and not filenames and dirpath != output_dir:
        print(f"Removing empty directory: {dirpath}")
        os.rmdir(dirpath)
