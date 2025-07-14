#!/bin/bash
clear
echo "🔐 Password Generator Script"
echo

while true; do 
    read -p "Enter password length: " length
    read -p "How many passwords you want: " number_of_pass

    echo "Please select any hash type:"
    echo "1. MD5"
    echo "2. SHA1"
    echo "3. SHA256"
    echo "4. SHA384"
    echo "5. SHA512"
    read -p "Enter your choice (1-5): " hash_choice

    # Map choice to actual hash name
    case "$hash_choice" in
        1) hash_name="md5" ;;
        2) hash_name="sha1" ;;
        3) hash_name="sha256" ;;
        4) hash_name="sha384" ;;
        5) hash_name="sha512" ;;
        *) echo "❌ Invalid hash choice."; continue ;;
    esac

    # Validate password length
    if [[ -z "$length" || "$length" -eq 0 ]]; then
        echo "❌ Password length should be greater than zero."
        continue
    fi

    # Default number of passwords to 1 if invalid
    if [[ -z "$number_of_pass" || "$number_of_pass" -eq 0 ]]; then
        number_of_pass=1
    fi

    echo -e "\n🔑 Generating $number_of_pass password(s) of length $length with $hash_name:\n"
    
    for p in $(seq "$number_of_pass"); do 
        password=$(openssl rand -base64 48 | tr -d '\n' | cut -c1-"$length")
        hashed=$(echo -n "$password" | openssl dgst -"$hash_name" | awk '{print $2}')
        echo "Password: $password"
        echo "Hash    : $hashed"
        echo "-----------------------------"
    done

    echo
    exit 1;
done
