/*
182. Duplicate Emails

SQL Schema
Table: Person
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
 
Write an SQL query to report all the duplicate emails.
Return the result table in any order.
The query result format is in the following example.

Example 1:

Input: 
Person table:
+----+---------+
| id | email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+

Output: 
+---------+
| Email   |
+---------+
| a@b.com |
+---------+
*/

-- CREATE TABLE practice;
USE practice;

CREATE TABLE Person (
	id int auto_increment,
    email varchar(50),
    PRIMARY KEY (id)
);

INSERT INTO Person (email) VALUES ("a@b.com");
INSERT INTO Person (email) VALUES ("c@d.com");
INSERT INTO Person (email) VALUES ("a@b.com");

SELECT email AS Email FROM Person 
GROUP BY email
HAVING COUNT(*) > 1;