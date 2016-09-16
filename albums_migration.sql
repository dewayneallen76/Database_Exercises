USE codeup_test_db;
DROP IF EXISTS TABLE albums;
CREATE TABLE albums (
	'id' INT UNSIGNED NOT NULL AUTO_INCREMENT,
	'artist' VARCHAR(255) NOT NULL, 
	'name' VARCHAR(255) NOT NULL, 
	'release date' YEAR(4) NULL, 
	'sales' DOUBLE(2,2) NULL,
	'genre' VARCHAR(255) NULL,
	PRIMARY KEY('id')
);