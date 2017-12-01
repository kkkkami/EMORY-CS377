SELECT distinct actor.fname,actor.lname
FROM actor,casts
WHERE actor.id = casts.aid AND casts.mid 
NOT IN(
SELECT casts.mid
FROM actor, casts
WHERE actor.fname = 'Kevin' AND actor.lname = 'Bacon' AND casts.aid = actor.id)
AND casts.mid IN(
SELECT c2.mid
FROM casts c2
WHERE c2.aid IN
(SELECT c1.aid
FROM casts c1
WHERE c1.mid IN(SELECT casts.mid
FROM actor, casts
WHERE actor.fname = 'Kevin' AND actor.lname = 'Bacon' AND casts.aid = actor.id)));