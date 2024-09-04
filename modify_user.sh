#!/bin/bash
modify_user() {
    read -p "Enter username to modify: " username
    usermod "$@"
}
