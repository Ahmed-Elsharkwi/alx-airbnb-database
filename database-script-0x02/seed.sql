INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
('a1b2c3d4-e5f6-7890-1234-56789abcdef0', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw_1', '1234567890', 'guest'),
('b2c3d4e5-f6a1-8901-2345-6789abcdef01', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw_2', '2345678901', 'host'),
('c3d4e5f6-a1b2-9012-3456-789abcdef012', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw_3', NULL, 'admin');

INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight)
VALUES 
('p1a2b3c4-d5e6-7890-1234-abcdef123456', 'b2c3d4e5-f6a1-8901-2345-6789abcdef01', 'Cozy Cottage', 'A peaceful cottage near the lake.', 'Lakeview', 150.00),
('p2b3c4d5-e6f7-8901-2345-abcdef234567', 'b2c3d4e5-f6a1-8901-2345-6789abcdef01', 'Urban Loft', 'Modern loft in downtown.', 'City Center', 200.00);

INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
('bk1c2d3e4-f5a6-7890-1234-abcdef345678', 'p1a2b3c4-d5e6-7890-1234-abcdef123456', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', '2025-06-01', '2025-06-05', 600.00, 'confirmed'),
('bk2d3e4f5-a6b7-8901-2345-abcdef456789', 'p2b3c4d5-e6f7-8901-2345-abcdef234567', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', '2025-07-10', '2025-07-12', 400.00, 'pending');

INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES 
('pay1e2f3-a4b5-6789-0123-abcdef567890', 'bk1c2d3e4-f5a6-7890-1234-abcdef345678', 600.00, 'credit_card'),
('pay2f3g4-b5c6-7890-1234-abcdef678901', 'bk2d3e4f5-a6b7-8901-2345-abcdef456789', 400.00, 'paypal');

INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES 
('rev1g2h3-c6d7-8901-2345-abcdef789012', 'p1a2b3c4-d5e6-7890-1234-abcdef123456', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', 5, 'Amazing place! Very clean and quiet.'),
('rev2h3i4-d7e8-9012-3456-abcdef890123', 'p2b3c4d5-e6f7-8901-2345-abcdef234567', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', 4, 'Great location but a bit noisy.');

INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES 
('msg1i2j3-e8f9-0123-4567-abcdef901234', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', 'b2c3d4e5-f6a1-8901-2345-6789abcdef01', 'Hi, is the cottage available for next weekend?'),
('msg2j3k4-f9g0-1234-5678-abcdef012345', 'b2c3d4e5-f6a1-8901-2345-6789abcdef01', 'a1b2c3d4-e5f6-7890-1234-56789abcdef0', 'Yes, it is available from Friday to Sunday.');
