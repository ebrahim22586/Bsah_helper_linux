#!/bin/bash

source ./add_user.sh
source ./modify_user.sh
source ./delete_user.sh
source ./add_group.sh
source ./modify_group.sh
source ./delete_group.sh
source ./show_user_data.sh
source ./change_passwd.sh

echo "Choose an option:"
echo "1 - Add User"
echo "2 - Modify User"
echo "3 - Delete User"
echo "4 - Add Group"
echo "5 - Modify Group"
echo "6 - Delete Group"
echo "7 - Show User Data"
echo "8 - Change Password"
read -p "Enter option number: " option

case $option in
    1) add_user ;;
    2) modify_user ;;
    3) delete_user ;;
    4) add_group ;;
    5) modify_group ;;
    6) delete_group ;;
    7) show_user_data ;;
    8) change_passwd ;;
    *) echo "Invalid option" ;;
esac
