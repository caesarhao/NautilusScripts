#!/bin/bash
if [ -n "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" ]; then
	set $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
	for I in $@
	do
		if [ ! -d $I ]; then
			echo " "
		else
			zenity --error --title="Error - OpenGedit" \
   				--text="You can only open files with Gedit."
			exit 1
		fi
	done
else
	zenity --error --title="Error - OpenGedit" \
   		--text="You can only open files."
	exit 1
fi
gedit $@
