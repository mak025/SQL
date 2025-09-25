USE Laundromat;
-- Insert Tenants
INSERT INTO Tenant (Name)
VALUES ('John Smith'),
       ('Emma Wilson'),
       ('Michael Brown'),
       ('Sarah Davis'),
       ('James Johnson'),
       ('Lisa Anderson'),
       ('Robert Taylor'),
       ('Jennifer White'),
       ('William Miller'),
       ('Mary Martin'),
       ('David Thompson'),
       ('Patricia Garcia');

-- Insert Machines (3 of each type)
INSERT INTO Machine (Type)
VALUES ('Washer'),
       ('Washer'),
       ('Washer'),
       ('Dryer'),
       ('Dryer'),
       ('Dryer'),
       ('Roller'),
       ('Roller'),
       ('Roller');

-- Insert Bookings
INSERT INTO Booking (TenantID, MachineID, StartTime, EndTime, Status)
VALUES (1, 1, '2025-10-02 09:00:00', '2025-10-02 10:00:00', 'Confirmed'),
       (2, 2, '2025-10-03 10:00:00', '2025-10-03 11:00:00', 'Confirmed'),
       (3, 3, '2025-10-03 14:00:00', '2025-10-03 16:00:00', 'Cancelled'),
       (4, 4, '2025-10-06 13:00:00', '2025-10-06 14:00:00', 'Completed'),
       (5, 5, '2025-10-06 14:00:00', '2025-10-06 15:00:00', 'Confirmed'),
       (6, 6, '2025-10-07 15:00:00', '2025-10-07 16:00:00', 'Completed'),
       (7, 7, '2025-10-11 16:00:00', '2025-10-11 17:00:00', 'Confirmed')