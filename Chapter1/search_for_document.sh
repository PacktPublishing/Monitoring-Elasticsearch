curl -XGET "http://localhost:9200/books/book/_search?pretty" -d '{
    "query" : {
        "query_string" : {
            "query" : "demand rigidly"
        } 
    },
    "size" : 10
}'
