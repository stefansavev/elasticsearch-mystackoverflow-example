#curl -XPOST 'localhost:9200/mystackoverflow/_close'

curl -XPUT 'localhost:9200/mystackoverflow/_mapping/user' -d '
{
  "properties": {
    "first_name": {
      "type": "string",
      "analyzer": "standard"
    },
    "last_name": {
      "type": "string",
      "analyzer": "standard"
    },
    "location": {
      "type": "string",
      "analyzer": "standard"
    },
    "about_me": {
      "type": "string",
      "analyzer": "english"
    },

    "interests" : {
            "type" : "string",
            "index":    "not_analyzed"
            },

    "created_at": {
      "type": "date",
      "format": "date_hour_minute_second_millis"
    }
  }
}
'

#curl -XPOST 'localhost:9200/mystackoverflow/_open'
