# headless pi install
 
 ## Flash latest OS to Micro SD Card
  * Use `RasPi Imager` tool to flash SD Card
 
 ## Enable SSH and WiFi
  * In the boot partition SD Card
  
  `~$ touch /boot/ssh`
  
  `~$ touch /boot/wpa_supplicant.conf`
  * Add to `wpa_supplicant.conf`
  ```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=DE

network={
 ssid="XXXXXX"
 psk="XXXXXX"
}
```
  * Replace `XXXXXX` with Name and Password of your network

 ## First Boot
  * Boot Pi and wait for installation to finish
 
# First Login
 * SSH into pi

 ## Add new user
  `~$ adduser luk`
  
  `~$ groups | sed 's/pi //g' | sed -e "s/ /,/g" | xargs -I{} sudo usermod -a -G {} luk`
  
  `~# exit`
  * Login to new user account
  * Delete default user
  
  `~$ deluser --remove-home pi`
  
 ## Create snapshot of os
  * Mount SD Card to Laptop
  
  ### Determin device name
  `~# lsblk -p`
  
  ### Dump System to backup folder
  `sudo dd bs=4M if=[SD CARD DEVICE NAME] of=~/Documents/pi.backup/snapshots/liteluk0 conv=fsync`
  * Claim ownership
  
  `sudo chown $USER ~/Documents/pi.backup/liteluk0`
  
  #### Install PiShrink if not already
   `wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh`
  
  `sudo chmod +x pishrink.sh`
  
  `sudo mv pishrink.sh /usr/local/sbin/pishrink`
  
  ### Shrink and compress image file
  `sudo pishrink ~/Documents/pi.backup/snapshots/liteluk0`
  
  `tar -czf ~/Documents/pi.backup/snapshots/liteluk0.tar.gz ~/Documents/pi.backup/snapshots/liteluk0`
  
  ### Boot and ssh into new user

 ## Installation script
  `/# cd Downloads/`
  
  * Raspberry OS Lite
  
  `/$ wget https://raw.githubusercontent.com/LuckyLuk420/setup/pi_os_lite/install_lite.sh`
  
  `/$ chmod u+x install_lite.sh`
  
  `/$ ./install_lite.sh`
  
  `~$ reboot

 ## Configure system settings
  `/$ raspi-config`  
   > enable vnc  
   > Memory split 256 MB
   > Disable xcompmgr
  
