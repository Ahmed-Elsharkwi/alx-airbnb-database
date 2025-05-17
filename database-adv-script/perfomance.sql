SELECT *
FROM Bookings
JOIN Users ON Bookings.user_id = Users.user_id
JOIN Properties ON Bookings.property_id = Properties.property_id
JOIN Payments ON Payments.booking_id = Bookings.booking_id;
