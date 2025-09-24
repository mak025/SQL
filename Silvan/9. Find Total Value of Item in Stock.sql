-- Opgave 9 # Find Total Value of each Item based on Quantity On Hand
SELECT 
    ItemNo,
    ItemName,
    ItemPrice,
    QtyOnHand,
    (ItemPrice * QtyOnHand) AS TotalValue
FROM Item;