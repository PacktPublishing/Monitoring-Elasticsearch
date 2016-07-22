#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# This script installs Elasticsearch on Ubuntu/Debian

# Enable the repository via ```apt-get```, first add the gpg key:
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# Add repository
echo "deb http://packages.elastic.co/elasticsearch/1.7/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-1.7.list

# Install Elasticsearch
sudo apt-get install elasticsearch

# Start Elasticsearch
sudo service elasticsearch start