#!/bin/bash
if [[ -z "$1" ]]
then
	machines="1-12"
else
	machines=$1
fi
dsh -c -m `./machines.py $machines` "`./commands.sh on`"
dsh -c -m `./machines.py $machines` "`./commands.sh sleep`"
