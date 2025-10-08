ALTER TABLE Tenant
    ALTER COLUMN Name nvarchar(100) NOT NULL;

ALTER TABLE Tenant
    ALTER COLUMN Phone nvarchar(15) NOT NULL;

ALTER TABLE Tenant
    ALTER COLUMN Email nvarchar(100) NOT NULL;

ALTER TABLE Tenant
    ALTER COLUMN Address nvarchar(100) NOT NULL;