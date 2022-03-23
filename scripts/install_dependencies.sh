#!/bin/bash
apt-get -y update

sudo rm -rf node_modules package-lock.json

cd /my-node-app

sudo npm install
