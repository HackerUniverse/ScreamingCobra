#!/bin/bash

red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"

clear
function banner() {
echo "
Screaming Cobra Loader
                version 1.0a
                Script by:Hackeruniversee
"
}
banner
echo -e "$red [$green+$red] 1:$off Linux Users"; 
echo -e "$red [$green+$red] 2:$off Termux Users";
echo -ne "$red [$green+$red] Select An Option:$off: " ;
read Option
if [ $Option -eq "1" ]
then
 echo -e "$red [$green+$red] 1:$off Normal Version "; 
 echo -e "$red [$green+$red] 2:$off Dom Case Version ";
 echo -ne "$red [$green+$red] Selectg An Option:$off: " ;
 read Option
 if [ $Option -eq "1" ]
 then
    python ScreamingCobra1.py
 fi

 if [ $Option -eq "2" ]
 then
    python ScreamingCobra2.py
 fi
fi 
if [ $Option -eq "2" ]
then
 echo -e "$red [$green+$red] 1:$off Normal Version ";
 echo -e "$red [$green+$red] 2:$off Dom Case Version ";
 echo -ne "$red [$green+$red] Selectg An Option:$off: " ;
 read Option
 if [ $Option -eq "1" ]
 then
    python2 ScreamingCobra1.py
 fi

 if [ $Option -eq "2" ]
 then
    python2 ScreamingCobra2.py
 fi
fi 
