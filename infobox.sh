#!/bin/bash

#creating a infobox with dialog and ncurses
#global vaiables / default values

INFOBOX=${INFOBOX=dialog}
TITLE="Default"
MESSAGE="BLEH BLEH BLEH"
XCOORD=10
YCOORD=20

#funtion declarations

#display the infobox and our message
funcDisplayInfobox () {
  $INFOBOX --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5"

}

# function declarations - stop 

#script - start 

if [ "$1" == "shutdown" ]; then
   funcDisplayInfobox "Warning!" "We are shutting down" "11" "21" "5"
   echo "shutting down"
else 
funcDisplayInfobox "Information" "no fun man" "11" "12" "5"
echo "not doing anything"
fi

sleep 30

#script - stop


