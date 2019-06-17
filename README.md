# clean-directory
This is a little utility to list and remove specific file types from a directory.

It has three functions, which are:

- Check a directory for all unique file extensions it contains.
- List all files with the extensions specified in source, essentially a dry-run.
- Remove all files with the matched extensions

Edit the array $filetypes to modify the file extensions to search for.

## Usage 
#### ./cleanDirectory.sh \<target directory> \<action>

1. ./cleanDirectory.sh repository/ check
2. ./cleanDirectory.sh repository/ list
3. ./cleanDirectory.sh repository/ remove
