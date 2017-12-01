use imdb;
SELECT genre,count(DISTINCT actor.id)
FROM actor, genre, casts, movie
WHERE actor.id = casts.aid AND genre.mid = movie.id AND casts.mid = movie.id
AND movie.year = 2010
GROUP BY genre.genre