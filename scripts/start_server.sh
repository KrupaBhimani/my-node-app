#!/bin/bash

source /home/ubuntu/.bashrc

cd /home/ubuntu/my-node-app
sudo npm install pm2@latest -g
pm2 start server.js