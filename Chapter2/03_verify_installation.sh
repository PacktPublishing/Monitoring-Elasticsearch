#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# This script verifies that an Elasticsearch cluster was properly installed

read -p "Verify that Elasticsearch is running... [Press ENTER to Continue]"
curl http://localhost:9200/

read -p "Insert a document into Elasticsearch [Press ENTER to Continue]"
curl -XPUT 'http://localhost:9200/twitter/user/lababidi?pretty' -d '{ "name" : "Mahmoud Lababidi" }'

read -p "Fetching inserted document [Press ENTER to Continue]"
curl -XGET 'http://localhost:9200/twitter/user/lababidi?pretty=true'

read -p "Fetching a non-existent document [Press ENTER to Continue]"
curl -XGET 'http://localhost:9200/twitter/user/kimchy?pretty=true'

read -p "Verify open files limit is set [Press ENTER to Continue]"
curl -XGET 'http://localhost:9200/_nodes?os=true&process=true&pretty=true'

read -p "Verify mlockall:true is set [Press ENTER to Continue]"
curl 'http://localhost:9200/_nodes/process?pretty'
