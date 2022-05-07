#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/tarekzoka/dreamsatpanel/main/installer.sh -O - | /bin/sh
##
###########################################
###########################################
wget -O /tmp/dreamsatpanel_1.3.deb   https://github.com/tarekzoka/-dreamsat/blob/main/enigma2-plugin-extensions-dreamsatpanel_1.3.deb?raw=true
dpkg -i --force-overwrite /tmp/*.deb
apt-get update && dpkg -i --force-overwrite /tmp/*.deb; apt-get install -f -y
echo ". >>>>         RESTARING     <<<<"
echo "**********************************************************************************"
wait
reboot
sleep 2;
exit 0
