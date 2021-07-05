#!/bin/bash

# RASPBIAN LITE XFCE INSTALL
# Update cache and install updates

sudo apt-get update -qq
sudo apt-get upgrade -yy
sudo apt-get dist-upgrade -yy

# Install X11

sudo apt-get install xserver-xorg-core xserver-xorg-video-fbdev xserver-xorg-input-evdev xinit xfonts-base --no-install-recommends -yy

# Install xfce

sudo apt-get install xfce4 xfce4-terminal xfce4-appfinder xfconf xfdesktop xfce4-dev-tools exo garcon xfce4-panel \
xfce4-power-manager xfce4-session xfce4-settings tumbler libxfce4util libxfce4ui xfwm4 -yy

# Install lightdm

sudo apt-get install lightdm -yy

# Install

sudo apt-get install chromium-browser thunar alsa-utils bluetooth pi-bluetooth bluez blueman vlc feh vim sshfs -yy

# Done

echo "Please reboot system!"
