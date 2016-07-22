#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script to install Logstash on elasticsearch-marvel-01

sudo mkdir /opt/logstash
sudo chown -R `whoami` /opt/logstash
cd /opt/logstash
wget https://download.elastic.co/logstash/logstash/logstash-2.1.1.tar.gz
tar xzvf logstash-2.1.1.tar.gz
cd logstash-2.1.1/