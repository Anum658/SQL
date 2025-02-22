SELECT "players"."first_name","players"."last_name",
"salaries"."salary","performances"."HR","salaries"."year"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
WHERE "salaries"."year" = "performances"."year"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "performances"."HR" DESC, "salaries"."salary" ASC

