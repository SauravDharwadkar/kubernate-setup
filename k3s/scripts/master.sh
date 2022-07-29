#!/usr/bin/env bash

# using  https://k3s.io

curl -sfL https://get.k3s.io | sh -
echo "export TOKEN=$(sudo cat /var/lib/rancher/k3s/server/node-token)" >> /vagrant_data/data/nodeENV