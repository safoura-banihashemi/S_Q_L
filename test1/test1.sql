-- SELECT version();

-- If the table exists → it won’t throw an error also it won’t update
CREATE TABLE IF NOT EXISTS customers (
    country VARCHAR(255),
    city VARCHAR(255),
    age INT
);

-- Removes all rows from the table but it does not remove the table itself
TRUNCATE TABLE customers;

-- Add data
INSERT INTO customers(country, city, age)
VALUES
    ('USA', 'Newyork', 24),
    ('China', 'Shanghai', 18),
    ('USA', 'Chicago', 28),
    ('France', 'Paris', 34),
    ('Italy', 'Milan', 35),
    ('Italy', 'Rome', 30);

-- Use to add, delete, or modify columns in an existing table
Alter TABLE customers
    ADD COLUMN IF NOT EXISTS purchased_model VARCHAR(255); 

-- modify the value(s) in existing records in a table
UPDATE customers
SET purchased_model = 'PHI4'
-- If don't use WHERE all rows of purchased_model column update
WHERE country = 'USA';

UPDATE customers
SET purchased_model = 'PHI6'
WHERE country = 'Italy' AND city = 'Milan';

UPDATE customers
SET purchased_model = 'PHI2', age = 16
WHERE country = 'China';

-- To modify the variable types in column 
ALTER TABLE customers
ALTER COLUMN age TYPE VARCHAR(3);

-- Add postcode 
ALTER TABLE customers
ADD COLUMN IF NOT EXISTS postcode INT;

-- Remove column 
ALTER TABLE customers
DROP COLUMN postcode;

-- Delete the records
DELETE FROM customers
-- If do not indicate WHERE all records in the tabels will be deleted and just table remainse 
WHERE city = 'Rome';

-- * : all columns
SELECT * FROM customers;
SELECT city, age FROM customers;

DROP TABLE customers

-- Delete the whole table
--DROP TABLE cars;
--SELECT * FROM cars;

