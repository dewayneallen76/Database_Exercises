USE codeup_test_db;

-- Albums released after 1991
SELECT 'ALBUMS RELEASE AFTER 1991' as 'Info';
SELECT name FROM albums 
WHERE release_date >1991;

-- Albums with the genre "disco"
SELECT 'ALBUMS WITH GENRE DISCO' as 'Info';
SELECT name FROM albums
WHERE genre = 'Disco';

-- Albums by "Whitney Houston" (...or maybe an artist of your choice)
SELECT 'ALBUMS BY WHITNEY HOUSTON' as 'Info';
SELECT name FROM albums
WHERE artist = 'The Beatles';