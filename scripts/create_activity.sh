#notice XPOST vs XPUT
#Create ids automatically
curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "john_smith",
    "item_id": "javascript_pointers",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "landing_page",
    "referer_type": "site_page",
    "created_at": "2014-01-02'T'01:01:01.000"
}
'

curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "john_smith",
    "item_id": "javascript_pointers",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "landing_page",
    "referer_type": "site_page",
    "created_at": "2014-01-02'T'01:02:01.000"
}
'

curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "john_smith",
    "item_id": "javascript_pointers",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "www.google.com/?google_query",
    "referer_type": "google",
    "created_at": "2014-01-02'T'01:02:01.000"
}
'

curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "user_a",
    "item_id": "item_a",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "www.google.com/?google_query",
    "referer_type": "google",
    "created_at": "2014-01-02'T'01:02:01.000"
}
'

curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "user_a",
    "item_id": "item_b",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "www.google.com/?google_query",
    "referer_type": "google",
    "created_at": "2014-01-02'T'01:02:01.000"
}
'

curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "user_c",
    "item_id": "item_b",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "www.google.com/?google_query",
    "referer_type": "google",
    "created_at": "2014-01-02'T'01:02:01.000"
}
'

curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "user_d",
    "item_id": "item_b",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "www.google.com/?google_query",
    "referer_type": "google",
    "created_at": "2014-01-02'T'01:02:01.000"
}
'

curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "user_a",
    "item_id": "item_b",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "www.google.com/?google_query",
    "referer_type": "google",
    "created_at": "2014-01-02'T'01:02:01.000"
}
'

curl -XPOST localhost:9200/mystackoverflow/activity_log/?pretty -d '
{
    "user_id": "user_b",
    "item_id": "item_c",
    "item_type": "question",
    "activity_type": "view",
    "referer_string": "www.google.com/?google_query",
    "referer_type": "google",
    "created_at": "2014-01-02'T'01:02:01.000"
}
'
