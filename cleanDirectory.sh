#!/bin/bash

if [ $# -lt 2 ]
then
        echo -e "\e[91mNot enough arguments supplied"
        echo -e "\e[93mUsage:" $0 "<target directory> <action>"
        echo -e "Example 1:" $0 "phoenix/ check     # this displays all filetypes found in supplied directory"
	echo -e "Example 2:" $0 "phoenix/ list      # this lists all files with matched extensions"
	echo -e "Example 2:" $0 "phoenix/ remove    # this purges the directory of said files"
	exit 1
fi

### Modify this array appropriately!
### These are the filetypes that will be listed or purged
filetypes=(".exe" ".gif" ".GIF" ".css" ".png" ".htm" ".html")

case "$2" in

### Find all unique filetypes in the directory
"check") echo -e "\n### Checking" $1 "for all unique filetypes... \n"
        find $1 -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' | sort -u
	echo -e "\n\e[92m### Done checking! \n" ;;

### List all files (absolute path) with matched extensions
"list") echo -e "\n### Compiling list of matched files in" $1 "... \n"
	for type in ${filetypes[@]}
	do
		echo -e "\n### Listing all" $type "files in" $1 "... \n"
		find $1 -name *$type
	done
	echo -e "\n\e[92m### Done listing! \n" ;;

### Delete all files with matched filetypes
"purge") echo -e "\nm### Starting purge of defined filetypes in" $1 "... \n"
	for type in ${filetypes[@]}
	do
		echo -e "\n### Deleting" $type "files from" $1 "... \n"
        	find $1 -name *$type -exec rm {} \;
	done
	echo -e "\n\e[92m### Done purging! \n" ;;

*)	echo -e "\n\e[91m### Incorrect arguments supplied, please check the examples... \n" ;;
esac

