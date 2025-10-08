alter table Booking
    add constraint CHK_Booking_ValidSlot
        check ([StartSlot] = 18 OR [StartSlot] = 16 OR [StartSlot] = 14 OR [StartSlot] = 12 OR [StartSlot] = 10 OR
               [StartSlot] = 8 OR [StartSlot] = 6)
go