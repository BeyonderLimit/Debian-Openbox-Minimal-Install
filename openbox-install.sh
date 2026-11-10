#!/usr/bin/env bash

## configure and install minimal Openbox desktop environment

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

cat ./xsessionrc >> /home/$SUDO_USER/.xsessionrc
chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.xsessionrc

apt install -y \
    openbox  \
    pcmanfm \
    xfce4-appfinder \
    lxpanel \
    xfce4-pulseaudio-plugin \
    volumeicon-alsa alsa-utils \
    openbox-lxde-session \
    lxsession lxtask \
    lxappearance nitrogen \
    lxsession-default-apps \
    xfce4-terminal \
    obconf \
    picom rfkill connman-gtk \
    lxappearance-obconf \
    lxhotkey-plugin-openbox \
    adwaita-qt \
    qt5ct 

echo 
echo openbox install complete, please reboot and issue 'startx'
echo
