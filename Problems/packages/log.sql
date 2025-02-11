
-- *** The Lost Letter ***
SELECT "address" , "type" FROM "addresses"
WHERE "id" =
(SELECT "to_address_id"
FROM "packages"
WHERE "from_address_id" = (
SELECT "id" FROM "addresses"
WHERE "address" = '900 Somerville Avenue'
) AND "contents" LIKE '%Congratulatory%');

-- *** The Devious Delivery ***
SELECT "address", "type" FROM "addresses"
WHERE "id" IN (
SELECT "address_id" FROM "scans"
WHERE "package_id" = (
SELECT "id" FROM "packages"
WHERE "from_address_id" IS NULL)
AND "action" = 'Drop');

-- *** The Forgotten Gift ***
SELECT "name" FROM "drivers"
WHERE "id" = (
SELECT "driver_id" FROM "scans"
WHERE "package_id" = (
SELECT "id"
FROM "packages"
WHERE "from_address_id" = (
SELECT "id" FROM "addresses"
WHERE "address" =  '109 Tileston Street'
))
ORDER BY "timestamp" DESC
LIMIT 1
);

