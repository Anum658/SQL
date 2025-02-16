--DROP INDEX "search_messages_by_from_user_id";

--CREATE INDEX "search_messages_by_from_user_id"
--ON "messages"("from_user_id");

--EXPLAIN QUERY PLAN
SELECT "to_user_id"
FROM "messages" JOIN "users"
ON "messages"."from_user_id" = "users"."id"
WHERE "users"."username" = "creativewisdom377"
GROUP BY "to_user_id"
ORDER BY COUNT("to_user_id") DESC
LIMIT 3;
