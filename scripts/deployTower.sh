#!/bin/bash
echo $(date) " - Starting Script"

wget https://github.com/mglantz/ansibletower-demo/raw/master/ansible-tower-setup-latest.tar.gz
gunzip ansible-tower-setup-latest.tar.gz
tar xvf ansible-tower-setup-latest.tar
cd ansible-tower-setup-3.0.3
sh ./setup.sh



