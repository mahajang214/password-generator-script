#!/bin/bash
echo 
echo "Package installer script"
echo
# Read the OS info from /etc/os-release
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
     PRETTY="$PRETTY_NAME"
     cat /etc/os-release
else
    echo "Cannot detect operating system."
    exit 1
fi
echo "OS:$PRETTY"
# while true
# do
#     read -p "Which package you want to install : " package_name
#     echo "You have selected to install: $package_name"


#     # Here you can add the installation command for the selected package
# done
