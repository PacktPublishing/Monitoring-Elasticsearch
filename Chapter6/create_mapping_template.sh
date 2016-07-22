#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Creates an Elasticsearch mapping for indices starting with the name "twitter-*"

curl -XPUT elasticsearch-node-01:9200/_template/template_1 -d '
{
    "template" : "twitter-*",
    "settings" : {
        "number_of_shards" : 5
    },
    "mappings" : {
        "twitter" : {
            "status" : { 
                ...
            }
            ...
        }
    }
}'

# Create an alias that will hit all of the twitter-* indices
curl -XPOST elasticsearch-node-01:9200/_aliases -d '{
    "actions" : [
        { "add" : { "index" : "twitter-*", "alias" : "all_twitter" } }
    ]
}'