#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# Path to dictionary file
DICTIONARY_PATH=/usr/share/dict/words
ELASTICSEARCH_URI=http://elasticsearch-node-01:9200/twitter

# Total dictionary words
TOTAL_WORDS=`wc -l $DICTIONARY_PATH | awk '{print $1}'`

while :
do
    # Pick a random word
    WORD_INDEX=`python -c "import random;print random.randint(1,$TOTAL_WORDS)"`
    WORD=`sed "${WORD_INDEX}q;d" $DICTIONARY_PATH`

    # Run query
    echo "Querying elasticsearch $ELASTICSEARCH_URI for $WORD "
    curl -XGET "${ELASTICSEARCH_URI}/_search?q=$WORD"

    # Sleep for one second before running the next query
    echo
    echo "Press [CTRL+C] to stop.."
    sleep 1
done