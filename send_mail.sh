#!/bin/bash
clear
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "Please provide all three arguments."
    echo
    echo "Please run this script from main terminal. and avoid vs_code terminal"
    echo
    echo "Usage: $0 <email_address> <subject> <body>"
    echo "Example: $0 jondoe12@gmail.com 'Hello' 'This is a test email.'"
    exit 1
fi
echo "This script sends an email with the specified subject and body."
echo
# if [[ "$1" =~ ^[a-zA-Z0-9]+@gmail\.com$]]; then
if [[ "$1" =~ ^[a-zA-Z0-9]+@gmail\.com$ ]]; then
    echo "Sending email to $1 with subject:'$2' and body:'$3'..."
    # echo "$3" | mail -s "$2" "$1"
    # echo "$3" | msmtp --subject="$2" "$1" 

    # {
    #   echo "To: $1"
    #   echo "Subject: $2"
    #   echo
    #   echo "$3"
    # } | msmtp "$1"

     # Dynamically find msmtp (safer in VS Code)
    # MSMTP=$(command -v msmtp)
    MSMTP="/usr/bin/msmtp"


    # if [[ -z "$MSMTP" ]]; then
    #     echo "Error: msmtp is not installed or not in PATH."
    #     exit 1
    # fi

    {
      echo "To: $1"
      echo "Subject: $2"
      echo
      echo "$3"
    } | "$MSMTP" "$1"

    # Check if sending failed
    if [[ $? -ne 0 ]]; then
        echo "❌ Failed to send email."
        exit 1
    else
        echo "✅ Email sent successfully."
    fi
    exit 1;
else
    echo "Invalid email address. Please use a valid Gmail address."
    exit 1
fi
