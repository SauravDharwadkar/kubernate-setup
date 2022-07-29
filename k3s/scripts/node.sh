#!/usr/bin/env bash


while true ; do
if test -f "/vagrant_data/data/nodeENV"; then
    break
fi
echo "waiting for Master file"
sleep 10
done

. /vagrant_data/data/nodeENV
curl -sfL https://get.k3s.io | K3S_URL=https://master-node:6443 K3S_TOKEN=$TOKEN sh -