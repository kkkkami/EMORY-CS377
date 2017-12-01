USE imdb;
SELECT movie.name,movie.id
FROM movie
WHERE movie.id IN(SELECT movie.id
FROM movie
WHERE movie.year = 2010)
AND movie.id NOT IN(SELECT casts.mid
FROM casts, actor
WHERE casts.aid = actor.id AND actor.gender = 'f');
