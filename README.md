# How to Install Openwrt on tplink_archer-c50-v3


WARNING: Do NOT flash the openwrt-19.07.2-ramips-mt76x8-tplink_c50-v3-squashfs-sysupgrade.bin from the “Release” section to the C50 v3 via the TPlink firmware's web GUI. It will brick the router!v.3

Installation is a bit tricky. Flash via WebGUI will not work because the OpenWrt firmware is not accepted by the router. But you can flash between different official firmwares. Unfortunately the smaller sysupgrade firmware is accepted by the stock router firmware but will brick the device. In this case you must use the TFTP recover method as described below. This is also the prefered way to flash the first OpenWrt firmware. Just use this image: https://github.com/PrivateRouter-LLC/openwrt-tplink_archer-c50-v3/blob/main/tp_recovery.bin and put it in your tftpboot directory. To trigger the TFTP flashing just restart (on/off) the router and shortly after it turns on press the small reset button for a while. If everything is set up correct the router will load the image and restarts with a working OpenWrt firmware. 

For Windows use this easy TFTP app to create the server and load the tp_recovery.bin image:
https://github.com/PrivateRouter-LLC/openwrt-tplink_archer-c50-v3/blob/main/tftp2.exe

Specific values needed for tftp on v3 & v4
Bootloader tftp server IPv4 address 	192.168.0.66 (on the PC)
Firmware tftp image 	tp_recovery.bin (that is the file the client looks for)
TFTP transfer window 	About 10 seconds after power on, while holding the RESET button
TFTP window start 	Must power on pressing the RESET button
TFTP client required IP address 	192.168.0.x 

Then proceed to flash the sysupgrade image in the release section:
