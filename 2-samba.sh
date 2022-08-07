sudo apt-get install samba

# edit /etc/samba/smb.conf
mkdir ~/smb_share
sudo groupadd -g 10000 smb_admins
#sudo newgrp smb_admins
sudo usermod -aG smb_admins $USER
sudo chgrp -R smb_admins: ~/smb_share
sudo chmod -R g+rw ~/smb_share

smb_config='/etc/samba/smb.conf'
sudo echo "[DATA]" >> $smb_config
sudo echo "path = ~/smb_share" >> $smb_config
sudo echo "valid users = @smb_admins " >> $smb_config
sudo echo "browsable = yes" >> $smb_config
sudo echo "writable = yes" >> $smb_config
sudo echo "read only = no" >> $smb_config
