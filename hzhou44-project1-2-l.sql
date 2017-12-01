USE imdb;
SELECT director.fname,director.lname
FROM director
WHERE director.lname = 'Zapata' AND
director.id NOT IN(SELECT director.id
FROM movie_director, movie,director
WHERE movie_director.did = director.id AND movie.id = movie_director.mid AND movie.year = 2005
AND director.lname = 'Zapata');