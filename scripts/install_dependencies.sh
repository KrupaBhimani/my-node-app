#!/bin/bash
apt-get -y update

sudo rm -rf node_modules package-lock.json

mkdir /my-node-app
cd /my-node-app

sudo npm install
