# x62Pow
Brick Stupid Power Management for the x62 from 51nb. **Works for Me™**


Works well for MY x62s. My x62s uses a x201s fan on a heatsink I made myself from some 1/8 copper plate and a x200s heatpipe. It is a i7 5600 mobo which is from either the second or third batch. I have 32gb of crucial ddr3L 1600 ram. I am using a ath10k based wifi card and a 1tb samsung msata ssd. A further 2tb 2.5 inch sata ssd is going to be going into the 2.5 bay. 

I flashed the latest bios (email jacky from the lcdfans fb group for a copy) using a freedos usb key. I did this by running:
  
  `update.bat`

When finished and shut down. I booted back into freedos and flashed the older(~mid 2016) ec1012.bin ec(fan?) controller bios. 

  `flashup /p ec1012.bin /c a.cfg`
  
This will run the fan quite a bit without agressive power saving settings, which is what this script is here to do. This script assumes arch, antergos or manjero(probably)

If someone wants to take this work and run with it, go nuts, this is good enough for me right now. 



