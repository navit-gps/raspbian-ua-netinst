cd /usr/src
git clone https://github.com/navit-gps/navit.git
mkdir navit-bin
cd navit-bin/
cmake  -DFREETYPE_INCLUDE_DIRS=/usr/include/freetype2/ ../navit/
make -j4
make install
mkdir /home/pi/.navit/
cp /usr/local/share/navit/navit.xml /home/pi/.navit/
sed -i '@gui type="internal" enabled="yes">@gui type="internal" enabled="yes" fullscreen="1">@' /home/pi/.navit/navit.xml
