#!/bin/sh

# based on https://geoff.greer.fm/2017/07/16/thinkpad-x62/ and output from powertop 

# Disable the NMI watchdog
echo '0' > '/proc/sys/kernel/nmi_watchdog';

# Runtime power management for I2C devices
for i in /sys/bus/i2c/devices/*/device/power/control ; do
  echo auto > ${i}
done

# Runtime power-management for PCI devices
for i in /sys/bus/pci/devices/*/power/control ; do
  echo auto > ${i}
done

# Runtime power-management for USB devices
for i in /sys/bus/usb/devices/*/power/control ; do
  echo auto > ${i}
done

for i in /sys/class/scsi_host/host*/link_power_management_policy ; do
  echo 'min_power' > ${i}
done

# power saving for vm writeback
echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs'

# turn off wake on lan
#ethtool -s wlp3s0 wol d;
ethtool -s enp2s0 wol d;

#gpu power save
echo '1' > '/sys/module/snd_hda_intel/parameters/power_save';

# wifi power save
iw dev wlp3s0 set power_save on;



