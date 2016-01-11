#originally
curl -GET localhost:9200/mystackoverflow/user/john_smith?pretty

#change the about field
#notice XPOST vs XPUT
curl -XPOST localhost:9200/mystackoverflow/user/john_smith/_update?pretty -d '
{
  "doc": {
        "about" : "I love to go rock climbing and kayaking"
    }
}
'

curl -GET localhost:9200/mystackoverflow/user/john_smith?pretty

#for this to work must enable scripting by including
# script.inline: on
#in elasticsearch_dir/config/elasticsearch.yml 
curl -XPOST localhost:9200/mystackoverflow/user/john_smith/_update?pretty -d '
{
   "script" : "ctx._source.interests += new_item",
   "params" : {
      "new_item" : "java"
   }
}
'

curl -GET localhost:9200/mystackoverflow/user/john_smith?pretty

#do not put duplicates in the list
curl -XPOST localhost:9200/mystackoverflow/user/john_smith/_update?pretty -d '
{
   "script" : "ctx._source.interests = (ctx._source.interests + new_item).unique( false )",
   "params" : {
      "new_item" : "java"
   }
}
'

curl -GET localhost:9200/mystackoverflow/user/john_smith?pretty
