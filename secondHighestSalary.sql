#Table: Employee

#+-------------+------+
#| Column Name | Type |
#+-------------+------+
#| id          | int  |
#| salary      | int  |
#+-------------+------+
#id is the primary key (column with unique values) for this table.
#Each row of this table contains information about the salary of an employee.

#Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null.

SELECT max(salary) as SecondHighestSalary 
FROM employee 
WHERE salary < (SELECT max(salary) FROM employee);
