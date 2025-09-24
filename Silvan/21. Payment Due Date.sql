-- Opgave 21 # Payment is due in 2 months from the invoice date find due date
SELECT InvNo, InvDate, DATEADD(MONTH, 2, InvDate) AS DueDate
FROM Invoice;