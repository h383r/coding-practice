/*
https://leetcode.com/problems/game-play-analysis-i/
*/

-- DISTINCT The query returns only distinct values in the specified column

SELECT DISTINCT player_id, first_value(event_date)
OVER(PARTITION BY player_id ORDER BY event_date)
AS first_login FROM activity;