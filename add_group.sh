#!/bin/bash
add_group() {
    read -p "Enter group name: " groupname
    if getent group "$groupname" >/dev/null; then
        new_groupname="${groupname}_$RANDOM"
        read -p "Group exists. New group name: $new_groupname. Proceed? (y/n): " confirm
        if [[ $confirm == "y" ]]; then
            groupname=$new_groupname
        else
            exit 1
        fi
    fi
    groupadd "$groupname"
    echo "Group $groupname added successfully."
}
