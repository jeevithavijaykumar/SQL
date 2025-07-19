# 1112. Highest Grade For Each Student
# Write a solution to find the highest grade with its corresponding course for each student. 
#In case of a tie, you should find the course with the smallest course_id.
#Return the result table ordered by student_id in ascending order.
#The result format is in the following example.

#+---------------+---------+
#| Column Name   | Type    |
#+---------------+---------+
#| student_id    | int     |
#| course_id     | int     |
#| grade         | int     |
#+---------------+---------+

WITH CTE_students AS
(
    SELECT * , 
        DENSE_RANK() OVER(PARTITION BY student_id ORDER BY GRADE DESC, course_id)  rnk 
        FROM Enrollments
)
SELECT student_id, course_id, grade 
FROM CTE_students
WHERE rnk=1;