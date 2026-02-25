/* Creating and using DB */
CREATE DATABASE IF NOT EXISTS breweryDB;
USE breweryDB;

/* Ensuring tables imported */
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA = 'brewerydb';

/* Adding dummy data to tables for testing */
INSERT INTO recipe
VALUES (1, 'GabesIPA', 'IPA', 7.5, 20.75);
INSERT INTO batch
VALUES (1, '2026-01-01', 'Fermentation', 20, 7, 100.99, 1);
INSERT INTO product
VALUES (1, 1234567890, 'GabesIPA', 'Bottle', 12.99, 10, 1);
INSERT INTO orders
VALUES (1, '2026-08-02', 'Paid', 267.83);
INSERT INTO customer
VALUES (1, 'Gabriel', 'Gomez', '123 Passaic St', 1234567890, 1);
INSERT INTO ingredients
VALUES (1, 'Barley', 'Malted Grains', 'Johns Agriculture', 10.2, 102);
INSERT INTO suppliers
VALUES (1, 'Johns Agriculture', 0987654321, '7 Farm Ln', 1);

SELECT * FROM suppliers;