#!/bin/bash

# set xflock4 to xscreensaver
xfconf-query -c xfce4-session -p /general/LockCommand -t string -s 'xfce4-screensaver-command -l'

 # don't hand over control of laptop lid to logind
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/logind-handle-lid-switch -t bool -s false -n

# set background
readarray xfconf_query_xfd < <(xfconf-query -c xfce4-desktop -l)
lstrip=${xfconf_query_xfd[0]#*screen0/}
display0=${lstrip%/workspace*}
xfconf-query -c xfce4-desktop -p "/backdrop/screen0/${display0}/workspace0/last-image" -t string -s "/usr/share/backgrounds/f31/extras/galactic-mountains.jpg" -n

# set Greybird theme
xfconf-query -c xfwm4 -p /general/theme -t string -s "Greybird"
xfconf-query -c xsettings -p /Net/ThemeName -t string -s "Greybird"

# disable user switching in xfce4-screensaver
xfconf-query -c xfce4-screensaver -p /lock/user-switching/enabled -t bool -s false -n

# set cursor theme to Adwaita
xfconf-query -c xsettings -p /Gtk/CursorThemeName -t string -s Adwaita

