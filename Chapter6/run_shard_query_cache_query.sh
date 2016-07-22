#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Runs a query that hits against the shard query cache

curl -XGET 'elasticsearch-node-01:9200/twitter/_search?search_type=count&query_cache=true' -d '{
    "size" : 2,
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