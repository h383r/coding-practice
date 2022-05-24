CREATE TABLE
    practice;
USE
    practice;

CREATE TABLE
    Customers (
	id int auto_increment,
    name varchar(50),
    PRIMARY KEY (id)
);

CREATE TABLE
    Orders (
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