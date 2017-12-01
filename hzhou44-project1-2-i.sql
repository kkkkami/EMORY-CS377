USE imdb;
SELECT actor.id, actor.fname, actor.lname
FROM actor, casts, movie
WHERE actor.id = casts.aid AND movie.id = casts.mid
AND  movie.year = 2004
GROUP BY actor.id, actor.fname,actor.lname
HAVING count(DISTINCT movie.id)>=10
