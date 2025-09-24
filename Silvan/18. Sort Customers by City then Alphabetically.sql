-- Opgave 18 # Sort all customers by their city and also alphabetically by name
SELECT *
FROM Customer
ORDER BY City ASC, CustName ASC;