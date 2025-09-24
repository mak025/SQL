USE Silvan;
-- Opgave 7 # Display Item Information with Column Aliases
SELECT
	ItemNo AS [Item Number],
	ItemName AS [Name],
	ItemPrice AS [Unit Price],
	QtyOnHand AS [Stock Available]
FROM Item;