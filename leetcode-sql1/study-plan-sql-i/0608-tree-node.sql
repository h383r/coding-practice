/*
https://leetcode.com/problems/tree-node/
608. Tree Node
*/

SELECT id,CASE
WHEN p_id IS NULL THEN "Root"
WHEN p_id IS NOT NULL AND id IN (SELECT DISTINCT(p_id) FROM tree) THEN "Inner"
ELSE "Leaf"
END AS type
FROM tree;