USE codeup_test_db;
-- All albums in your table.
SELECT 'ALL ALBUMS IN TABLE' AS 'Info';
SELECT * FROM albums;
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = sales * 10;
SELECT 'MULTIPLY SALES BY 10' AS 'Info';
SELECT * FROM albums;
-- All albums released before 1980
SELECT 'ALL ALBUMS RELEASED BEFORE 1980' AS 'Info';
SELECT name FROM albums
WHERE release_date <1980;
-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date =  release_date - 100
WHERE release_date < 1980;
SELECT 'CHANGED DATE TO ALBUMS RELEASED BEFORE 1980 TO 1800' AS 'Info';
SELECT * FROM albums;
-- All albums by Michael Jackson
SELECT 'ALL ALBUMS FROM MICHEAL JACKSON' AS 'Info';
SELECT name FROM albums
WHERE artist = 'Michael Jackson';
-- Change "Michael Jackson" to "Peter Jackson"
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'CHANGED MICHAEL JACKSON TO PETER JACKSON' AS 'Info';
SELECT * FROM albums;