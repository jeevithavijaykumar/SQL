"Table: Employee

"+-------------+---------+
"| Column Name | Type    |
"+-------------+---------+
"| id          | int     |
"| name        | varchar |
"| department  | varchar |
"| managerId   | int     |
+-------------+---------+
"id is the primary key (column with unique values) for this table.
"Each row of this table indicates the name of an employee, their department, and the id of their manager.
"If managerId is null, then the employee does not have a manager.
"No employee will be the manager of themself.


select m.name from Employee e inner join Employee m
on e.managerId = m.id group by e.managerId
having count(e.managerId)>=5