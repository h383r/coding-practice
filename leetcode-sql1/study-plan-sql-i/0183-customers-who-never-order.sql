-- https://leetcode.com/problems/customers-who-never-order/

-- Solution 1
SELECT a.name AS Customers FROM Customers a
WHERE NOT EXISTS (SELECT 1 FROM Orders b WHERE a.Id = b.CustomerId);

-- Solution 2
SELECT a.name AS Customers FROM Customers a
WHERE a.Id NOT IN (SELECT b.CustomerId FROM Orders b);

-- Solution 3
SELECT a.name AS Customers FROM Customers a
LEFT JOIN Orders b ON a.Id = b.CustomerId
WHERE b.CustomerId IS NULL;
