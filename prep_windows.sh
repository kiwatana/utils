#!/usr/bin/bash

# This script copies tools, and link to the links to Windows privilege escalation. 

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
	cp /opt/privesc/windows/privesc.bat $dir
	cp /opt/privesc/PEASS-ng/winPEAS/winPEASbat/winPEAS.bat $dir
	cp /opt/privesc/PEASS-ng/winPEAS/winPEASany.exe $dir
	cp /opt/privesc/PEASS-ng/winPEAS/winPEASx64.exe $dir
	cp /opt/privesc/PEASS-ng/winPEAS/winPEASx86.exe $dir
	cp /opt/privesc/windows/collection/accesschk.exe $dir
	cp /opt/privesc/windows/collection/accesschk64.exe $dir
	cp /opt/privesc/windows/collection/accesschk64a.exe $dir
	cp /opt/privesc/windows/collection/nc64.exe $dir
	cp /opt/privesc/windows/collection/nc.exe $dir
	cp /opt/privesc/windows/collection/wget.exe $dir
	cp /opt/privesc/windows/collection/wget64.exe $dir
	cp /opt/privesc/windows/collection/Powerless.bat $dir
	cp /opt/privesc/windows/PrivescCheck/PrivescCheck.ps1 $dir
	cp /opt/privesc/windows/win.zip $dir
	cp /opt/privesc/windows/unzip.vbs $dir

	cp /opt/powershell/nishang/Shells/Invoke-PowerShellTcp.ps1 $dir
	cp /opt/powershell/nishang/Gather/Invoke-Mimikatz.ps1 $dir
   
	ls $dir

	echo ""
	echo "For wesng, you should copy systeminfo file to /opt/privesc/windows/wesng/"
	echo "For Windows-Exploit-Suggester,you should copy systeminfo to /opt/privesc/windows/Windows-Exploit-Suggester/"
	echo ""
	echo "Grab the latest one - https://github.com/carlospolop/PEASS-ng/releases"
	echo ""
	echo "Access to https://www.revshells.com/ and create a msfvenom meterpreter" 
    else
	echo "No $dir directory exists"
    fi

    dir="post"

    if [[ -d $PWD/$dir ]]
    then
	
	cp /opt/postexploitation/mimikatz32.exe $dir
	cp /opt/postexploitation/mimikatz64.exe $dir
	cp /opt/postexploitation/mimikatz_trunk.zip $dir
	
	ln -s /opt/powershell/nishang $dir/nishang
	ln -s /opt/powershell/ADModule $dir/ADModule
	ln -s /opt/powershell/ADRecon $dir/ADRecon
	ln -s /opt/powershell/PowerSploit $dir/PowerSploit
	ln -s /opt/powershell/Empire $dir/Empire

	echo ""
	
	ls $dir

    else
	echo "No $dir directory exists"
	
    fi
fi

