ALTER TABLE Booking
    ADD CONSTRAINT CHK_Booking_ValidSlot -- Name of the constraint to check valid slots
        CHECK (StartSlot IN (6, 8, 10, 12, 14, 16, 18)); -- Valid slots