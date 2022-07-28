-- 1581. Customer Who Visited but Did Not Make Any Transactions  
-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

-- Table Visits
-- This table contains information about the customers who visited the mall.

CREATE TABLE "Visits" (
	"visit_id"	INTEGER,
	"customer_id"	INTEGER,
	PRIMARY KEY("visit_id")
);

INSERT INTO Visits (visit_id, customer_id) VALUES (1, 23);
INSERT INTO Visits (visit_id, customer_id) VALUES (2, 9);
INSERT INTO Visits (visit_id, customer_id) VALUES (4, 30);
INSERT INTO Visits (visit_id, customer_id) VALUES (5, 54);
INSERT INTO Visits (visit_id, customer_id) VALUES (6, 96);
INSERT INTO Visits (visit_id, customer_id) VALUES (7, 54);
INSERT INTO Visits (visit_id, customer_id) VALUES (8, 54);

-- Table Transactions
-- This table contains information about the transactions made during the visit_id.

CREATE TABLE "Transactions" (
	"transaction_id"	INTEGER,
	"visit_id"	INTEGER,
	"amount"	INTEGER,
	PRIMARY KEY("transaction_id")
);

INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES (2, 5, 310);
INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES (3, 5, 300);
INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES (9, 5, 200);
INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES (12, 1, 910);
INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES (13, 2, 970);

-- Query:
-- Write an SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

SELECT customer_id, COUNT (Visits.visit_id) AS count_no_trans
FROM Visits
LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id
WHERE Transactions.visit_id IS NULL
GROUP BY customer_id;