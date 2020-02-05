-- select last 30 tweets where username is Mark
SELECT *
FROM   twitter.tweets,
       twitter.users
WHERE  twitter.tweets.user = "Mark"
ORDER  BY twitter.tweets.id DESC
LIMIT  30;

-- offset by 30 tweets and select next 30 tweets for user with username Mark
SELECT *
FROM   twitter.tweets,
       twitter.users
WHERE  twitter.tweets.user = "Mark"
ORDER  BY twitter.tweets.id DESC
LIMIT  30, 30;  