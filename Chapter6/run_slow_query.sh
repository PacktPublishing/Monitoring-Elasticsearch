#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script for running a slow query that fills up the field data cache
# Running this query after running adding a 

curl -XPOST 'http://elasticsearch-node-01:9200/twitter/_cache/clear'

curl -XGET 'http://elasticsearch-node-01:9200/twitter/_search' -d '{
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
}' | python -m json.tool