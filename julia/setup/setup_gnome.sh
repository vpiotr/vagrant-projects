# install GNOME desktop 
sudo yum -y groupinstall "GNOME Desktop"
sudo systemctl set-default graphical.target
sudo systemctl start graphical.target
