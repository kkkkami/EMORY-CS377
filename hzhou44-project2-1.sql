USE imdb;
SELECT DISTINCT r1.mname, r1.my
FROM 
(SELECT movie.name mname, movie.id mvid,movie.year my
FROM movie, actor, casts
WHERE movie.id = casts.mid AND actor.id = casts.aid AND actor.fname = 'Matt' AND actor.lname = 'Damon') r1,
(SELECT movie.name mname, movie.id mvid,movie.year my
FROM movie, actor, casts
WHERE movie.id = casts.mid AND actor.id = casts.aid AND actor.fname = 'George' AND actor.lname = 'Clooney') r2,
(SELECT movie.name mname, movie.id mvid,movie.year my
FROM movie, actor, casts
WHERE movie.id = casts.mid AND actor.id = casts.aid AND actor.fname = 'Brad' AND actor.lname = 'Pitt') r3
WHERE r1.mvid = r2.mvid AND r2.mvid = r3.mvid;