# *************************************************************************************** #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#                     Agreement between "Haroon Awan" and "You"(user).                    #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#  1. By using this piece of software your bound to these point.                          #
#  2. This an End User License Agreement (EULA) is a legal between a software application #
#     author "Haroon Awan" and (YOU) user of this software.                               #
#  3. This software application grants users rights to use for any purpose or modify and  #
#     redistribute creative works.                                                        #
#  4. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#     what you do with by/this software as your free to use this software.                #
#  5. Any other purpose(s) that it suites as long as it is not related to any kind of     #
#     crime or using it in un-authorized environment.                                     #
#  6. You can use this software to protect and secure your data information in any        #
#     environment.                                                                        #
#  7. It can also be used in state of being protection against the unauthorized use of    #
#     information.                                                                        #
#  8. It can be used to take measures achieve protection.                                 #
# *************************************************************************************** #

#!/bin/bash

red="\e[0;31m"
green="\e[0;32m"
off="\e[0m"

function banner() {
clear
echo "                                                                                               ";
echo "                                                                                               ";
echo "                                                                                               ";
echo "     								Screaming Cobra 			";
echo "                                                                                               ";
echo "                                                                                               ";
echo "                                       	  Ultimate XSS Fuzzing and Finding Software     Version 1.0a        ";   
echo "                                                        [Coded By: Haroon Awan]                                       ";
echo "                                                   [Contact: mrharoonawan@gmail.com]                                  ";
echo "                                                                                               ";
echo "                                                                                               ";
echo "                                                                                               ";
}

function linux() {
echo -e "$red [$green+$red]$off Installing Python ...";
pip install python2.7
echo -e "$red [$green+$red]$off Installing Modules ...";
pip install -r requirements.txt
pip install httplib2
pip install mechanize

echo -e "$red [$green+$red]$off Checking directories..."
if [ -d "/usr/share/ScreamingCobra" ]; then
    echo -e "$red [$green+$red]$off A Directory ScreamingCobra Was Found! Do You Want To Replace It? [Y/n]:" ;
    read replace
    if [ "$replace" = "Y" ]; then
      sudo rm -r "/usr/share/ScreamingCobra"
      sudo rm "/usr/local/bin/ScreamingCobra"

else
echo -e "$red [$green+$red]$off If You Want To Install You Must Remove Previous Installations";
        exit
    fi
fi 

echo -e "$red [$green+$red]$off Installing ...";
echo -e "$red [$green+$red]$off Creating Symbolic Link ...";
echo -e ""
python /usr/share/ScreamingCobra/ScreamingCobra1.py > "ScreamingCobra1";
python /usr/share/ScreamingCobra/ScreamingCobra2.py > "ScreamingCobra2";
sudo chmod 777 interface.sh
interface.sh > "ScreamingCobra";
    chmod +x "ScreamingCobra";
    sudo mkdir "/usr/share/ScreamingCobra"
    sudo cp "ScreamingCobra1.py" "/usr/share/ScreamingCobra/ScreamingCobra1"
    sudo cp "ScreamingCobra2.py" "/usr/share/ScreamingCobra/ScreamingCobra2"
    sudo cp "interface.sh" "/usr/share/ScreamingCobra/interface.sh"
    sudo cp "ScreamingCobra" "/usr/local/bin/"
    sudo cp "copy"  "/usr/local/bin/ScreamingCobra"
    chmod u+x "/usr/local/bin/ScreamingCobra";

echo -e "$red [$green+$red]$off Installing dependencies..."
pip install httplib2
pip install mechanize
pip install jsbeautifier
pip install argparse
pip install requests
pip install request
sudo virtualenv --python="2" env
sudo env/bin/activate
cp * -r /usr/share/ScreamingCobra
cp *.sh /usr/share/ScreamingCobra

if [ -d "/usr/share/ScreamingCobra" ] ;
then
echo -e "$red [$green+$red]$off ScreamingCobra Successfully Installed, Starting";
sleep 2;
ScreamingCobra
else
echo -e "$red [$green+$red]$off ScreamingCobra Cannot Be Installed. Trying using Portable Edition !";
    exit
fi 
}

if [ -d "/usr/bin/" ];then
banner
echo -e "$red [$green+$red]$off ScreamingCobra Will Be Installed In Your System";
linux
else
echo -e "$red [$green+$red]$off ScreamingCobra Cannot Be Installed. Trying using Portable Edition !";
    exit
fi
