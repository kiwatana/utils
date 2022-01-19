#!/usr/bin/bash

# This script copies tools, and link to the links to Linux privilege escalation. 

if [ "$1" = "-r" ] ; then

    dir="privesc"
    
    if [[ -d $PWD/$dir ]]
    then
	rm -rf $PWD/$dir/*
    fi
    dir="post"
    if [[ -d $PWD/$dir ]]
    then
	rm -rf $PWD/$dir/*
    fi
    exit
  
else
    
    dir="privesc"

    if [[ -d $PWD/$dir ]]
    then
	cp /opt/privesc/linux/LinEnum/LinEnum.sh $dir
	cp /opt/privesc/linux/linux-smart-enumeration/lse.sh $dir
	cp /opt/privesc/PEASS-ng/linPEAS/linpeas.sh privesc/
	cp /opt/privesc/linux/linux-exploit-suggester/linux-exploit-suggester.sh $dir
	cp /opt/privesc/linux/linux-exploit-suggester-2/linux-exploit-suggester-2.pl $dir
	cp /opt/privesc/linux/pspy32 $dir
	cp /opt/privesc/linux/pspy64 $dir
	echo "Copying all tools...done"
	chmod 755 $dir/*
	ls $dir

    else
	echo "No $dir directory exists"
    fi
fi

