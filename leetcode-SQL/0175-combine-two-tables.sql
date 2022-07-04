-- 175. Combine Two Tables  
-- https://leetcode.com/problems/combine-two-tables/

-- SQLite3

-- Table Person
-- This table contains information about the ID of some persons and their first and last names.

CREATE TABLE "Person" (
	"personId"	INTEGER,
	"lastName"	TEXT,
	"firstName"	TEXT,
	PRIMARY KEY("personId")
);

-- Table Address
-- Each row of this table contains information about the city and state of one person with ID = PersonId.

CREATE TABLE "Person" (
	"personId"	INTEGER,
	"lastName"	TEXT,
	"firstName"	TEXT,
	PRIMARY KEY("personId")
)

-- Query:
-- report the first name, last name, city, and state of each person in the Person table. 
-- If the address of a personId is not present in the Address table, report null instead.

SELECT firstName, lastName, city, state
FROM Person LEFT JOIN Address
ON Person.personId = Address.personId;
