echo 'Minidlna Setup'
sudo apt-get install minidlna

# configure /etc/minidlna.conf

sudo service minidlna restart
sudo service minidlna force-reload