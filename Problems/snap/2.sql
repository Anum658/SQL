--CREATE INDEX "search_expireTime"
--ON "messages"("id");

--EXPLAIN QUERY PLAN
SELECT "expires_timestamp" FROM "messages"
WHERE "id" = "151";
