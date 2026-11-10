<img width="1911" height="1080" alt="clipboard_2026-11-09_16-41" src="https://github.com/user-attachments/assets/6c65e4d8-41cc-45a4-9637-dd8fbeb63d27" />

# Debian Openbox Minimal Install Guide
The standard Debian 'Bookworm' installation process with Openbox desktop includes additional packages that may not be necessary for many users. This guide will allow you to install a minimal Openbox desktop config, with additional packages as needed.

## Requirements
A debian installation (hardware or virtual machine) with appropriate video drivers.
* sudo privileges to install packages and run optional install script.
* Installation of git to clone this repo sudo pkg install git
* Installation of bash to run install script sudo pkg install bash

## ISO for Installing Debian
* [debian-12.15.0-amd64-netinst.iso](https://cdimage.debian.org/cdimage/archive/12.15.0/amd64/iso-cd/debian-12.15.0-amd64-netinst.iso)
* [Alternate Installing Debian 12](https://www.debian.org/releases/bookworm/debian-installer/)
* [Debian “bookworm” Release Information](https://www.debian.org/releases/bookworm/))

## Installing Debian without a desktop environment
As you progress through the debian installation, towards the end you will be presented with the following screen for Software selection:
<img width="1400" height="788" alt="debian12-installer" src="https://github.com/user-attachments/assets/e849e83a-91bc-4c10-89d4-af2680ab6422" />
Uncheck Debian desktop environment to install a minimal debian system.

## Upgrade your system:
```
sudo apt update && sudo apt upgrade -y
```
Reboot to load updated kernel and services.

## Quick install of the Openbox setup and required packages
```
git clone https://github.com/beyonderlimit/Debian-Openbox-Minimal-Install.git
cd Debian-Openbox-Minimal-Install
sudo ./openbox-install.sh
```
## Manually install Openbox and required packages
If you've read this far, and you're getting impatient:
```
sudo apt install -y openbox obconf openbox-lxde-session lxterminal xbacklight pcmanfm lxappearance lxpanel gmrun gnome-terminal
```
This will give you a basic openbox desktop with lightdm greeter. For additional plugins and ''goodies', add:
```
sudo apt install gnome-panel-control lightdm -y
```

This still may include too much 'stuff' for the minimalists among us. In that case, strip it down further and start with:
```
apt install \
    obconf \
    pcmanfm \
    jwm \
    tint2 \
    gmrun \
    openbox-lxde-session \
    lxappearance \
    lxsession-logout \
    lxhotkey-plugin-openbox \
    volumeicon-alsa \
    alsa-utils \
    lxpanel \
    nitrogen \
    lxde-terminal \
    obconf \
    picom \
    rfkill \
    xfce4-terminal \
    feh connman connman-gtk connman-vpn gvfs

# laptop users may want to add the Gnome compatible settings
# xfce4-battery-plugin network-manager network-manager-gnome 
```
From this point you should have a working openbox desktop environment. You can reboot, and add only what you need going forward. If you plan to start Openbox without lightdm, you may need to install xorg and xinit.
```
sudo apt install --no-install-recommends xorg xinit -y
```

To make the panel automatically show up, add this to ~/.config/openbox/autostart file using nano or vim editors:
```
lxpanel &
picom &
volumeicon &
```
**Restart**

## Notes:
lxpanel is not the only option for installing a Desktop panel, there are others too like fbpanel, tint2 and xfce4-panel. [Read this](https://www.maketecheasier.com/configure-andcustomize-openbox/) for more details.
To add a battery indicator to the lxpanel, add this to the ~/.config/lxpanel/default/panels/panel
```Plaintext 📋
Plugin {
  type = batt
}
```
To save your openbox customizations between sessions (which is a basic requirement), copy the rc.xml and menu.xml from /etc/X11/openbox to ~/.config/openbox/ (create this folder if it doesn’t exist).
gmrun is needed to show the run dialog that pops up when you press Alt+F2 in any “normal” DE. Once you install gmrun, just add below code to ~/.config/openbox/rc.xml somewhere in the <keyboard> section, in order to make the keys work:

```
<!--start: Prahlad-->
<keybind key="A-F2">
<action name="Execute">
  <command>gmrun</command>
</action>
</keybind>
<!--end: Prahlad-->
```
