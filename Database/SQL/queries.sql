-- SELECT * from restaurants
-- WHERE city = 'New York City' 
-- AND state = 'New York'; 

-- SELECT * FROM reviews
-- WHERE restaurant_id = 

-- ALTER TABLE reviews
-- ALTER COLUMN rating TYPE FLOAT;


SELECT rv.restaurant_id,
FROM reviews AS rv
INNER JOIN restaurants AS rs
ON rv.restaurant_id = rs.restaurant_id
WHERE rs.city = 'New York City'
GROUP BY rv.restaurant_id

-- ALTER TABLE restaurants
-- ADD COLUMN lat FLOAT NOT NULL,
-- ADD COLUMN long FLOAT NOT NULL;

-- SELECT * FROM reviews
