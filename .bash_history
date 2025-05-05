sudo apt update
sudo apt install salt-master -y
exit
sudo salt-key -L
sudo systemctl restart salt-master
exit
sudo salt-key -L
sudo salt-key -A
exit
sudo mkdir -p /srv/salt/{postgresql,nginx,firewall}
sudo mkdir -p /srv/pillar
sudo nano /srv/salt/top.sls
sudo nano /srv/salt/postgresql/init.sls
exit
sudo nano /srv/salt/postgresql/init.sls
sudo nano /srv/salt/nginx/init.sls
sudo nano /srv/salt/firewall/ufw.sls
sudo nano /srv/pillar/top.sls
sudo nano /srv/pillar/db.sls
sudo salt '*' saltutil.refresh_pillar
sudo salt '*' state.apply
sudo systemctl status salt-minion
sudo systemctl start salt-minion
exit
