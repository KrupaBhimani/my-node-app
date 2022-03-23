#!/bin/bash
apt-get -y update


cd /my-node-app
sudo rm -rf node_modules package-lock.json
sudo npm install
