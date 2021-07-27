use codeup_test_db;


SELECT 'Name of all albums by Pink Floyd' AS 'Info';
select *
from albums
where artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
select *
from albums
where name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Info';
select genre
from albums
where name = 'Nevermind';

SELECT 'Albums were released in the 1990s' AS 'Info';
select *
from albums
where release_date >= 1990
  and release_date < 2000;

SELECT 'Albums had less than 20 million certified sales' AS 'Info';
select *
from albums
where sales < 20;

SELECT 'Albums with a genre of "Rock"' AS 'Info';
select *
from albums
where genre = 'rock';