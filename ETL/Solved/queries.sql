-- Create and use customer_db
CREATE DATABASE customer_db;
USE customer_db;

-- Create tables for raw data to be loaded into
CREATE TABLE customer (
id INT,
first_name TEXT,
last_name TEXT,
PRIMARY KEY(id)
);

CREATE TABLE customer_location (
id INT,
customer_id INT,
address TEXT,
us_state TEXT,
PRIMARY KEY(id)
FOREIGN KEY (customer_id)
        REFERENCES customer(id)
        ON DELETE CASCADE
);


-- Joins tables
SELECT customer.id, customer.first_name, customer.last_name, customer_location.address, customer_location.us_state
FROM customer
JOIN customer_location
ON customer.id = customer_location.customer_id;
