INSERT INTO users (username, firstName, lastName, age)
VALUES
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);

-- Verify users were added
SELECT * FROM users;

-- Insert 2 more users for practice
INSERT INTO users (username, email, password)
VALUES 
('JohnDoe', 'johndoe@test.com', 'pass123'),
('JaneSmith', 'janesmith@test.com', 'pass456');

SELECT * FROM users
WHERE username IN ('JohnDoe', 'JaneSmith');

-- Update a user
UPDATE users
SET email = 'newalice@test.com', password = 'newpass789'
WHERE username = 'asmith';

SELECT * FROM users
WHERE username = 'asmith';

-- Delete a user
DELETE FROM users
WHERE username = 'cjohnson';

SELECT * FROM users
WHERE username = 'cjohnson';

-- SELECT queries with conditions, sorting, and limits
SELECT * FROM users
WHERE age >= 30;

SELECT * FROM users
ORDER BY username ASC;

SELECT * FROM users
LIMIT 5;

SELECT * FROM users
WHERE username LIKE 'J%';

SELECT * FROM users
ORDER BY age DESC;