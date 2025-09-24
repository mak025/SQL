-- Opgave 19 # Display all customers from Copenhagen Alphabetically
SELECT *
FROM Customer
WHERE City = 'Copenhagen' ORDER BY CustName ASC;