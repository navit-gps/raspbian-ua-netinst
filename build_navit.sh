apt-get install -y libgtk2.0-dev

cd /usr/src
git clone https://github.com/navit-gps/navit.git
mkdir navit-bin
cd navit-bin/
cmake  -DFREETYPE_INCLUDE_DIRS=/usr/include/freetype2/ ../navit/
make -j4
make install
cp navit/maps/*.xml /usr/local/share/navit/maps/
mkdir /home/navit/.navit/
cp /usr/local/share/navit/navit.xml /home/navit/.navit/
sed -i 's@gui type="internal" enabled="yes">@gui type="internal" enabled="yes" fullscreen="1">@' /home/navit/.navit/navit.xml
sed -i 's/zoom="256"/zoom="32"/' /home/navit/.navit/navit.xml
chown -R navit /home/navit/
