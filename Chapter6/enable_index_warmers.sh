#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Enable index warmers

curl -XPUT elasticsearch-node-01:9200/twitter/_settings -d '{
    "settings" : {
        "index.warmer.enabled" : "true"
    }
}'