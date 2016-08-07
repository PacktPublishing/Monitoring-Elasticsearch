curl -XPOST "http://localhost:9200/books/book?pretty" -d '{
    "text" : "We demand rigidly defined areas of doubt and uncertainty!",
    "author" : "Douglas Adams",
    "published" : "1979-10-12",
    "likes" : 583,
    "source" : "The Hitchhiker''s Guide to the Galaxy",
    "tags" : ["science fiction", "satire"]
}'
