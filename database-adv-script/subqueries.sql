SELECT * 
FROM Properties 
WHERE property_id IN (
    SELECT property_id 
    FROM Reviews 
    WHERE rating > 4
);
SELECT *
FROM Users
WHERE Users.user_id IN (
    SELECT user_id
    FROM Bookings
    GROUP BY user_id
    HAVING COUNT(user_id) = 3
);
