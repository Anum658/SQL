
SELECT "schools"."name"
FROM "graduation_rates"
LEFT JOIN "schools"
ON "graduation_rates"."school_id" = "schools"."id"
WHERE "graduation_rates"."graduated" = 100;
