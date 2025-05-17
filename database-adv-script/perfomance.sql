SELECT *
FROM Bookings, Users, Properties, Payments
WHERE Bookings.user_id = Users.user_id
  AND Bookings.property_id = Properties.property_id
  AND Payments.booking_id = Bookings.booking_id;

EXPLAIN ANALYZE SELECT *
FROM Bookings, Users, Properties, Payments
WHERE Bookings.user_id = Users.user_id
  AND Bookings.property_id = Properties.property_id
  AND Payments.booking_id = Bookings.booking_id;
