# !/bin/bash -xev
clear
echo "This is one.sh script"
echo 
echo "Hello, $USER"
echo
echo "Current date and time: `date`"
echo "Current user: $USER"
echo "Current shell: $SHELL"
echo "Current working directory: $(pwd)"
echo "Current hostname: $(hostname)"
echo "Current user ID: $UID"
echo "Home directory: $HOME"
# cd $HOME
# ls -l | grep -i 'r--' | awk '{print $9}'
# echo "Current working directory: $(pwd)"
echo

# bottom set -x or +x is debugging mode in blocks -x=starst debuging +x=ends debugging
# set -x
echo "Executing some commands..."
# set +x
echo "Script execution completed."