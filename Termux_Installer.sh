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

clear

echo "XSS Fuzz Swiss Knife on any URI     Version 1.0a";   
echo "Termux Installer By: Haroon Awan";
echo "Coded By: Haroon Awan";
echo "Mail: mrharoonawan@gmail.com";
echo "Debug:Hackeruniversee";
echo "";


echo -e "Installing Python2"
apt-get install python2

echo -e "Installing Modules"
pip2 install -r requirements.txt
pip2 install httplib2
pip2 install mechanize

echo -e "[+] Installed Success!";
echo -e "[+] Reboot Termux";
echo -e "[+] Upon successful reboot enter, type interface.sh";
