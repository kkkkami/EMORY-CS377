USE imdb;
SELECT movie.name, year
FROM movie, movie_director, genre, director 
WHERE genre = 'thriller' AND director.fname = 'Steven' AND director.lname = 'Soderbergh' 
AND genre.mid = movie.id AND director.id = movie_director.did AND movie.id = movie_director.mid
ORDER BY year DESC;