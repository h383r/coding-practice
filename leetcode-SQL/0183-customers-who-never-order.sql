/*
183. Customers Who Never Order

SQL Schema
Table: Customers
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID and name of a customer.
 
Table: Orders
+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+
id is the primary key column for this table.
customerId is a foreign key of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
*/

CREATE TABLE practice;
USE practice;

CREATE TABLE Customers (
	id int auto_increment,
    name varchar(50),
    PRIMARY KEY (id)
);

CREATE TABLE Orders (
	id int auto_increment,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (CustomerId) REFERENCES Customers (id)
);

INSERT INTO Customers (name) VALUES ("Joe");
INSERT INTO Customers (name) VALUES ("Henry");
INSERT INTO Customers (name) VALUES ("Sam");
INSERT INTO Customers (name) VALUES ("Max");

INSERT INTO Orders (customerId) VALUES (3);
INSERT INTO Orders (customerId) VALUES (1);

-- Solucion 1
SELECT a.name AS Customers FROM Customers a
WHERE NOT EXISTS (SELECT 1 FROM Orders b WHERE a.Id = b.CustomerId);

-- Solucion 2
SELECT a.name AS Customers FROM Customers a
WHERE a.Id NOT IN (SELECT b.CustomerId FROM Orders b);

-- Solucion 3
SELECT a.name AS Customers FROM Customers a
LEFT JOIN Orders b ON a.Id = b.CustomerId
WHERE b.CustomerId IS NULL;
