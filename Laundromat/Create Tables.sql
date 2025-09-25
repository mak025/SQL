USE Laundromat;
-- Tenant table
CREATE TABLE Tenant (
    TenantID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

-- Machine table
CREATE TABLE Machine (
    MachineID INT IDENTITY(1,1) PRIMARY KEY,
    Type VARCHAR(10) CHECK (Type IN ('Washer', 'Dryer', 'Roller')) NOT NULL
);

-- Booking table
CREATE TABLE Booking (
    BookingID INT IDENTITY(1,1) PRIMARY KEY,
    TenantID INT NOT NULL,
    MachineID INT NOT NULL,
    StartTime SMALLDATETIME NOT NULL,
    EndTime SMALLDATETIME NOT NULL,
    Status VARCHAR(10) CONSTRAINT DF_Booking_Status DEFAULT 'Available',
    FOREIGN KEY (TenantID) REFERENCES Tenant(TenantID),
    FOREIGN KEY (MachineID) REFERENCES Machine(MachineID)
);