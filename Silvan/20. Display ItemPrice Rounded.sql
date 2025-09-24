-- Opgave 20 # Display all Item prices rounded to nearest
SELECT ItemName, ItemPrice, ROUND(ItemPrice, 0) AS RoundedPrice
FROM Item;