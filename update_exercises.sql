USE codeup_test_db;

SELECT 'ALL ALBUMS IN TABLE' AS 'Info';
SELECT * FROM albums;

SELECT 'ALL ALBUMS RELEASE BEFORE 1980' AS 'Info';
SELECT name FROM albums
WHERE release_date <1980;

SELECT 'ALL ALBUMS FROM MICHEAL JACKSON' AS 'Info';
SELECT name FROM albums
WHERE artist = 'Micheal Jackson';