#!/usr/bin/bash

read -p "Enter Lab (pg oscp htb vulnhub thm pta) :" labname
if [[ -d $HOME/$labname ]]
then
    
    read -p "Enter Directory Name :" dirname
    if [[ ! -d $HOME/$labname/$dirname ]]
    then
        echo "Creating now..."
        mkdir /home/iptracej/pg/$dirname
        echo "Directory created"
	cd /home/iptracej/pg/$dirname
	mkdir nmap
	mkdir autorecon
	mkdir logs
	mkdir screenshots
	mkdir privesc
	mkdir poi
	mkdir searchsploit
	mkdir post
	    
	read -p "Enter Target IP Address: " ip
	echo $ip > target.txt
	    
    else
        echo "Directory exists"
    fi
else
    echo "No lab name exits"
fi
