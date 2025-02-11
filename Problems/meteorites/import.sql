CREATE TABLE "meteorites_temp" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" NUMERIC,
    "mass" INTEGER,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" NUMERIC  ,
    "long" NUMERIC
);

.import --csv --skip 1 meteorites.csv meteorites_temp


UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = "";
--SELECT * FROM "meteorites_temp"

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = "";

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = "";

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = "";


UPDATE "meteorites_temp"
SET "lat" = ROUND("lat",2),
    "long" = ROUND("long",2);

DELETE FROM "meteorites_temp" WHERE "nametype" = "Relict";
--SELECT * FROM "meteorites_temp"
ORDER BY "year" ASC, "name"
--LIMIT 100;
