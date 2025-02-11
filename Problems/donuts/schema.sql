CREATE TABLE ingredients (
    "id" INTEGER,
    "name" TEXT,
    "price_per_unit" NUMERIC,
    "unit" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE donuts (
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" TEXT,
    "price" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE donutsIng (
    "donut_id" INTEGER,
    "ing_id" INTEGER,
    PRIMARY KEY("donut_id", "ing_id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ing_id") REFERENCES "ingredients"("id")
);

CREATE TABLE orders (
    "id" INTEGER,
    "number" INTEGER,
    "donuts" TEXT,
    "customer" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("donuts") REFERENCES "donuts"("id")
);

CREATE TABLE customers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "history" TEXT,
    PRIMARY KEY("id")
);
