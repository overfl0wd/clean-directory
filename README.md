# clean-directory
This is a little utility to list and remove specific file types from a directory.

It has three functions, which are:

- Check a directory for all unique file extensions it contains.
- List all files with the extensions specified in source, essentially a dry-run.
- Remove all files with the matched extensions

Edit the array $filetypes to modify the file extensions used in list and remove.

## Usage 
#### ./cleanDirectory.sh \<target directory> \<action>
Example 1: ./cleanDirectory.sh repository/ check

Example 2: ./cleanDirectory.sh repository/ list

Example 2: ./cleanDirectory.sh repository/ remove

