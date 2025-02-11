SELECT "expenditures"."pupils", "staff_evaluations"."unsatisfactory"
FROM "staff_evaluations"
INNER JOIN "expenditures"
ON "staff_evaluations"."district_id" = "expenditures"."district_id"
