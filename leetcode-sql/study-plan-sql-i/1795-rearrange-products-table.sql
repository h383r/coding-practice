/*
https://leetcode.com/problems/rearrange-products-table/
1795. Rearrange Products Table
*/

SELECT product_id, "store1" AS STORE, store1 AS price FROM Products WHERE store1 IS NOT NULL
UNION
SELECT product_id, "store2" AS STORE, store2 AS price FROM Products WHERE store2 IS NOT NULL
UNION
SELECT product_id, "store3" AS STORE, store3 AS price FROM Products WHERE store3 IS NOT NULL;