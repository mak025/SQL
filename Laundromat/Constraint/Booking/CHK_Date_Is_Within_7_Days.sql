ALTER TABLE Booking
    ADD CONSTRAINT chk_bookingdate_within_7_days
        CHECK (BookingDate <= DATEADD(DAY, 7, CAST(GETDATE() AS DATE)))