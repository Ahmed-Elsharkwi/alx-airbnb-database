SELECT
    Bookings.booking_id,
    Bookings.user_id AS booking_user_id,
    Users.user_id AS user_user_id,
    Users.name AS user_name
FROM Bookings
INNER JOIN Users ON Bookings.user_id = Users.user_id;

SELECT
    Properties.property_id,
    Properties.name AS property_name,
    Reviews.review_id,
    Reviews.comment
FROM Properties
LEFT JOIN Reviews ON Properties.property_id = Reviews.property_id;
ORDER BY Properties.name;

SELECT
    Bookings.booking_id,
    Bookings.user_id AS booking_user_id,
    Users.user_id AS user_user_id,
    Users.name AS user_name
FROM Bookings
FULL OUTER JOIN Users ON Bookings.user_id = Users.user_id
