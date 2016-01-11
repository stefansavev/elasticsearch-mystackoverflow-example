curl -XPUT 'localhost:9200/mystackoverflow/_mapping/activity_log?pretty' -d '
{
  "properties": {
    "user_id": {
      "type": "string",
      "index":    "not_analyzed"
    },
    "item_id": {
      "type": "string",
      "index":    "not_analyzed"
    },
    "item_type": {
      "type": "string",
      "index":    "not_analyzed"
    },
    "activity_type": {
      "type": "string",
      "index":    "not_analyzed"
    },
    "referer_string": {
      "type": "string",
      "index": "not_analyzed"
    },
    "referer_type": {
      "type": "string",
      "index": "not_analyzed"
    },
    "created_at": {
      "type": "date",
      "format": "date_hour_minute_second_millis"
    }
  }
}
'
