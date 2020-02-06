USE twitter;

-- select last 30 tweets where username is Mark
SELECT *
FROM   tweets
       JOIN users
         ON users.username = tweets.user
WHERE  tweets.user = "mark"
ORDER  BY tweets.id DESC
LIMIT  30;

-- offset by 30 tweets and select next 30 tweets for user with username Mark
SELECT *
FROM   tweets
       JOIN users
         ON users.username = tweets.user
WHERE  tweets.user = "mark"
ORDER  BY tweets.id DESC
LIMIT  30, 30;  