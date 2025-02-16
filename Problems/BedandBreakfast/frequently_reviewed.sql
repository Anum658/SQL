--DROP VIEW "frequently_reviewed";
CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "listings"."property_type", "listings"."host_name",
        COUNT("reviews"."comments") AS "reviews"
FROM "listings" JOIN "reviews"
ON "listings"."id" = "reviews"."listing_id"
GROUP BY "reviews"."comments"
ORDER BY "reviews" DESC, "property_type", "host_name";


