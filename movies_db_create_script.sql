CREATE DATABASE IF NOT EXISTS movie_db;
USE movie_db;
CREATE TABLE IF NOT EXISTS movies_table
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title    VARCHAR(100) NOT NULL,
    rating   INT,
    poster   TEXT,
    year     INT,
    genre    VARCHAR(100),
    director VARCHAR(50),
    plot     TEXT,
    actors   VARCHAR(100),
    PRIMARY KEY (id)
);