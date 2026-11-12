/*

*/

SELECT city FROM sales.customers
UNION  
SELECT city FROM sales.stores
ORDER BY city;