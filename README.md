# raspbian-ua-netinst
Automatically install Navit on a Raspberry Pi

Questions about this? Ask us on IRC! irc://irc.freenode.org/navit or http://webchat.freenode.net/?channels=navit

Example of Navit running on a Raspberry Pi 2 with the Adafruit 3.5" 320x240 Touchscreen
![Example](https://github.com/navit-gps/raspbian-ua-netinst/raw/master/example.gif "Navit on Raspberry Pi")

Note : Currently tested with rapbian-ua-netinst to 1.0.9.
Will not currently work with rapbian-ua-netinst < 1.0.8

Refer to https://github.com/debian-pi/raspbian-ua-netinst to get started.
You just need to copy the raspbian image to your memory card ( usually using
dd ), and then copy the content of this repository in vfat partition ( refer
to the installer customization section of the rapsbian-ua-netinst ).

If your microSD card is at /dev/sdc, here's an example:
```bash
dd if=../raspbian-ua-netinst-v1.0.9.img of=/dev/sdc
mount /dev/sdc /mnt
cp * /mnt
umount /mnt
```

Then just start the Pi. Installation will require wired network, but you can pre-configure your wifi settings.
