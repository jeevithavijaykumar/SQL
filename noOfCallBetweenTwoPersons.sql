# 1699. Number of Calls Between Two Persons
# Write a solution to report the number of calls and the total call duration between each pair of distinct persons (person1, person2) where person1 < person2.
# Table: Calls

#+-------------+---------+
#| Column Name | Type    |
#+-------------+---------+
#| from_id     | int     |
#| to_id       | int     |
#| duration    | int     |
#+-------------+---------+

SELECT 
    CASE WHEN from_id < to_id THEN from_id ELSE to_id END AS person1,
    CASE WHEN from_id < to_id THEN to_id ELSE from_id END AS person2,
    COUNT(*) AS call_count,
    SUM(duration) AS total_duration
FROM Calls
GROUP BY person1, person2;