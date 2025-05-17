CREATE INDEX booking_index ON Bookings (booking_id);
CREATE INDEX user_index ON Users (user_id);
EXPLAIN ANALYZE SELECT * FROM Bookings;
