-- 1693. Daily Leads and Partners ✔  
-- https://leetcode.com/problems/daily-leads-and-partners/

-- MySQL
CREATE SCHEMA `1693-daily-leads-and-partners`;

-- Table: DailySales
-- This table does not have a primary key.
-- This table contains the date and the name of the product sold and the IDs of the lead and partner it was sold to.
-- The name consists of only lowercase English letters.

CREATE TABLE `DailySales`(
    `date_id` DATE NOT NULL,
    `make_name` VARCHAR(25) NOT NULL,
    `lead_id` INT NOT NULL,
    `partner_id` INT NOT NULL
);

INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-8', 'toyota', 0, 1);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-8', 'toyota', 1, 0);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-8', 'toyota', 1, 2);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-7', 'toyota', 0, 2);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-7', 'toyota', 0, 1);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-8', 'honda', 1, 2);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-8', 'honda', 2, 1);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-7', 'honda', 0, 1);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-7', 'honda', 1, 2);
INSERT INTO DailySales(date_id, make_name, lead_id, partner_id) VALUES ('2020-12-7', 'honda', 2, 1);

-- Query
-- Write an SQL query that will, for each date_id and make_name, return the number of distinct lead_id's and distinct partner_id's.

SELECT 
    date_id,
    make_name,
    COUNT(DISTINCT lead_id) AS unique_leads,
    COUNT(DISTINCT partner_id) AS unique_partners
FROM
    DailySales
GROUP BY date_id , make_name
ORDER BY make_name DESC , date_id DESC;
