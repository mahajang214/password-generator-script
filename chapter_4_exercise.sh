#!/bin/bash
clear
echo "This is chapter_4_exercise.sh script"
echo
echo "List of all users currently logged in:"
#  who | cut -d ' ' -f1 | sort -u
# loginctl list-users
ps -eo user= | sort | uniq
echo
echo "Changing directory to /etc"
cd /etc
echo "Lines starting with daemon :"
grep 'daemon'* /etc/group
echo 
echo "Displaying local information from /etc/hosts :"
grep -n "localhost" /etc/hosts | cat /etc/hostname
echo "Total occurrences:" $(grep -o "localhost" /etc/hosts | wc -l)

echo 
echo "Information about shell : $SHELL"
echo "Bash version information: $(/bin/bash --version | head -n 1)"
echo 

echo "Total README Files in this directory:"
find /usr/share/doc -name 'README*' | wc -l

echo
echo "This directories changed in last 10hr ago:"
find $HOME -type d -mmin -600 2>/dev/null | wc -l

echo 
echo "List local disk devices: "
if [ -f /etc/fstab ]; then
    echo "File /etc/fstab exists."
else
    echo "File /etc/fstab does not exist."
fi
echo
echo

if cd /etc; then
    if [ -f passwd ]; then
        echo "File 'passwd' exists in /etc directory."
        echo "Displaying users password line : $(grep ^gaurav passwd)" 
        echo
    else
        echo "File 'passwd' does not exist in /etc directory."
    fi
    
else
    echo "Failed to change directory to /etc. Please check if the directory exists."
fi

echo "Exercise is complete."