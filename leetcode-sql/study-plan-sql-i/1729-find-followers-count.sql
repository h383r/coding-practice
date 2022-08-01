-- 1729. Find Followers Count
-- https://leetcode.com/problems/find-followers-count/

-- MySQL
CREATE SCHEMA `1729-find-followers-count.sql`;

-- Table: Followers
-- user_id, follower_id is the primary key for this table.
-- This table contains the IDs of a user and a follower in 
-- a social media app where the follower follows the user.

CREATE TABLE `Followers` (
    `user_id` INT NOT NULL,
    `follower_id` INT NOT NULL,
    PRIMARY KEY(`user_id`, `follower_id`)
);

INSERT INTO Followers (user_id, follower_id) VALUES (0, 1);
INSERT INTO Followers (user_id, follower_id) VALUES (1, 0);
INSERT INTO Followers (user_id, follower_id) VALUES (2, 0);
INSERT INTO Followers (user_id, follower_id) VALUES (2, 1);

-- Write an SQL query that will, for each user, return the number of followers.
-- Return the result table ordered by user_id.

SELECT 
    user_id, COUNT(*) AS followers_count
FROM
    Followers
GROUP BY user_id
ORDER BY user_id;