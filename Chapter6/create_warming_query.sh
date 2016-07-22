#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script for adding a warming query that fills up the "text" field in the field data cache

curl -XPOST 'http://elasticsearch-node-01:9200/twitter/_cache/clear'

curl -XPUT http://elasticsearch-node-01:9200/twitter/twitter/_warmer/text_agg_warmer?pretty -d '{
    "size" : 0,
    "query" : {
        "match_all" : {}
    },
    "aggs" : {
        "text" : {
            "terms" : {
                "field" : "text"
            }
        }  
    }
}'