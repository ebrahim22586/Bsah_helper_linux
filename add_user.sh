#!/bin/bash
add_user() {
    read -p "Enter username: " username
    if id "$username" &>/dev/null; then
        new_username="${username}_$RANDOM"
        read -p "User exists. New username: $new_username. Proceed? (y/n): " confirm
        if [[ $confirm == "y" ]]; then
            username=$new_username
        else
            exit 1
        fi
    fi

    read -p "Create home directory? (y/n): " create_home
    if [[ $create_home == "y" ]]; then
        useradd -m "$username"
    else
        useradd "$username"
    fi
    echo "User $username added successfully."
}
