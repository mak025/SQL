-- Step 1: Add the columns first (with DEFAULTs to satisfy SQL Server rules)
ALTER TABLE Booking
    ADD BookingDate DATE NOT NULL DEFAULT '2025-01-01', -- Any date will do
        StartSlot INT NOT NULL DEFAULT 6; -- Any slot will do

-- Step 2: Add the constraint after the columns exist
ALTER TABLE Booking
    ADD CONSTRAINT CHK_Booking_ValidSlot -- Name of the constraint to check valid slots
        CHECK (StartSlot IN (6, 8, 10, 12, 14, 16, 18)); -- Valid slots