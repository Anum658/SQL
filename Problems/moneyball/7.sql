SELECT "players"."first_name", "players"."last_name"
FROM "players"
JOIN "salaries"
ON "players"."id" = "salaries"."player_id"
--WHERE "salaries"."year" = 2001
ORDER BY "salaries"."salary" DESC
LIMIT 1
