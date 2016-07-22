#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script to install nagios-nrpe-server
# Run this on:
# elasticsearch-nagios-01

sudo apt-get install nagios3 nagios-nrpe-plugin

wget https://raw.githubusercontent.com/orthecreedence/check_elasticsearch/master/check_elasticsearch
chmod +x check_elasticsearch
sudo cp check_elasticsearch /usr/lib/nagios/plugins/