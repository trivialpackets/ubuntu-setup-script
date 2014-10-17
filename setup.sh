#!/bin/bash

# Script to setup and deploy my ubuntu system 

# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo
   echo "This script must be run as root."
   echo "To do so, please enter: sudo -s"
   echo "After authenticating, please re-run the script."
   echo
   exit 1
fi
# ...

echo "Adding Repositories!"

# Brackets Editor
add-apt-repository -y ppa:webupd8team/brackets

# Atom Editor
add-apt-repository -y ppa:webupd8team/atom

# VIDEOLAN
add-apt-repository -y ppa:videolan/stable-daily

# PPA MANAGER
add-apt-repository -y ppa:webupd8team/y-ppa-manager

# GIMP
add-apt-repository -y ppa:otto-kesselgulasch/gimp

# SPOTIFY
apt-add-repository -y "deb http://repository.spotify.com stable non-free" &&
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59

# JAVA
add-apt-repository -y ppa:webupd8team/java

# LIBDVDCSS
echo 'deb http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
echo 'deb-src http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc|sudo apt-key add -

# UBUNTU-TWEAK
sudo add-apt-repository -y ppa:tualatrix/ppa

# NOOBSLAB THEMES
sudo add-apt-repository -y ppa:noobslab/themes
sudo add-apt-repository -y ppa:noobslab/icons

# NODEJS
sudo add-apt-repository -y ppa:chris-lea/node.js

echo "Repositories Added!"
sleep 5

echo "Beginning Updating!"
sleep 5
apt-get update
sudo apt-get upgrade -y 
apt-get dist-upgrade -y

echo "Updates Complete!"
sleep 5
echo "Installing Applications & Themes from Repositories!"
sudo apt-get install vlc gimp gimp-data gimp-plugin-registry gimp-data-extras openjdk-7-jre oracle-java8-installer flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 dconf-editor mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras vim vim-rails emacs gufw git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties wireshark nodejs gedit-plugins geany ubuntu-tweak unity-tweak-tool mac-ithemes-v3 mac-icons-v3 shutter handbrake pidgin filezilla libreoffice-style-sifr spotify-client nmap netcat atom brackets -y

echo "Installations Complete!"
sleep 5

# Installing Angry IP Scanner
if [[ $(getconf LONG_BIT) = "64" ]]
then
	echo "64bit Detected" &&
	echo "Installing Angry IP Scanner!" &&
	wget http://github.com/angryziber/ipscan/releases/download/3.3.2/ipscan_3.3.2_amd64.deb &&
	sudo dpkg -i ipscan_3.3.2_amd64.deb &&
	rm -f ipscan_3.3.2_amd64.deb
else
	echo "32bit Detected" &&
	echo "Installing Angry IP Scanner!" &&
	wget http://github.com/angryziber/ipscan/releases/download/3.3.2/ipscan_3.3.2_i386.deb &&
	sudo dpkg -i ipscan_3.3.2_i386.deb &&
	rm -f ipscan_3.3.2_i386.deb
fi
apt-get -f install
echo "Angry IP Scanner Installed!"
sleep 5

# Installing Google Chrome

if [[ $(getconf LONG_BIT) = "64" ]]
then
	echo "64bit Detected" &&
	echo "Installing Google Chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
	sudo dpkg -i google-chrome-stable_current_amd64.deb &&
	rm -f google-chrome-stable_current_amd64.deb
else
	echo "32bit Detected" &&
	echo "Installing Google Chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb &&
	sudo dpkg -i google-chrome-stable_current_i386.deb &&
	rm -f google-chrome-stable_current_i386.deb
fi
apt-get -f install
echo "Google Chrome Installed!"
sleep 5

# Installing Google Web Designer
if [[ $(getconf LONG_BIT) = "64" ]]
then
	echo "64bit Detected" &&
	echo "Installing Google Web Designer" &&
	wget -O google-webdesigner_amd64.deb https://dl.google.com/linux/direct/google-webdesigner_current_amd64.deb &&
	sudo dpkg -i google-webdesigner_amd64.deb &&
	rm google-webdesigner_amd64.deb
else
	echo "32bit Detected" &&
	echo "Installing Google Web Designer" &&
	wget -O google-webdesigner_i386.deb https://dl.google.com/linux/direct/google-webdesigner_current_i386.deb &&
	sudo dpkg -i google-webdesigner_i386.deb &&
	rm google-webdesigner_i386.deb
fi
apt-get -f install
echo "Google Web Designer Installed!"
sleep 5

# CLEANUP

echo "Enabling Firewall"
sudo ufw default deny
sudo ufw enable
echo "Firewall enabled, default action is to deny."
sleep 5

echo "Cleaning Up" &&
sudo apt-get -f install &&
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean
sleep 5

echo
echo "A special thanks to the following sites:"
echo "http://howtoubuntu.org/things-to-do-after-installing-ubuntu-14-04-trusty-tahr"
echo "http://www.noobslab.com/"
echo "http://www.ubuntu.com/"
echo
echo "************************Notice************************"
echo
echo "The following sites are important and you want "
echo "to follow the instructions containsed there!"
echo
echo "https://gorails.com/setup/ubuntu/14.04"
echo "http://www.mockel.se/index.php/2014/06/openvas-7-on-ubuntu-server-14-04/"
echo "http://forum.gns3.net/topic9646.html"
echo "http://www.blindhog.net/cisco-iou-install-on-ubuntu-14-04-64-bit/"
echo "https://gist.github.com/trivialpackets/d332c3c3e098afe16ef9"
echo
echo "******************************************************"
echo 

