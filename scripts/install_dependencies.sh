#!/bin/bash
sudo apt-get -y update


cd /home/ubuntu/my-node-app
sudo rm -rf node_modules package-lock.json
source /home/ubuntu/.nvm/nvm.sh
sudo npm install
