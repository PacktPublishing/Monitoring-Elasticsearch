#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Increases the compression on data for the twitter index

curl -XPOST elasticsearch-node-01:9200/twitter/_close
curl -XPUT elasticsearch-node-01:9200/twitter/_settings -d '{
    "settings": {
        "index.codec": "best_compression"
    }
}'
curl -XPOST elasticsearch-node-01:9200/twitter/_open