#How To Use Tp-Link WN722N V2/V3 on Kali Linux?
#Use these following commands to make TP-Link_TL-WN722N V2/V3 adapter working adapter working on Kali linux for packet injection and monitoring!

#Commands:
sudo apt update
sudo apt upgrade
sudo apt install bc
sudo apt-get install build-essential 
sudo apt-get install libelf-dev 

#Try either of these commands to see which works:
sudo apt-get install linux-headers-`uname -r`
sudo apt-get install linux-headers-5.10.0-kali6-amd64

sudo apt install dkms
sudo rmmod r8188eu.ko
git clone https://github.com/aircrack-ng/rtl8188eus
cd rtl8188eus
sudo -i
echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
exit
sudo reboot
sudo apt update
cd rtl8188eus
sudo make
sudo make install
sudo modprobe 8188eu


#To enable Monitor mode and test packet injection:
sudo ifconfig wlan0 down
sudo airmon-ng check kill
sudo iwconfig wlan0 mode monitor
sudo ifconfig wlan0 up
iwconfig                             
sudo aireplay-ng --test wlan0