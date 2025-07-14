#!/bin/bash
clear
echo "Chapter 5 exercise program started"
echo
echo "Printing .sh files in current directory:"
# ls | find . -type f -name "*.sh" |  grep -v "^./" 
ls | grep "\.sh$" | nl
echo 
echo "Make a list of files in /usr/bin that have the letter "a" as the second character:"
cd /usr/bin 
# find . -type f | grep "^.a" | nl
tempData=`find . -maxdepth 1 -type f -printf "%f\n" | grep '^.a' | awk '{ print NR, $0 }' `
echo -e "Running command: \n $tempData"
echo "Transferring data to $HOME/Documents and create a file called bash_temp.txt"
cd $HOME/Documents
touch bash_temp.txt
# echo "$tempData" > bash_temp.txt
printf "%s\n" "$tempData" > bash_temp.txt


echo "Deleting Three lines from bash_temp.txt file"
# sed -e '1d' -e '2d' -e '3d' bash_temp.txt
# sed '1,3d' bash_temp.txt
sed -i '1,3d' bash_temp.txt

echo "bash_temp.txt file content after deleting three lines: "
cat bash_temp.txt
echo 

# awk '{ print NR, $0 }'  = nl
echo "current directory is: $(pwd)"
echo
echo "Exercise is completed"
