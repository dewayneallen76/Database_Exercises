USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
	id INT(255) UNSIGNED NOT NULL AUTO_INCREMENT,
	artist VARCHAR(255) NOT NULL, 
	name VARCHAR(255) NOT NULL, 
	release_date INT (4) NULL, 
	sales INT UNSIGNED NULL,
	genre VARCHAR(255) NULL,
	PRIMARY KEY(id)
);