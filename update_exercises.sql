Use codeup_test_db;
# Write SELECT statements to output each of the following with a caption:
#
#     All albums in your table.
#     All albums released before 1980
#     All albums by Michael Jackson
#     After each SELECT add an UPDATE statement to:
#
#     Make all the albums 10 times more popular (sales * 10)
#     Move all the albums before 1980 back to the 1800s.
#     Change 'Michael Jackson' to 'Peter Jackson'
#     Add SELECT statements after each UPDATE so you can see the results of your handiwork.
SELECT *
FROM albums;

SELECT *
FROM albums
WHERE release_date < 1980;

SELECT *
FROM albums
WHERE artist = 'Micheal Jackson';

UPDATE albums
SET sales = sales * 10
WHERE artist = 'Micheal Jackson';

update albums
set release_date = release_date - 100
where release_date < 1980;
select * from albums where release_date < 1980;

update albums
set artist = 'Peter Jackson'
where artist= 'Michael Jackson';
select * from albums where artist = 'Peter Jackson';