-- 1141. User Activity for the Past 30 Days I  
-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

-- MySQL
CREATE SCHEMA `1141-user-activity-for-the-past-30-days-i`;

-- Table: Activity
-- There is no primary key for this table, it may have duplicate rows.
-- The activity_type column is an ENUM of type ('open_session', 'end_session', 'scroll_down', 'send_message').
-- The table shows the user activities for a social media website. 
-- Note that each session belongs to exactly one user.

CREATE TABLE `Activity` (
    `user_id` INT NOT NULL,
    `session_id` INT NOT NULL,
    `activity_date` DATE NOT NULL,
    `activity_type` ENUM ('open_session', 'end_session', 'scroll_down', 'send_message')
);

INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (1, 1, '2019-07-20', 'open_session');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (1, 1, '2019-07-20', 'scroll_down');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (1, 1, '2019-07-20', 'end_session');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (2, 4, '2019-07-20', 'open_session');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (2, 4, '2019-07-21', 'send_message');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (2, 4, '2019-07-21', 'end_session');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (3, 2, '2019-07-21', 'open_session');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (3, 2, '2019-07-21', 'send_message');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (3, 2, '2019-07-21', 'end_session');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (4, 3, '2019-06-25', 'open_session');
INSERT INTO Activity (user_id, session_id, activity_date, activity_type) VALUES (4, 3, '2019-06-25', 'end_session');

-- Query
-- Write an SQL query to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. 
-- A user was active on someday if they made at least one activity on that day.

SELECT 
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM
    Activity
WHERE
    DATEDIFF('2019-07-27', activity_date) BETWEEN 0 AND 29
GROUP BY activity_date;

-- BETWEEN 0 AND 29 to filter negative values