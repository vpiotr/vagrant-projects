# update
sudo yum update
sudo yum -y install kernel-devel
sudo yum groupinstall "Development Tools"

# install GNOME desktop 
sudo yum -y groupinstall "GNOME Desktop"
sudo systemctl set-default graphical.target
sudo systemctl start graphical.target
