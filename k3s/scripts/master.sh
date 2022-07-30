#!/usr/bin/env bash

# using  https://k3s.io

curl -sfL https://get.k3s.io | sh -
mkdir -p /vagrant_data/data
sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant_data/data/nodeENV
sudo cp /etc/rancher/k3s/k3s.yaml /vagrant_data/data/k3s.yaml 
echo "changing ip : 127.0.0.1 to $IP_MASTER"
sed -i -s "s/127.0.0.1/${IP_MASTER}/g" /vagrant_data/data/k3s.yaml