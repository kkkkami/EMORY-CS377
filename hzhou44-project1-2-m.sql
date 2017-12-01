use imdb;
SELECT actor.id, actor.fname,actor.lname,count(DISTINCT movie.id)
FROM movie,actor, casts
WHERE actor.id = casts.aid 
AND casts.mid = movie.id AND movie.id IN(SELECT movie.id
																	  FROM movie,actor,casts
																	  WHERE actor.id = casts.aid 
																	  AND casts.mid = movie.id AND actor.lname = 'Streep' AND actor.fname = 'Meryl')
GROUP BY actor.id, actor.fname, actor.lname

