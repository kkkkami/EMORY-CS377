use imdb;
SELECT DISTINCT movie.id,movie.name
FROM movie,actor, casts
WHERE movie.id = casts.mid AND casts.aid = actor.id 
AND (actor.id,movie.id) IN(SELECT actor.id,movie.id
											     FROM movie, casts,actor
												 WHERE movie.id = casts.mid AND movie.year = 2004
												 AND casts.aid = actor.id
												 GROUP BY actor.id,movie.id
												 HAVING count(role)>1);