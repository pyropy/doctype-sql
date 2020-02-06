USE twitter;

-- select last 30 tweets where username is Mark
SELECT *
FROM   tweets T
       JOIN users U
         ON U.username = T.user
WHERE  T.user = "mark"
ORDER  BY T.id DESC
LIMIT  30;

-- offset by 30 tweets and select next 30 tweets for user with username Mark
SELECT *
FROM   tweets T
       JOIN users U
         ON U.username = T.user
WHERE  T.user = "mark"
ORDER  BY T.id DESC
LIMIT  30, 30;  