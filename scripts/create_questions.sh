curl -XPUT localhost:9200/mystackoverflow/question/pointers_in_cpp?pretty -d '
{
    "title" : "Pointers in C++",
    "full_text" :  "Does someone have a good tutorial on pointers in C++?",
    "user_id" :      "john_smith",
    "tags": ["cpp", "pointers"],
    "created_at": "2014-01-02'T'01:01:01.000",
    "last_modified_at": "2014-01-02'T'01:01:01.000"
}
'

curl -XPUT localhost:9200/mystackoverflow/question/difference_equals?pretty -d '
{
    "title" : "What is the difference between === and == in JavaScript",
    "full_text" :  "I ve seen that both === and == are used as equal in JavaScript. What is the difference?",
    "user_id" :      "patrick_miller",
    "tags": ["javascript", "syntax"],
    "created_at": "2014-04-08'T'01:01:01.000",
    "last_modified_at": "2014-04-08'T'01:01:01.000"
}
'


curl -XPUT localhost:9200/mystackoverflow/question/javascript_pointers?pretty -d '
{
    "title" : "How to simulate pointers in javascript?",
    "full_text" :  "Probably a bad question, but anyway",
    "user_id" :      "patrick_miller",
    "tags": ["javascript", "pointers"],
    "created_at": "2014-04-08'T'01:01:01.000",
    "last_modified_at": "2014-04-08'T'01:01:01.000"
}
'
