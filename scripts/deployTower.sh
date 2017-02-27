#!/bin/bash
echo $(date) " - Starting Script"

USER=$1
PASSWORD="$2"
POOL_ID=$3

# Register Host with Cloud Access Subscription
echo $(date) " - Register host with Cloud Access Subscription"

subscription-manager register --username="$USER" --password="$PASSWORD"
subscription-manager attach --pool=$POOL_ID

# Disable all repositories and enable only the required ones
echo $(date) " - Disabling all repositories and enabling only the required repos"

subscription-manager repos --disable="*"

subscription-manager repos \
    --enable="rhel-7-server-rpms" \
    --enable="rhel-7-optional-rpms" \
    --enable="rhel-7-extras-rpms" \
    --enable="rhel-7-supplimental-rpms"

wget https://github.com/mglantz/ansibletower-demo/raw/master/ansible-tower-setup-latest.tar.gz
gunzip ansible-tower-setup-latest.tar.gz
tar xvf ansible-tower-setup-latest.tar
cd ansible-tower-setup-3.0.3
sh ./setup.sh



