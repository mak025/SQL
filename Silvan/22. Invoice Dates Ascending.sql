-- Opgave 22 # Display invoice dates in ascending order
SELECT InvNo, InvDate
FROM Invoice
ORDER BY ABS(DATEDIFF(DAY, InvDate, GETDATE()));