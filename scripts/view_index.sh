curl -XGET 'http://localhost:9200/mystackoverflow/_settings?pretty'

curl -XGET 'http://localhost:9200/mystackoverflow/_mappings?pretty'

curl -XGET 'http://localhost:9200/mystackoverflow/_mapping/user?pretty'

echo "question mapping"
curl -XGET 'http://localhost:9200/mystackoverflow/_mapping/question?pretty'
