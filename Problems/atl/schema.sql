CREATE TABLE passengers (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE check_in (
    "id" INTEGER,
    "datetime" NUMERIC,
    "flight" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE airlines (
    "id" INTEGER,
    "name" TEXT,
    "concourse" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE flights (
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_name" TEXT,
    "airport_from" TEXT,
    "airport_to" TEXT,
    "datetime_depart" NUMERIC,
    "datetime_arrival" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("flight_number") REFERENCES "check_in"("id"),
    FOREIGN KEY("airline_name") REFERENCES "airlines"("id")

);
