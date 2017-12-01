USE imdb;
(SELECT movie.name, movie.year
FROM movie, actor, genre,casts
WHERE genre ='comedy' AND actor.fname = 'Tom' AND actor.lname = 'Hanks' AND movie.id = casts.mid
AND movie.id = genre.mid AND actor.id = casts.aid)
UNION
(SELECT movie.name, movie.year
FROM movie, director, genre,movie_director
WHERE genre ='comedy' AND director.fname = 'Tom' AND director.lname = 'Hanks' AND movie.id = movie_director.mid
AND movie.id = genre.mid AND director.id = movie_director.did);