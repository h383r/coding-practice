/*
181. Employees Earning More Than Their Managers

SQL Schema
Table: Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.

Write an SQL query to find the employees who earn more than their managers.
Return the result table in any order.
The query result format is in the following example.

Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+

Output: 
+----------+
| Employee |
+----------+
| Joe      |
+----------+
*/

CREATE TABLE practice;
USE practice;

CREATE TABLE Employee (
	id int auto_increment,
    name varchar(50),
    salary int,
    managerId int,
    PRIMARY KEY (id)
);

INSERT INTO Employee (name, salary, managerId) VALUES ("Joe", 70000, 3);
INSERT INTO Employee (name, salary, managerId) VALUES ("Henry", 80000, 4);
INSERT INTO Employee (name, salary, managerId) VALUES ("Sam", 60000, Null);
INSERT INTO Employee (name, salary, managerId) VALUES ("Max", 90000, Null); 

SELECT a.name AS Employee FROM Employee a, Employee b
WHERE a.managerId IS NOT NULL AND a.salary > b.salary AND a.managerId = b.id;