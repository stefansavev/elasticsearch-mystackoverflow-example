curl -XPUT localhost:9200/mystackoverflow/user/john_smith?pretty -d '
{
    "first_name" : "John",
    "last_name" :  "Smith",
    "about" :      "I love to go rock climbing",
    "interests": [ "cplusplus", "go" ]
}
'


curl -XPUT localhost:9200/mystackoverflow/user/patrick_miller?pretty -d '
{
    "first_name" : "Patrick",
    "last_name" :  "Miller",
    "about" :      "Love to code!",
    "interests": [ "javascript", "visual_basic" ]
}
'

