Ubuntu Setup Script
===================

## Purpose

This script is made for my own use for updating, configuring and setting up my Ubuntu system for my specific purposes.

### Tested Successfully On:

 * Ubuntu 14.04.1 32 bit
 * Ubuntu-Gnome 14.04.1 32 bit

### My Purposes:

 * Development
 * Networking
 * Studying
 * Reading
 * Entertainment

**_This is a work in progress and absolutely no guarantee that this script will work for you and no guarantee that your system will be functional after you have run this script.  So, before doing so, read the code for yourself or just wing it.  You have been warned.  YMMV.  Whatever else I need to put in to say I offer no promises, other than if I've updated the script here, then I've tested it at least once through an ubuntu fresh installation._**

## Repositories Added

### This script will add the following repositories:

 * webupd8team/brackets
 ..* for the brackets editor
 * webupd8team/atom
 ..* for the atom editor (by github)
 * videolan/stable-daily
 ..* for various codecs and packages
 * webupd8team/y-ppa-manager
 ..* for the installation of Y-PPA-Manager
 * otto-kesselgulash/gimp
 ..* for an updated version of gimp and other gimp tools
 * Repository for Spotify
 ..* Because I prefer not running in the web all the time.
 * webupd8team/java
 ..* for updated java packages
 * libdvdcss repository from debian stable and videolan
 ..* for DVD playback (silly that you have to do this)
 * tualatrix/ppa
 ..* for Ubuntu-Tweak
 * noobslab/themes
 ..* for themes
 * noobslab/icons
 ..* for icons
 * chris-lea/node.js
 ..* for installation of nodejs

 ## Other Software that is Manually Installed

 ### This script will manually install the following software:

 * Angry IP Scanner (32 bit or 64 bit)
 * Google Chrome (32 bit or 64 bit)
 * Google Web Designer (32 bit or 64 bit)

 ## Notes

 ### This script will also:

 * Setup the firewall in Ubuntu
 ..* Install GUFW for GUI Administration of the firewall
 ..* Set the default action to deny for the firewall
 ..* Enable the firewall
 * Clean up after the installation.
 * Provide links for further stops for configuration
 * Gives credit where credit is due.
