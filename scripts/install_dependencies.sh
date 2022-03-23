#!/bin/bash
apt-get -y update

sudo rm -rf node_modules package-lock.json
npm install 
