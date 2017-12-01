USE imdb;
SELECT actor.fname,actor.lname, movie.name, casts.role
FROM actor, movie,casts
WHERE actor.id = casts.aid AND movie.id = casts.mid AND movie.year = 2011 AND casts.role REGEXP 'officer';