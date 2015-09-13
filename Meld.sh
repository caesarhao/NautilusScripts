#!/bin/bash
command -v meld >/dev/null 2>&1 || { echo >&2 "I require meld but it's not installed.  Aborting."; exit 1; }
if [ -n "$3" ] 
then
	## Third argument is set
	meld "$1" "$2" "$3"
elif [ -n "$2" ] 
then
	## Second argument is set
	meld "$1" "$2" 
elif [ -n "$1" ] 
then
	## First argument is set
	meld "$1"
else
	## No argument is set
	meld 
fi
