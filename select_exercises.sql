
SELECT album_name FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE album_name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre FROM albums WHERE album_name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT * FROM albums WHERE release_date < 2000 AND release_date > 1989;

SELECT album_name FROM albums WHERE sales < 20.0;

SELECT * FROM albums WHERE genre = 'Rock';