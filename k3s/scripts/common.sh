#!/usr/bin/env bash

# # network things dont need present in k3s scripts
# cat >> /etc/ufw/sysctl.conf <<EOF
# net/bridge/bridge-nf-call-ip6tables = 1
# net/bridge/bridge-nf-call-iptables = 1
# net/bridge/bridge-nf-call-arptables = 1
# EOF

# check if exists

echo "$IP_START.10  master-node" >> /etc/hosts
for i in $(seq 1 $NODES); do
    echo  "$IP_START.$(($i+20)) worker-node-$1" >> /etc/hosts
done
