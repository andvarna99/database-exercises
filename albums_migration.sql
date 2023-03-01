USE ymir_andrea_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50) DEFAULT 'NONE',
    record_name VARCHAR(50) DEFAULT 'NONE',
    release_date DATE DEFAULT NULL,
    sales FLOAT DEFAULT NULL,
    genre VARCHAR(50) DEFAULT 'NONE',
    PRIMARY KEY(id)
);