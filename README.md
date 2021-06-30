# headless pi install
 
 ### Install latest OS to Micro SD Card
 RasPi Imager
 
 ### Enable SSH
 `~$ touch /boot/ssh`
 
 ### Setup WiFi
`~$ touch /boot/wpa_supplicant.conf`
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=DE

network={
 ssid="XXXXXX"
 psk="XXXXXX"
}
```
 
### Boot and SSH into pi
`~$ passw`  
`~# apt update && apt full-upgrade`  
`~# raspi-config`  
  > enable vnc  
  > Memory split 256 MB

### Apps
> sshfs  
> vim
> 
