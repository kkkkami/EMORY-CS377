use imdb;
SELECT director.fname,director.lname,movie.name,movie.year
FROM director,movie,genre,movie_director
WHERE director.id = movie_director.did AND movie_director.mid = movie.id AND movie.id = genre.mid AND genre.genre = 'biography'
AND movie.year % 4 = 0;