#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script to install the Marvel agent on Elasticsearch hosts.
# Run this script on:
# elasticsearch-node-01
# elasticsearch-node-02
# elasticsearch-node-03


echo
echo "Install Marvel Agent"
plugin -i elasticsearch/marvel/latest

echo
echo "Restart Elasticsearch"
sudo /etc/init.d/elasticsearch restart