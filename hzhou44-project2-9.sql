use imdb;
SELECT actor.id,actor.fname,actor.lname
FROM actor,casts,movie,genre
WHERE actor.id = casts.aid AND actor.gender = 'f' AND casts.mid = movie.id AND movie.year BETWEEN 2005 AND 2010 AND movie.id = genre.mid AND genre.genre='family' 
GROUP BY actor.id
HAVING count(movie.id) =(SELECT max(r1.a1)FROM (SELECT count(movie.id) AS a1
FROM actor,casts,movie,genre
WHERE actor.id = casts.aid AND actor.gender = 'f' AND casts.mid = movie.id AND movie.year BETWEEN 2005 AND 2010 AND movie.id = genre.mid AND genre.genre='family' 
GROUP BY actor.id) AS r1);