SELECT "first_name","last_name"  FROM(
SELECT "first_name","last_name" FROM (
SELECT "players"."first_name","players"."last_name"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
WHERE "performances"."H" > 0 AND "salaries"."year" = "performances"."year" AND "salaries"."year" = 2001
ORDER BY "salaries"."salary"/"performances"."H"
LIMIT 10
)
INTERSECT
SELECT "first_name","last_name" FROM (
SELECT "players"."first_name","players"."last_name"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
WHERE "performances"."RBI" > 0 AND "salaries"."year" = "performances"."year" AND "salaries"."year" = 2001
--ORDER BY "salaries"."salary"/"performances"."RBI"
ORDER BY "salaries"."salary"/"performances"."RBI"
LIMIT 10))
ORDER BY "last_name" ASC
