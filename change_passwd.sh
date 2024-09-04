#!/bin/bash
change_passwd() {
    read -p "Enter username to change password: " username
    passwd "$username"
}
