ALTER TABLE Bookings PARTITION BY RANGE (start_date);
EXPLAIN SELECT * FROM Bookings WHERE YEAR(start_date) = 2023;
