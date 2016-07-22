#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

ELASTICSEARCH_HOST=elasticsearch-node-01

echo "Counts number of Tweets in Elasticsearch"
curl -XGET "http://{ELASTICSEARCH_HOST}:9200/twitter/_search?size=0&pretty"
