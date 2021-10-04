#!/bin/bash

# apt install make -y
rm /usr/local/bin/node
rm /usr/local/bin/npm
rm /usr/local/bin/n
rm -r /root/n
curl -L https://git.io/n-install  > n.sh
sudo bash ./n.sh -y
rm n.sh
. ~/.bashrc
/root/n/bin/n latest
#sudo npm i -g npm
echo node --version: $(node -v)
echo npm --version: $(npm -v)
sudo npm i -g yarn
sudo yarn install
