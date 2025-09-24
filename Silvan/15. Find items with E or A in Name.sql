
-- Opgave 15 # Find items with E or A in their name
SELECT *
FROM Item
WHERE LOWER(ItemName) LIKE '%a%' OR LOWER(ItemName) LIKE '%e%' OR LOWER(ItemName) LIKE '%o%';