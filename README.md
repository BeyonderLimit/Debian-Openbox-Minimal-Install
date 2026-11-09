<img width="1911" height="1080" alt="clipboard_2026-11-09_16-41" src="https://github.com/user-attachments/assets/6c65e4d8-41cc-45a4-9637-dd8fbeb63d27" />

# Debian Openbox Minimal Install Guide
The standard Debian 'Bookworm' installation process with Openbox desktop includes additional packages that may not be necessary for many users. This guide will allow you to install a minimal Openbox desktop config, with additional packages as needed.

## Requirements
A debian installation (hardware or virtual machine) with appropriate video drivers.
* sudo privileges to install packages and run optional install script.
* Installation of git to clone this repo sudo pkg install git
* Installation of bash to run install script sudo pkg install bash

## ISO for Installing Debian
[debian-12.15.0-amd64-netinst.iso](https://cdimage.debian.org/cdimage/archive/12.15.0/amd64/iso-cd/debian-12.15.0-amd64-netinst.iso)
[Alternate Installing Debian 12](https://www.debian.org/releases/bookworm/debian-installer/)
[Debian “bookworm” Release Information](https://www.debian.org/releases/bookworm/))

## Installing Debian without a desktop environment
As you progress through the debian installation, towards the end you will be presented with the following screen for Software selection:
<img width="1400" height="788" alt="debian12-installer" src="https://github.com/user-attachments/assets/e849e83a-91bc-4c10-89d4-af2680ab6422" />
Uncheck Debian desktop environment to install a minimal debian system.




