USE imdb;
SELECT movie.year,count(movie.id)
FROM movie
WHERE movie.id IN(SELECT movie.id
FROM casts
WHERE casts.mid = movie.id)
AND movie.id NOT IN(SELECT casts.mid
FROM casts, actor
WHERE casts.aid = actor.id AND actor.gender = 'm')
GROUP BY movie.year;