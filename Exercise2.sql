/* Exercise2 */
CREATE DATABASE Ecommerce;

/* Print Distinct City from Table Customers and Print Count distinct City from Table Customers */
SELECT DISTINCT city FROM customers;
SELECT COUNT(DISTINCT city) FROM customers;

/*Write a SQL query to get the least number of quantities and the highest number of quantities bought by 
the user consider the OrderDetails Table. */
SELECT MIN(Quantity) AS least_qty, MAX(Quantity) AS highest_qty FROM order_details;

/* Print the total and an average number of quantities ordered by users, consider the OrderDetails Table.*/
SELECT SUM(Quantity) AS total_qty_ordered, AVG(Quantity) AS avg_qty_ordered FROM order_details;

/* Print name of the product which is present at the 5th position till the 15th position from Products table,
use LIMIT keyword. */
SELECT ProductName FROM products LIMIT 4,11;

/* Write a SQL query for all the details of the supplier whose name consists of “A” at the second position from 
the Suppliers table. */
SELECT * FROM suppliers WHERE CONTACTNAME LIKE '_a%';

/* Print the details of the customer who doesn’t stay in the USA and Canada from the Customers table. */
SELECT * FROM customers where Country NOT IN ('USA', 'Canada');

/* Print the details of all the orders which were placed between the year 2020 to 2021 also print the same in 
descending order from the OrderDetails table. */
SELECT * FROM orders WHERE OrderDate BETWEEN '2020-01-01' AND '2020-12-31' ORDER BY OrderDate DESC;

/* Write a query to show the distinct city and their count from the Customers table.*/
SELECT DISTINCT city FROM customers;
SELECT COUNT(DISTINCT city) FROM customers;

/* Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” 
from the Employees table. */
SELECT * FROM employees WHERE LastName NOT IN ('Sanjay', 'Soniya');

/* Duplicate a table as similar to the Suppliers table and name it as SupplierDetail.*/
CREATE TABLE supplierdetail AS SELECT * FROM suppliers;

/* Delete customer details whose country is Venezuela and print the rest of the Customer table */
SET SQL_SAFE_UPDATES = 0;
DELETE FROM customers WHERE Country='Venezuela';
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM customers;











