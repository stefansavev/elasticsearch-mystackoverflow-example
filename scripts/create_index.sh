curl -XPUT 'localhost:9200/mystackoverflow?pretty' -d '
{
    "settings" : {
        "index" : {
            "number_of_shards" : 10,
            "number_of_replicas" : 1
        }
    }
}
'
