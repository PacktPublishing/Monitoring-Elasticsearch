#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Installs Elasticsearch-head, BigDesk, and Marvel

echo "Installing Elasticsearch-head"
sudo /usr/share/elasticsearch/bin/plugin --install mobz/elasticsearch-head

echo "Installing BigDesk"
sudo /usr/share/elasticsearch/bin/plugin --install lukas-vlcek/bigdesk

echo "Installing Marvel"
sudo /usr/share/elasticsearch/bin/plugin --install Elasticsearch/marvel/latest
