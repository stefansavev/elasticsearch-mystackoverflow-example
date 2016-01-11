curl -XPUT 'localhost:9200/mystackoverflow/_mapping/question?pretty' -d '
{
  "properties": {
    "title": {
      "type": "string",
      "analyzer": "english"
    },
    "full_text": {
      "type": "string",
      "analyzer": "english"
    },
    "user_id": {
      "type": "string",
      "index":    "not_analyzed"
    },
    "tags" : {
            "type" : "string",
            "index":    "not_analyzed"
            },
    "created_at": {
      "type": "date",
      "format": "date_hour_minute_second_millis"

    },
    "last_modified_at": {
      "type": "date",
      "format": "date_hour_minute_second_millis"
    }
  }
}
'
