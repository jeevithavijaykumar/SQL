"Table: Activity

"+---------------+---------+
"| Column Name   | Type    |
"+---------------+---------+
"| user_id       | int     |
"| session_id    | int     |
"| activity_date | date    |
"| activity_type | enum    |
"+---------------+---------+
"This table may have duplicate rows.
"The activity_type column is an ENUM (category) of type ('open_session', 'end_session', 'scroll_down', 'send_message').
"The table shows the user activities for a social media website.
"Note that each session belongs to exactly one user.

"Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively.
"A user was active on someday if they made at least one activity on that day. Return the result table in any order.

select activity_date as day, count(distinct user_id) as active_users  from Activity
where activity_date between date_add('2019-07-27',Interval -29 day) and ('2019-07-27')
group by activity_date