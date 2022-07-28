-- 197. Rising Temperature  
-- https://leetcode.com/problems/rising-temperature/

-- Table Weather
-- This table contains information about the temperature on a certain day.

CREATE TABLE "Weather" (
	"id" INTEGER,
	"recordDate" DATE,
	"temperature" INTEGER,
	PRIMARY KEY("id")
);

INSERT INTO Weather (id, recordDate, temperature) VALUES (1, 2015-01-01, 10);
INSERT INTO Weather (id, recordDate, temperature) VALUES (2, 2015-01-02, 25);
INSERT INTO Weather (id, recordDate, temperature) VALUES (3, 2015-01-03, 20);
INSERT INTO Weather (id, recordDate, temperature) VALUES (4, 2015-01-04, 3);

-- Query:
-- Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

SELECT Weather.id
FROM Weather
	JOIN Weather AS w
		ON w.RecordDate = SUBDATE(Weather.RecordDate, 1)
WHERE Weather.Temperature > w.Temperature;

SELECT w1.id
FROM Weather AS w1, Weather AS w2
WHERE DATEDIFF(w1.recordDate, w2.RecordDate) = 1 AND w1.Temperature > w2.Temperature;

-- Notas:
-- The SUBDATE() function subtracts a time/date interval from a date and then returns the date.
-- SUBDATE(date, The number of days to subtract from date)