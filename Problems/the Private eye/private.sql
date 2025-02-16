--SELECT * FROM "sentences"
--LIMIT 10;

--CREATE VIEW "message" AS
--SELECT "sentence" AS "phrase" FROM "sentences"
CREATE TABLE "triplets"(
    "sentence_id" INTEGER,
    "start_char" INTEGER,
    "length"  INTEGER
);

INSERT INTO "triplets"("sentence_id", "start_char", "length")
VALUES(14,98,4),
      (114,3,5),
      (618,72,9),
      (630,7,3),
      (932,12,5),
      (2230,50,7),
      (2346,44,10),
      (3041,14,5);
--SELECT "sentence_id", "start_char", "length" FROM "triplets"
--SELECT substr(
CREATE VIEW "message" AS
SELECT substr("sentences"."sentence", "start_char", "length") AS "phrase"
FROM "sentences"
JOIN "triplets"
ON "sentences"."id" = "triplets"."sentence_id";

--(SELECT "sentence_id" FROM "triplets")
