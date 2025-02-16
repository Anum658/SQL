
-- Add new buyers
INSERT INTO "buyers" ("name", "email", "postal_code", "contact_num")
VALUES ('Carter', 'cater123@gmail.com', '5033', '+4734567876'),
       ('zenke', 'zenke45123@gmail.com', '5029', '+473754886'),
       ('Ana', 'ana_high@gmail.com', '4123', '+4798765443'),
       ('William', 'William_musta@gmail.com', '4055', '+4799967876'),
       ('kristin', 'kri_fgr@gmail.com', '1564', '+4712459821');

-- Add new sellers
INSERT INTO "sellers" ("name", "email", "postal_code", "contact_num", "sending")
VALUES ('Zuni', 'zuni_fre@gmail.com', '4532', '+4700559966','yes'),
       ('Nellie', 'nellie_lab@gmail.com', '3065', '+4791905955','yes'),
       ('Diana', 'diana_kommune@gmail.com', '8184', '+4791905622','yes'),
       ('Helene', 'hele_skeie@gmail.com', '6164', '+4787650944','no'),
       ('Silje', 'silje_skole@gmail.com', '9095', '+4711009911','no');

-- Add new delivery_service
INSERT INTO "delivery_service" ("buyer_id", "seller_id", "service_name", "delivery_days", "delivery_charges")
VALUES (1,1,'posten', '4', '70'),
       (2,3,'helthjem', '5', '80'),
       (3,2,'bingo', '3', '70'),
       (4,5,'instabox', '2', '49'),
       (5,4,'dhl', '1', '149');

-- Add new categories
INSERT INTO "local_categories" ("category", "used_or_new", "sell_or_givenaway")
VALUES ('parents_childern', 'used', 'sell'),
       ('house_holds', 'used', 'givenaway'),
       ('electronics', 'used', 'sell'),
       ('furniture', 'used', 'givenaway'),
       ('mobile_phones', 'used', 'sell');

-- Add new description of items
INSERT INTO "description" ("buyer_id", "seller_id", "category_id", "item_name", "price", "sending")
VALUES (1,2,3, 'refrigerator', '400', 'yes'),
       (2,1,1,'shoes', '50', 'yes'),
       (3,4,2,'vacuum', NULL, 'no'),
       (4,3,5,'samsung s23', '2000', 'yes'),
       (5,5,4, 'chairs', NULL, 'no');

--search most cheapest service name for buyers
SELECT "name", "service_name" FROM "buyers"
JOIN "delivery_service" ON "delivery_service"."buyer_id" = "buyers"."id"
ORDER BY "delivery_charges" ASC
LIMIT 1;

--search delivery services attributes by buyer name
SELECT "delivery_service"."service_name", "delivery_service"."delivery_days",
       "delivery_service"."delivery_charges"
FROM "delivery_service" JOIN "buyers"
ON "buyers"."id" =  "delivery_service"."buyer_id"
WHERE "buyers"."name" = 'zenke';

--Search delivery service name by the specific item buyer has bought
SELECT "delivery_service"."service_name"
FROM "delivery_service" JOIN "buyers"
ON "buyers"."id" =  "delivery_service"."buyer_id"
JOIN "description" ON "buyers"."id" =  "description"."buyer_id"
WHERE "description"."item_name" = 'refrigerator';

--seacrh seller name by the category of item they have sold
SELECT "sellers"."name"
FROM "sellers"
JOIN "description" ON "sellers"."id" =  "description"."seller_id"
JOIN "local_categories" ON "local_categories"."id" = "description"."category_id"
WHERE "local_categories"."category" = 'house_holds';
