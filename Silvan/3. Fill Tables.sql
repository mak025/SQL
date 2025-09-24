-- Opgave 3 # Fill tables with data
INSERT INTO Customer (CustNo, CustName, City, Phone)
VALUES
(1, 'Alice Jensen', 'Copenhagen', 45231234),
(2, 'Bob Sørensen', 'Esbjerg', 45239876),
(3, 'Clara Madsen', 'Copenhagen', 45234567),
(4, 'David Nielsen', 'Roskilde', 45235678),
(5, 'Eva Thomsen', 'Roskilde', 45236789),
(6, 'Frank Kristensen', 'Slagelse', 45237890),
(7, 'Greta Holm', 'Copenhagen', 45238901),
(8, 'Henrik Larsen', 'Odense', 45239012);

INSERT INTO Item (ItemNo, ItemName, ItemPrice, QtyOnHand)
VALUES
(101, 'Smart Plug', 149.95, 50),
(102, 'Motion Sensor', 199.50, 30),
(103, 'Door Lock', 899.00, 20),
(104, 'Light Bulb', 89.99, 100),
(105, 'Thermostat', 649.00, 15),
(106, 'Smoke Detector', 299.00, 25),
(107, 'Water Leak Sensor', 249.00, 40),
(108, 'Security Camera', 1199.00, 10),
(109, 'Smart Switch', 179.00, 60),
(110, 'Garage Opener', 799.00, 12),
(111, 'Window Sensor', 159.00, 35),
(112, 'Energy Monitor', 349.00, 18);

INSERT INTO Invoice (InvNo, InvDate, CustNo)
VALUES
(1001, '2025-09-01', 1),
(1002, '2025-09-03', 3),
(1003, '2025-09-05', 2),
(1004, '2025-09-07', 5),
(1005, '2025-09-10', 7),
(1006, '2025-09-12', 4);

INSERT INTO InvItem (InvNo, ItemNo, Qty)
VALUES
(1001, 101, 2),
(1001, 104, 4),
(1002, 103, 1),
(1002, 106, 2),
(1003, 102, 3),
(1003, 107, 1),
(1004, 108, 1),
(1004, 105, 1),
(1005, 109, 2),
(1005, 111, 3),
(1006, 110, 1),
(1006, 112, 1);