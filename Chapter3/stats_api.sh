#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# This script runs a few commands available on the Elasticsearch Cat API.

# Provides a document count for the entire cluster
curl -XGET "http://elasticsearch-node-01:9200/_cat/count?v"

echo
echo "Shows the health color code for the cluster"
curl -XGET "http://elasticsearch-node-01:9200/_cat/health?v"

echo
echo "Provides a list of all indices, their document count, and size in your cluster"
curl -XGET "http://elasticsearch-node-01:9200/_cat/indices?v"

echo
echo "Provides a list of index shards and how they are distributed."
curl -XGET "http://elasticsearch-node-01:9200/_cat/shards?v"
