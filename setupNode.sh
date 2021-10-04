#!/bin/bash

# apt install make -y
rm /usr/local/bin/node
rm /usr/local/bin/npm
rm -r /root/n
curl -L https://git.io/n-install | bash
. ~/.bashrc
/root/n/bin/n latest
echo node --version: $(node -v)
echo npm --version: $(npm -v)
