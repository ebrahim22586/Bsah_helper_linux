#!/bin/bash
delete_group() {
    read -p "Enter group name to delete: " groupname
    groupdel "$groupname"
    echo "Group $groupname deleted."
}
