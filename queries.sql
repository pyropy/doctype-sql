USE twitter;

-- select last 30 tweets where username is Mark
SELECT T.*,
       FU.username,
       FU.first_name,
       FU.last_name
FROM   users U
       INNER JOIN followers F
               ON ( F.follower = U.id )
       INNER JOIN users FU
               ON ( FU.id = F.following )
       INNER JOIN tweets T
               ON( T.user = F.id )
WHERE  U.username = "mark"
ORDER  BY T.id DESC
LIMIT  30;  

-- lets say we have 60 tweets in our db, we can send 
-- id of last tweet and say that all other id's must be 
-- less then the last id (e.g. id = 30)
SELECT T.*,
       FU.username,
       FU.first_name,
       FU.last_name
FROM   users U
       INNER JOIN followers F
               ON ( F.follower = U.id )
       INNER JOIN users FU
               ON ( FU.id = F.following )
       INNER JOIN tweets T
               ON( T.user = F.id )
WHERE  U.username = "mark"
       AND T.id < 30 -- e.g. 30 is last post id that we've loaded
ORDER  BY T.id DESC
LIMIT  30;