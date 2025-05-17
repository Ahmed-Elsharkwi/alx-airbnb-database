CREATE TABLE Bookings_partitioned (
    booking_id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    PRIMARY KEY (booking_id, start_date)  -- Required for partitioning
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pMax   VALUES LESS THAN MAXVALUE
);

EXPLAIN SELECT * FROM Bookings WHERE YEAR(start_date) = 2023;
