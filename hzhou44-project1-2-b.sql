USE imdb;
SELECT year, name
FROM movie, genre
WHERE genre = 'animation' AND id = mid AND (year BETWEEN 2011 AND 2013)
ORDER BY year,name;