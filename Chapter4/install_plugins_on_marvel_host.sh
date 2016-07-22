#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script to configure Elasticsearch Marvel host with plugins

echo 
echo "Installing Elasticsearch-head"
plugin -i elasticsearch/mobz/head

echo 
echo "Installing Marvel"
plugin -i elasticsearch/marvel/latest

echo
echo "Restart Elasticsearch"
sudo /etc/init.d/elasticsearch restart