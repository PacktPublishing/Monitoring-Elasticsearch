#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script to start logstash on elasticsearch-marvel-01

cd /opt/logstash
./logstash-2.1.1/bin/logstash agent -f logstash.conf 