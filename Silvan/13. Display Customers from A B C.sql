-- Opgave 13 # Which customers are from Copenhagen, Roskilde or Slagelse
SELECT *
FROM Customer
WHERE City IN ('Copenhagen', 'Roskilde', 'Slagelse');