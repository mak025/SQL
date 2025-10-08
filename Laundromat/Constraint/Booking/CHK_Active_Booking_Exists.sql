alter table Booking
    add constraint CK_Booking_TenantActiveBooking
        check ([dbo].[fn_CheckTenantActiveBooking]([TenantID], [BookingDate], [StartSlot], [BookingID]) = 0)
go