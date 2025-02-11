CREATE TABLE users (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "user_name" TEXT,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE school_university (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE companies (
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE connections (
    "id" INTEGER,
    "between_users" INTEGER,
    "degree_type" TEXT,
    "date_start_school" NUMERIC,
    "date_end_school" NUMERIC,
    "date_start_company" NUMERIC,
    "date_end_company" NUMERIC,
    "title" TEXT,
    PRIMARY KEY("id")
    --FOREIGN KEY("flight_number") REFERENCES "check_in"("id"),
    --FOREIGN KEY("airline_name") REFERENCES "airlines"("id")

);
