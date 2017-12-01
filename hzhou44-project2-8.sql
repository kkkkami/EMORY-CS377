use imdb;
SELECT movie.name, actor.id,actor.fname,actor.lname, count(casts.role)
FROM movie,casts,actor
WHERE movie.id = casts.mid AND casts.aid = actor.id AND movie.year = 2007
GROUP BY movie.name,actor.id
HAVING count(distinct casts.role)>=5
ORDER BY movie.name;