#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Enables the shard query cache for the twitter index

curl -XPUT elasticsearch-node-01:9200/twitter/_settings?pretty -d'{
    "index.cache.query.enable": true 
}'