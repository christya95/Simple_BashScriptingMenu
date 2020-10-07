#!/bin/bash
echo "Select an option"
echo " "
echo "1. Display total number of vehicles"
echo "2. Display a specific make of car"
echo "3. Display the vehicle records in sorted order"
echo "4. Exit"
echo " "
echo "Choose your option....."
read choice

case $choice in
1) echo "The total number of Vehicles is: "
echo `wc -l JOSUA_991580165_vehicle.db`
echo " "
sh JOSUA_991580165_script.sh
;;
2)echo "Please enter make:"
read make
echo "The following with the specified make $make are below: "
echo `egrep -w $make JOSUA_991580165_vehicle.db`
echo " "
sh JOSUA_991580165_script.sh
;;
3)echo "The following are the vehicles sorted in order: "
echo `sort -n JOSUA_991580165_vehicle.db`
echo " "
sh JOSUA_991580165_script.sh
;;
4) echo "Exiting Script..."
echo " "
exit;;
*) echo "Invalid entry, please try again!"
echo " "
sh JOSUA_991580165_script.sh;;

esac
