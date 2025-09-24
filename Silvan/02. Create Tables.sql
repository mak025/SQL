USE Silvan;
-- Opgave 2 # Create Tables
CREATE TABLE Customer (CustNo int, CustName NVARCHAR(50), City NVARCHAR(50), Phone NVARCHAR(15));
CREATE TABLE Invoice (InvNo int, InvDate DATE, CustNo int);
CREATE TABLE Item (ItemNo int, ItemName NVARCHAR(30), ItemPrice DECIMAL, QtyOnHand int);
CREATE TABLE InvItem (InvNo int, ItemNo int, Qty int);
