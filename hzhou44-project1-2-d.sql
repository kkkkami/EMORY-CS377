USE imdb;
SELECT movie.name,casts.role
FROM actor, movie, casts
WHERE casts.mid = movie.id AND actor.fname = 'Steve' AND actor.lname = 'Carell' AND casts.aid = actor.id;