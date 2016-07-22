#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Script for enabling field eager fileld warming for the "text" field

curl -XPUT http://elasticsearch-node-01:9200/twitter/_mapping/twitter -d '{
    "text": {
        "type" : "string",
        "doc_values" : true,
        "fielddata" : {
            "loading" : "eager" 
        }
    }
}'