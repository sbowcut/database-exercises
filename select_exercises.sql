use codeup_test_db;


SELECT *
from albums
where artist = 'Pink Floyd';

SELECT *
from albums
where name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre
from albums
where name = 'Nevermind';

SELECT *
from albums
where release_date >= 1990
  and release_date < 2000;

SELECT *
from albums
where sales < 20;

SELECT *
from albums
where genre = 'rock';