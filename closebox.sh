#!/usr/bin/bash

# This script cleanups all files in the lab machine's directory after you complete the lab.

read -p "Enter Lab (pg oscp htb vulnhub thm pta) :" labname
if [[ -d $HOME/$labname ]]
then

    read -p "Enter Directory Name: " boxname
    mv $HOME/tmux-history-$boxname* $HOME/$labname/$boxname/logs/ 2>/dev/null
    mv $HOME/Pictures/* $HOME/$labname/$boxname/screenshots 2>/dev/null
    
else
        echo "No lab name exits"
fi
