#!/usr/bin/env bash

sudo kubectl apply -f /vagrant_data/scripts/kube-dashboard.yaml
echo "admin-user" > /vagrant_data/data/dashboard-token
sudo kubectl -n kubernetes-dashboard create token admin-user >> /vagrant_data/data/dashboard-token