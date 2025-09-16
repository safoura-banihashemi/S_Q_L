CREATE TABLE IF NOT EXISTS categories(
    category_id SERIAL NOT NULL PRIMARY KEY, -- Automatically fill by SQL makes this column the unique identifier 
    category_name VARCHAR(255),
    description VARCHAR(255)
);

INSERT INTO categories (category_name, description)
VALUES
    ('Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
    ('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
    ('Confections', 'Desserts, candies, and sweet breads'),
    ('Dairy Products', 'Cheeses'),
    ('Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
    ('Meat/Poultry', 'Prepared meats'),
    ('Produce', 'Dried fruit and bean curd'),
    ('Seafood', 'Seaweed and fish');

SELECT * FROM categories;