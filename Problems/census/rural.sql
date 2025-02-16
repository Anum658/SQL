CREATE VIEW "rural" AS
SELECT "id", "district", "locality", "families", "households", "population", "male", "female" FROM "census"
WHERE "locality" LIKE "%rural%";
--

--GROUP BY "district"

--SELECT * FROM "rural"
--LIMIT 10;
