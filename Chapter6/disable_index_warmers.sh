#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Disable index warmers

curl -XPUT elasticsearch-node-01:9200/twitter/_settings -d '{
    "settings" : {
        "index.warmer.enabled" : "false"
    }
}'
