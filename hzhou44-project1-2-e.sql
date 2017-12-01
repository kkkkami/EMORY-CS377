USE imdb;
SELECT DISTINCT actor.fname, actor.lname
FROM actor, director, movie_director,casts
WHERE director.fname = 'Woody' AND director.lname = 'Allen' AND actor.id = casts.aid
AND movie_director.mid = casts.mid AND director.id = movie_director.did
ORDER BY actor.fname;