USE Silvan;
-- Opgave 8 # Display Item Name and Price in Sentence Form Using Concatenation
SELECT
	'The item ' + ItemName + ' costs ' + CAST(ItemPrice AS VARCHAR) + ' DKK'
FROM Item;