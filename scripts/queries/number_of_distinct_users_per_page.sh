# group by item_id, for each item give the number of distinct users 
# limit the number of items to top by distinct users
# 

curl -XGET 'localhost:9200/mystackoverflow/activity_log/_search??request_cache=true&pretty' -d '
{
   size: 0, 

  "query": {
      "filtered": {
         "query": {
              "match_all": {}
         },
         "filter": {
            "range" : {
                "created_at" : {
                    "gte" : "now-1000d/d",
                    "lt" :  "now/d"
                }
            }
         }
      }
   },

   "aggs": {
        "group_by_item": {
             "terms": { 
                  "field": "item_id",
                  "size": 2,
                  "order" : { "distinct_users" : "desc" }
              },
              "aggs" : {
                  "distinct_users" : {
                      "cardinality" : {
                        "field" : "user_id"
                      }
                  }
              }
        }
    }
}'
