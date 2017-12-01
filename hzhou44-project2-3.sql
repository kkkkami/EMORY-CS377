USE imdb;
SELECT actor.fname,actor.lname, actor.id
FROM actor
WHERE NOT EXISTS(SELECT movie.id
									 FROM movie
									 WHERE movie.id IN(SELECT mid
																	   FROM casts
                                                                       WHERE casts.aid = actor.id)
							         AND movie.id NOT IN(SELECT movie_director.mid
																		 FROM movie_director, director
                                                                         WHERE movie_director.did = director.id AND director.fname = 'Steven' AND director.lname = 'Soderbergh'));