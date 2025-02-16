
--------------------------------- MARKET PLACE PROJECT---------------------------------
-- Represent buyers buying on site
CREATE TABLE "buyers" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL UNIQUE,
    "postal_code" TEXT NOT NULL,
    "contact_num" NUMERIC NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

-- Represent sellers on site
CREATE TABLE "sellers" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL UNIQUE,
    "postal_code" INTEGER NOT NULL,
    "contact_num" NUMERIC NOT NULL UNIQUE,
    "sending" TEXT NOT NULL,
    PRIMARY KEY("id")
);

-- Represent delivery services on site
CREATE TABLE "delivery_service" (
    "id" INTEGER,
    "buyer_id" INTEGER,
    "seller_id" INTEGER,
    "service_name" TEXT NOT NULL,
    "delivery_days" INTEGER NOT NULL,
    "delivery_charges" INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("buyer_id") REFERENCES "buyers"("id"),
    FOREIGN KEY("seller_id") REFERENCES "sellers"("id")
);

-- Represent categories of the daily usage things being bought and sold on site
CREATE TABLE "local_categories" (
    "id" INTEGER,
    "category" TEXT NOT NULL,
    "used_or_new" TEXT NOT NULL,
    "sell_or_givenaway" TEXT NOT NULL,
    PRIMARY KEY("id")
);

-- Represent description of things being bought and sold on site
CREATE TABLE "description" (
    "id" INTEGER,
    "buyer_id" INTEGER,
    "seller_id" INTEGER,
    "category_id" INTEGER,
    "item_name" TEXT NOT NULL,
    "price" INTEGER,
    "sending" TEXT NOT NULL, --will be "yes" or ""no
    PRIMARY KEY("id"),
    FOREIGN KEY("buyer_id") REFERENCES "buyers"("id"),
    FOREIGN KEY("seller_id") REFERENCES "sellers"("id"),
    FOREIGN KEY("category_id") REFERENCES "local_categories"("id")
);

--Add indexes for optimization according to queries
CREATE INDEX "search_seller_name" ON "description" ("seller_id","category_id");
CREATE INDEX "search_item_name" ON "description" ("item_name");
CREATE INDEX "search_delivery_service" ON "delivery_service" ("buyer_id");
CREATE INDEX "search_buyer" ON "buyers" ("name");
CREATE INDEX "search_delivery_service_charges" ON "delivery_service" ("delivery_charges");
