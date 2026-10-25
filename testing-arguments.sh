#!/bin/bash

#from the execution..i will pass arguments... 

echo "Arguments passsed are: $@"
echo "no. of args passed: $#"

echo "word by word argugemnts taken: $0"

echo "file name: $0"
echo "dir name of the script: $PWD"

echo "dirname of realpath: $(realpath $0)"

echo "======== create a file with arguments ========="

#touch "$@.txt" only for the last argument  .txt was added...., but for remaining it does not added.

echo " ----- using for loop for creating ----- " 

for files in $@
do 
	touch $files.txt
done

echo "======== files are created ============"

echo "== == = = following are the files created == = == = ="
ls -l 

echo "------- using the same script removing .txt files ---------- "


for files in $@
do 	
	rm -rf $files.txt
done

echo "verifying the in the following: "
ls -l 

