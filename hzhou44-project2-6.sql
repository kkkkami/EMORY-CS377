USE imdb;
SELECT actor.fname,actor.lname
FROM actor
WHERE actor.id
IN (
SELECT a1.id
FROM actor a1
WHERE NOT EXISTS(
SELECT c1.mid
FROM casts c1
WHERE c1.mid IN(SELECT casts.mid
FROM actor,genre,movie,casts
WHERE casts.aid = actor.id AND actor.fname = 'Stephen' AND actor.lname = 'Chow' AND movie.year < 2009 AND genre.mid = movie.id AND genre.genre = 'comedy' AND movie.id = casts.mid
AND c1.mid NOT IN(SELECT c2.mid
FROM casts c2
WHERE c2.aid = a1.id))))
AND actor.id NOT IN(
SELECT actor.id
FROM actor
WHERE actor.fname = 'Stephen' AND actor.lname = 'Chow');