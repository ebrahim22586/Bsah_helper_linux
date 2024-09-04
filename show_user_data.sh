#!/bin/bash
show_user_data() {
    read -p "Enter username to show data: " username
    grep "^$username:" /etc/passwd | awk -F: '{print "User: "$1"\nUID: "$3"\nGID: "$4"\nHome: "$6"\nShell: "$7}'
    chage -l "$username"
}
