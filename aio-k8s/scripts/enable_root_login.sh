#!/bin/bash -eux

#login as root
sudo su

sudo sed -e '/PermitRootLogin/ s/^#*/#/' -i /etc/ssh/sshd_config
sudo sed '/^#PermitRootLogin/a PermitRootLogin yes' -i /etc/ssh/sshd_config
sudo sed -i '/^#ListenAddress 0.0.0.0/s/^#//' -i /etc/ssh/sshd_config
sudo sed '/^#PasswordAuthentication/a PasswordAuthentication yes' -i /etc/ssh/sshd_config
sudo systemctl restart sshd

echo "root:Juniper123" | sudo chpasswd

sudo iptables -F
