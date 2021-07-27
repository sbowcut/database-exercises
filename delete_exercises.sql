# Write SELECT statements for:
# Albums released after 1991
# Albums with the genre 'disco'
#     Albums by 'Whitney Houston' (...or maybe an artist of your choice)
# Make sure to put appropriate captions before each SELECT.
#                                                       Convert the SELECT statements to DELETE.
#     Use the MySQL command line client to make sure your records really were removed.
use codeup_test_db;

DELETE
FROM albums
WHERE release_date > 1991;

DELETE
FROM albums
WHERE genre = 'disco';

DELETE
FROM albums
WHERE artist = 'Whitney Houston';
