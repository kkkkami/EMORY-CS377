USE imdb;
SELECT genre
FROM genre,movie
WHERE name = 'Despicable Me' AND mid = id;