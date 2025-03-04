/*
Creating a database and table and adding values to that table.
Insert, update and delete entries.
*/

-- Create Database and Table:
CREATE DATABASE shirts_db;
CREATE TABLE shirts(
	shirt_id INT AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(50),
    color VARCHAR(50),
    shirt_size VARCHAR(5),
    last_worn INT
);

-- Enter values in table:
INSERT INTO shirts (article, color, shirt_size, last_worn)  
VALUES 
	('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15),
	('polo shirt','purple', 'M', 50);
    
-- View table
SELECT * FROM shirts;
SELECT * FROM shirts WHERE color = 'blue';
SELECT article, color, shirt_size FROM shirts WHERE shirt_size = 'M';

-- Adding a new shirt
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt','purple', 'M', 50);

-- Updating values
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;
    
UPDATE shirts
SET 
	color = 'off white'
WHERE 
	article = 'tanktop' 
    AND 
    color = 'white';
    
-- Deleting a row
SELECT * FROM shirts WHERE last_worn = 200;
DELETE FROM shirts WHERE last_worn = 200 AND color = 'green';
