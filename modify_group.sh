#!/bin/bash
modify_group() {
    read -p "Enter group name to modify: " groupname
    groupmod "$@"
}
