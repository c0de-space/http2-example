#!/bin/bash

# apt install make -y
rm -r /root/n
curl -L https://git.io/n-install | bash
. ~/.bashrc
/root/n/bin/n latest
echo node --version: $(node -v)
echo npm --version: $(npm -v)
