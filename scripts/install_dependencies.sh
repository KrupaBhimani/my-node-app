#!/bin/bash
apt-get -y update

sudo rm -rf node_modules package-lock.json

cd /home/ubuntu/my-node-app
npm install
