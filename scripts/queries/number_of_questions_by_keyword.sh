#for each keyword used in the questions output the number of questions per keyword

curl -XGET 'localhost:9200/mystackoverflow/question/_search?pretty' -d '
{
   "size": 0,
   "aggs": {
        "group_by_tag": {
            "terms": { "field": "tags" }
        }
    }
}'

