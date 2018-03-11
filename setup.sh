#!/bin/bash

#sudo pacman -S ethtool linux-headers --noconfirm
#yaourt -S r8169aspm-dkms --noconfirm
sudo cp x62_powersettings.sh /usr/local/sbin/
sudo chmod +x /usr/local/sbin/x62_powersettings.sh
sudo cp x62_powersettings.unit /etc/systemd/system/
sudo systemctl enable x62_powersettings
