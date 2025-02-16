CREATE VIEW "most_populated" AS
SELECT "district", "locality", "families", "households", "population", "male", "female" FROM "census"
ORDER BY "population" DESC;
--SELECT * FROM "most_populated"
--LIMIT 10;
