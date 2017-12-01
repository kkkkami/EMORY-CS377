USE imdb;
SELECT director.fname,director.lname, count(movie.id)
FROM director,movie,movie_director
WHERE director.id = movie_director.did AND movie.id = movie_director.mid AND
 (movie.year BETWEEN 2005 AND 2010)
 GROUP BY director.fname, director.lname
 ORDER BY count(movie.id) DESC
 LIMIT 100;