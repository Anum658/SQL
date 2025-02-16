USE `linkedin`;
CREATE TABLE `usres` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `username` VARCHAR(255) NOT NULL UNIQUE,
    `password` CHAR(128) NOT NULL,
     PRIMARY KEY(`id`),
);

CREATE TABLE `school_university` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `type` ENUM('Primary','Secondary,' 'Higher Education'),
    `location` VARCHAR(255) NOT NULL UNIQUE,
    `year` YEAR NOT NULL,
     PRIMARY KEY(`id`)
);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `industry` ENUM('Technology','Education','Business'),
    `location` VARCHAR(255) NOT NULL UNIQUE,
    `year` YEAR NOT NULL,
     PRIMARY KEY(`id`)
);

CREATE TABLE `connections` (
    `id` INT AUTO_INCREMENT,
    `con_people` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `degree` VARCHAR(255) NOT NULL,
    `start_date_company` DATE NOT NULL,
    `end_date_company` DATE NOT NULL,
     PRIMARY KEY(`id`),
     FOREIGN KEY(`con_people`) REFERENCES `users`(`id`),
    --FOREIGN KEY(`card_id`) REFERENCES `cards`(`id`)
);

