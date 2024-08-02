"Table: Cinema
"+----------------+----------+
"| Column Name    | Type     |
"+----"------------+----------+
"| id             | int      |
"| movie          | varchar  |
"| description    | varchar  |
"| rating         | float    |
"+----------------+----------+
"id is the primary key (column with unique values) for this table.
"Each row contains information about the name of a movie, its genre, and its rating.
"rating is a 2 decimal places float in the range [0, 10]
"Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
"Return the result table ordered by rating in descending order.


select id,movie,description,rating from Cinema where description!=1 and
id % 2= 1 order by desc