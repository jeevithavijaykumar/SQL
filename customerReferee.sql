""" In Customer table, id is the primary key column.
"""Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
""" Find the names of the customer that are not referred by the customer with id = 2.

create Customer
(
id int,
name varchar,
referee_id int
);

select name from Customer where referee_id !=2 or referee_id is null;