#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script to install Kibana.
# Install this on any or all elasticsearch-node-0X host(s)

sudo mkdir /opt/kibana
sudo chown -R `whoami` /opt/kibana/
cd /opt/kibana/
wget https://download.elastic.co/kibana/kibana/kibana-4.1.4-linux-x64.tar.gz
tar xzvf kibana-4.1.4-linux-x64.tar.gz
cd kibana-4.1.4-linux-x64/