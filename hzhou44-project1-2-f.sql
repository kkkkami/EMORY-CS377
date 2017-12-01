USE imdb;
SELECT DISTINCT movie.name, director.fname, director.lname
FROM movie,casts,movie_director,actor,director
WHERE actor.gender = 'F' AND casts.aid = actor.id 
AND movie.id = casts.mid AND movie.id = movie_director.mid AND director.id = movie_director.did 
AND director.fname = actor.fname AND director.lname = actor.lname;
