#!/bin/bash

# xfce4-keyboard-shortcuts
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super>l' -t string -s 'xflock4' -n
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super>s' -t string -s 'xfce4-appfinder' -n
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super>p' -t string -s 'xfce4-display-settings --minimal' -n
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super>t' -t string -s 'xfce4-terminal' -n
xfconf-query -c xfce4-keyboard-shortcuts -p '/xfwm4/custom/<Super>Left' -t string -s 'tile_left_key' -n
xfconf-query -c xfce4-keyboard-shortcuts -p '/xfwm4/custom/<Super>Right' -t string -s 'tile_right_key' -n
xfconf-query -c xfce4-keyboard-shortcuts -p '/xfwm4/custom/<Super>Up' -t string -s 'maximize_window_key' -n

# xfce4-session settings
xfconf-query -c xfce4-session -p /general/LockCommand -t string -s 'xfce4-screensaver-command -l' -n
xfconf-query -c xfce4-session -p /general/SaveOnExit -t bool -s false -n

# xfce4-power-manager settings
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -t int -s 10 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-switch -t int -s 0 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-switch-restore-on-exit -t int -s 1 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/critical-power-action -t int -s 1 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled -t bool -s true -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-off -t int -s 0 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-sleep -t int -s 15 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/general-notification -t bool -s false -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/hibernate-button-action -t int -s 0 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/inactivity-on-battery -t int -s 15 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/inactivity-sleep-mode-on-battery -t int -s 1 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-ac -t int -s 0 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-battery -t int -s 1 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lock-screen-suspend-hibernate -t bool -s true -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/logind-handle-lid-switch -t bool -s false -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/power-button-action -t int -s 0 -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/show-tray-icon -t bool -s false -n
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/sleep-button-action -t int -s 0 -n

# xfce4-desktop settings
readarray xfconf_query_xfd < <(xfconf-query -c xfce4-desktop -l)
lstrip=${xfconf_query_xfd[0]#*screen0/}
display0=${lstrip%/workspace*}
xfconf-query -c xfce4-desktop -p "/backdrop/screen0/${display0}/workspace0/last-image" -t string -s '/usr/share/backgrounds/f31/extras/galactic-mountains.jpg' -n
xfconf-query -c xfce4-desktop -p /desktop-menu/show -t bool -s false -n
xfconf-query -c xfce4-desktop -p /desktop-icons/style -t int -s 0 -n
xfconf-query -c xfce4-desktop -p /windowlist-menu/show -t bool -s false -n

# set Greybird theme
xfconf-query -c xfwm4 -p /general/theme -t string -s 'Greybird' -n
xfconf-query -c xsettings -p /Net/ThemeName -t string -s 'Greybird' -n

# xfwm4 settings
xfconf-query -c xfwm4 -p /general/snap_to_windows -t bool -s true -n
xfconf-query -c xfwm4 -p /general/snap_to_borders -t bool -s true -n
xfconf-query -c xfwm4 -p /general/workspace_count -t int -s 1 -n


# xfce4-screensaver settings
xfconf-query -c xfce4-screensaver -p /lock/user-switching/enabled -t bool -s false -n
xfconf-query -c xfce4-screensaver -p /lock/saver-activation/delay -t int -s 1 -n
xfconf-query -c xfce4-screensaver -p /saver/mode -t int -s 0 -n
xfconf-query -c xfce4-screensaver -p /saver/idle-activation/delay -t int -s 5 -n


# set cursor theme to Adwaita
xfconf-query -c xsettings -p /Gtk/CursorThemeName -t string -s 'Adwaita' -n

