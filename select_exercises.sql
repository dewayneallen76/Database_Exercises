USE codeup_test_db;
SELECT 'ALL ALBUMS FROM PINK FLOYD' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'YEAR THAT SGT PEPPER WAS RELEASED' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'GENRE FOR NEVERMIND' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'ALBUMS RELEASED IN THE 1990''S' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'ALBUMS LESS THAT 20 MILLION SALES' AS 'Info';
SELECT name FROM albums WHERE sales <20000000;

SELECT 'ALL ALBUMS IN THE ROCK GENRE' AS 'Info';
SELECT name FROM albums WHERE genre LIKE '%Rock%';