--DROP INDEX "search_messages_by_to_user_id";

--CREATE INDEX "search_messages_by_to_user_id"
--ON "messages"("to_user_id");

SELECT "users"."username" FROM "users"
JOIN "messages" ON "users"."id" = "messages"."to_user_id"
GROUP BY "messages"."to_user_id"
ORDER BY COUNT("messages"."to_user_id") DESC, "users"."username"
LIMIT 1;
