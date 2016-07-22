#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script to load twitter data into Elasticsearch using stream2es
# NOTE: Update this script to use your Twitter API key

CONSUMER_KEY=YourTwitterKey
CONSUMER_SECRET=YourTwitterSecretKey
ELASTICSEARCH_HOST=elasticsearch-node-01

./stream2es twitter --authorize --key $CONSUMER_KEY --secret $CONSUMER_SECRET

./stream2es twitter --target http://${ELASTICSEARCH_HOST}:9200/twitter/status --settings '{
    "settings" : {
        "index" : {
            "number_of_shards" : 3,
            "number_of_replicas" : 2
        }
    }
}'

