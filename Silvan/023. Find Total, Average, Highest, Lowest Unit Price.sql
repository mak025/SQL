USE Silvan;
-- Find Total, Average, Highest, Lowest Unit Price

SELECT SUM(ItemPrice) AS TotalItemPrice,
       AVG(ItemPrice) AS AverageItemPrice,
       MAX(ItemPrice) AS HighestItemPrice,
       MIN(ItemPrice) AS LowestItemPrice
FROM Item;