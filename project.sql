-- Create the phones table
CREATE TABLE phones (
  ID INTEGER PRIMARY KEY,
  BRAND TEXT,
  MODEL TEXT,
  RELEASE_YEAR INTEGER,
  PRICE REAL
);

-- Insert data into the phones table
INSERT INTO phones VALUES 
(1, 'Apple', 'iPhone 14', 2022, 999.99),
(2, 'Samsung', 'Galaxy S22', 2022, 799.99),
(3, 'Google', 'Pixel 7', 2022, 599.99),
(4, 'OnePlus', '9 Pro', 2021, 969.00),
(5, 'Xiaomi', 'Mi 11', 2021, 749.00);

-- Select all data from the phones table
SELECT * FROM phones;

-- Queries based on specific conditions
SELECT * FROM phones WHERE BRAND = 'Apple';
SELECT * FROM phones WHERE PRICE < 800;
SELECT * FROM phones WHERE RELEASE_YEAR = 2022;

-- Example of using aggregate functions
SELECT 
    COUNT(*) AS TotalPhones, 
    AVG(PRICE) AS AveragePrice,
    MAX(RELEASE_YEAR) AS LatestReleaseYear
FROM phones;
