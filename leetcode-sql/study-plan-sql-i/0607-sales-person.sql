-- 607. Sales Person  
-- https://leetcode.com/problems/sales-person/  

-- MySQL
CREATE SCHEMA `0607-sales-person`;

-- Table: SalesPerson
-- Each row of this table indicates the name and the ID of a salesperson alongside their salary, commission rate, and hire date.

CREATE TABLE `0607-sales-person`.`SalesPerson` (
    `sales_id` INT NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `salary` INT NOT NULL,
    `commission_rate` INT NOT NULL,
    `hire_date` DATE NOT NULL,
    PRIMARY KEY(`sales_id`)
);

INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (1, "John", 100000, 6, 4/1/2006);
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (2, "Amy", 12000, 5, 5/1/2010);
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (3, "Mark", 65000, 12, 12/25/2008);
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (4, "Pam", 25000, 25, 1/1/2005);
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (5, "Alex", 5000, 10, 2/3/2007);

-- AAAA-MM-DD
UPDATE SalesPerson SET hire_date = "2006-04-01" WHERE sales_id = 1;
UPDATE SalesPerson SET hire_date = "2010-05-01" WHERE sales_id = 2;
UPDATE SalesPerson SET hire_date = "2008-12-25" WHERE sales_id = 3;
UPDATE SalesPerson SET hire_date = "2005-01-01" WHERE sales_id = 4;
UPDATE SalesPerson SET hire_date = "2007-02-03" WHERE sales_id = 5;

-- Table: Company
-- Each row of this table indicates the name and the ID of a company and the city in which the company is located.

CREATE TABLE `Company` (
    `com_id` INT NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `city` VARCHAR(45) NOT NULL,
    PRIMARY KEY(`com_id`)
);

INSERT INTO Company (com_id, name, city) VALUES (1, "RED", "Boston");
INSERT INTO Company (com_id, name, city) VALUES (2, "ORANGE", "New York");
INSERT INTO Company (com_id, name, city) VALUES (3, "YELLOW", "Boston");
INSERT INTO Company (com_id, name, city) VALUES (4, "GREEN", "Austin");

-- Table: Orders
-- Each row of this table contains information about one order. This includes the ID of the company, the ID of the salesperson, the date of the order, and the amount paid.

CREATE TABLE `Orders` (
    `order_id` INT,
    `order_date` DATE,
    `com_id` INT,
    `sales_id` INT,
    `ammount` INT,
    PRIMARY KEY(`order_id`),
    FOREIGN KEY(`com_id`) REFERENCES Company(`com_id`),
    FOREIGN KEY(`sales_id`) REFERENCES SalesPerson(`sales_id`)
);

INSERT INTO Orders (order_id, order_date, com_id, sales_id, ammount) VALUES (1, 1/1/2014, 3, 4, 10000);
INSERT INTO Orders (order_id, order_date, com_id, sales_id, ammount) VALUES (2, 2/1/2014, 4, 5, 5000);
INSERT INTO Orders (order_id, order_date, com_id, sales_id, ammount) VALUES (3, 3/1/2014, 1, 1, 50000);
INSERT INTO Orders (order_id, order_date, com_id, sales_id, ammount) VALUES (4, 4/1/2014, 1, 4, 25000);

-- AAAA-MM-DD
UPDATE Orders SET order_date = "2014-01-01" WHERE order_id = 1;
UPDATE Orders SET order_date = "2014-01-02" WHERE order_id = 2;
UPDATE Orders SET order_date = "2014-01-03" WHERE order_id = 3;
UPDATE Orders SET order_date = "2014-01-04" WHERE order_id = 4;

-- Query
-- Report the names of all the salespersons who did not have any orders related to the company with the name "RED"

SELECT SalesPerson.name
FROM SalesPerson
WHERE SalesPerson.sales_id NOT IN(
	SELECT Orders.sales_id
	FROM Orders LEFT JOIN Company ON Orders.com_id = Company.com_id
    WHERE Company.name = "RED"
);

SELECT salesperson.name
FROM salesperson
WHERE salesperson.sales_id NOT IN(
	SELECT salesperson.sales_id FROM salesperson
	JOIN orders ON salesperson.sales_id = orders.sales_id
	JOIN company ON orders.com_id = company.com_id
	WHERE company.name = "RED"
);