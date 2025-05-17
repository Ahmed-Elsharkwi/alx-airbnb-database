SELECT COUNT(user_id) 
FROM Bookings 
GROUP BY user_id;
SELECT property_id, ROW_NUMBER() OVER (PARTITION BY property_id), RANK() OVER (PARTITION BY property_id) FROM Bookings;
