USE Laundromat;
ALTER TABLE Tenant
    ADD CONSTRAINT CHK_Tenant_AddressFormat
        CHECK (
            Address LIKE 'F__A_' AND
            ISNUMERIC(SUBSTRING(Address, 2, 2)) = 1 AND
            ISNUMERIC(SUBSTRING(Address, 5, 1)) = 1
            );