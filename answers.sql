-- Q1
-- Select the required columns from the employees table
SELECT 
    e.firstName,        
    e.lastName,     
    e.email,           
    e.officeCode        
FROM employees e        -- From the employees table (alias 'e' for brevity)

-- Perform an INNER JOIN with the offices table to ensure valid office codes
INNER JOIN offices o    -- Join with offices table (alias 'o' for brevity)
    ON e.officeCode = o.officeCode;  -- Join condition: match officeCode in both tables


   
-- Q2
USE salesDB;
-- Select the desired product details
SELECT 
    p.productName,   
    p.productVendor, 
    p.productLine    
FROM products p      -- Alias 'p' for the products table

-- Join products with productlines table
LEFT JOIN productlines pl -- Alias 'pl' for the productlines table
    ON p.productLine = pl.productLine; -- Match on the productLine column


-- Q3
    USE salesDB;
-- Select order details along with customer information
SELECT 
    o.orderDate,        
    o.shippedDate,      
    o.status,           
    o.customerNumber   
FROM customers c        -- Right table: customers (alias 'c')

-- RIGHT JOIN ensures we get ALL customers.
RIGHT JOIN orders o   -- Alias 'o' for orders table
ON c.customerNumber = o.customerNumber  -- Join condition
LIMIT 10;               -- Return only the first 10 records
