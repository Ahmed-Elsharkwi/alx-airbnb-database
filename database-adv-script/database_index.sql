CREATE INDEX booking_index on Bookings (booking_id);
CREATE INDEX user_index on Users (user_id);
EXPLAIN SELECT * FROM Bookings;
