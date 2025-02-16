--CREATE INDEX "sqlite_autoindex_friends_1"
--ON "messages"("sqlite_autoindex_friends_1");

SELECT "user_id" FROM "friends"
WHERE "friend_id" = (SELECT "id" FROM "users" WHERE "username" = 'lovelytrust487')
INTERSECT
SELECT "user_id" FROM "friends"
WHERE "friend_id" = (SELECT "id" FROM "users" WHERE "username" = 'exceptionalinspiration482');
