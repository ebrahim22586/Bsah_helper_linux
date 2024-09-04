#!/bin/bash
delete_user() {
    read -p "Enter username to delete: " username
    userdel "$username"
    echo "User $username deleted."
}
