SELECT "first_name", "last_name" , "debut" From "players"
WHERE "birth_city" LIKE "Pittsburgh" AND "birth_state" LIKE "PA"
ORDER BY "debut" DESC ,"first_name" ASC, "last_name" ASC
